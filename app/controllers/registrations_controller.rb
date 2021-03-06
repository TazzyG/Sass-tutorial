
class RegistrationsController < Devise::RegistrationsController


  #Overriding Devise's registration controller to check for subdomain 
  #Only allow registration if subdomain is absent or is www
  def new 
    if request.subdomain.blank? || request.subdomain == "www"
      super 
    else
        flash[:notice] = "Access Restricted"
        redirect_to :root
    end

  end  

  protected

  def after_sign_up_path_for(resource)
    #'/an/example/path' # Or :prefix_to_your_route
    # ********if I have an index page, I should redirect to root_path *******
    new_user_session_url(subdomain: resource.subdomain)

  end

    def after_inactive_sign_up_path_for(resource)
        new_user_session_url(subdomain: resource.subdomain)
   end

end