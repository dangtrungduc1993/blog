class Admin::SessionController < Devise::SessionController
  layout "admin/unauthenticate"
end
