class ApplicationController < ActionController::Base

    helper_method :login, :logout, :loged_in?, :current_user, :require_loged_in
    def current_user
        @current_user = User.find_by(session_token: session[:session_token])
    end

    def login(user)
        @current_user = user
        session[:session_token] = user.reset_session_token
    end

    def logout
        current_user.reset_session_token
        session[:session_token] = nil
    end

    def loged_in?
        !!current_user
    end

    def require_loged_in
        redirect_to new_session_url unless loged_in?
    end


end
