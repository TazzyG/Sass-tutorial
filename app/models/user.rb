class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         #:confirmable, :async

  validate :email_is_unique, on: :create_account
  validate :subdomain_is_unique, on: :create_account
  after_validation :create_tenant
  after_create :create_account

  # https://github.com/plataformatec/devise/issues/3550
  #def send_devise_notification(notification, *args)
  #devise_mailer.send(notification, self, *args).deliver_later
  #end


  def confirmation_required?
    false
  end

  private

   def email_is_unique
    #Do not validate email if errors are already present.
    return false unless self.errors[:email].empty?

    unless Account.find_by_email(email).nil?
        errors.add(:email, " is already used")
    end
  end

  #Subdomains should be unique
  def subdomain_is_unique
    if subdomain.present?
      unless Account.find_by_subdomain(subdomain).nil?
        errors.add(:subdomain, " is already used")
      end
    end

    if Apartment::Elevators::Subdomain.excluded_subdomains.include?(subdomain)
      errors.add(:subdomain, "is not a valid subdomain")
    end 
  end


  def create_account
  	account = Account.new(:email => email, :subdomain => subdomain)
  	account.save!
  end

  def create_tenant
    return false unless self.errors.empty?
    #If its a new record, create the tenant
    #For Edits, do not create
    if self.new_record?
      Apartment::Tenant.create(subdomain)
    end
    #Change schema to the tenant
    Apartment::Tenant.switch!(subdomain)
  end
end
