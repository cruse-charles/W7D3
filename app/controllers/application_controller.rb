class ApplicationController < ActionController::Base
    helper_method :logged_in?, :current_user

    def current_user
        user = User.find_by(session: session[:session_token])
        #ask if this should be @
    end

    def require_logged_in
        redirect_to new_session_url unless current_user
    end

    def require_logged_out
        redirect_to user_url if current_user
    end

    def login(user)
        session[:session_token] = current_user.reset_session_token!
        #ask if this should be @
    end

    def logged_in
        !!current_user
    end

    def logged_out
        current_user.reset_session_token
        session[:session_token] = nil
        @current_user = nil
    end

end
