class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :async

  validate :email_is_unique, on: :create_account

  after_create :create_account

  def confirmation_required?
  true
  end

  private

  def email_is_unique
  	return false unless self.errors[:email].empty?
  	# Do not valid email if errors are already present.
  	Account.find_by_email(email).nil?
  	errors.add(:email, " is already used")
  end

  def create_account
  	account = Account.new(:email => email)
  	account.save!
  end
end
