class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  #def after_sign_in_path_for(resource)
  #case resource
  #when Admin
    #admin_path
  #when Public
    #public_path
  #end
  #end

  #def after_sign_out_path_for(resource)
  #case resource
  #when Admin
    #new_admin_session_path
  #when Public
    #public_path
  #end
  #end


end
