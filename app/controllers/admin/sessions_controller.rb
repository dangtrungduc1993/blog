class Admin::SessionsController < Devise::SessionsController
  layout "admin/unauthenticate"

  def new
    super
  end
  def destroy
    flash[:success] = "Log out suscess" if sign_out current_admin_admin
    redirect_to new_admin_admin_session_path
  end
end