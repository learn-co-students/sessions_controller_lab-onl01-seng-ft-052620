module SessionsHelper

    def name
     if session[:name]
        session[:name]
     else
        link_to "Please login", login_path
     end
    end

    def logout_form
        if session[:name]
            render 'logout_form'
        end
    end
end
