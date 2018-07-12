class OmniauthController < ApplicationController
  # google callback
  def google_oauth2
    if request.env['omniauth.auth'].info.email.match  (/^[A-Za-z0-9._%+-]+@mavenhive.in$/)
      @user = User.create_from_provider_data(request.env['omniauth.auth'])
      if @user.persisted?
        sign_in_and_redirect @user
        if is_navigational_format?
          flash[:notice] = "Signed in successfully."
        end
      else
        flash[:alert] = 'There was a problem signing you in through Google. Please register or try signing in later.'
        redirect_to new_user_registration_url
      end
    else
      flash[:alert] = 'You can log in only using a Mavenhive account.'
      redirect_to new_user_registration_url
    end
  end

  def failure
    flash[:alert] = 'There was a problem signing you in. Please register or try signing in later.'
    redirect_to new_user_registration_url
  end
end
