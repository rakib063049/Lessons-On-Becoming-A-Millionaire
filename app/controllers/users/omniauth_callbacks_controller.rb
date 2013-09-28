class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def passthru
    render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
  end

  def facebook
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)

    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Facebook"
      redirect_to root_path, :event => :authentication, :current_user => @user
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end




end
