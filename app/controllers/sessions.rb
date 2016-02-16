

class SessionsController < ActionController::Base
  def lockscreen
    render :layout => "empty"
  end

  def invoice
  end

  def invoice_print
    render :layout => "empty"
  end


  def set_auth(user = nil)
    @current_user = user
  end

  def authorized? user
    @current_user = user
    true#@current_user != nil #TODO uncomment this section
  end

    def authenticate(params = nil)
       user = check(params['username'], params['password']) unless params.nil?
      # set_auth(user)
      # if authorized?(user)
      #   auth_flow true
      # end
      #   auth_flow false
      end

  def auth_flow(authorized = false)
    # if authorized
    #   render 'profile'
    # else
       render 'login'
    # end
  end


  def check(email, password)
      User.where(email: email, password: password)
  end


  def forgot_password
      render :layout => "empty"
  end


  def register
   User.create(name: params['name'], email: params['password'], password: params['password'])

    render 'register'
    render :layout => "empty"
  end

  def to_register
      render :profile if true #TODO helper method to evaluate this

      render 'to_register'
  end

  def internal_server_error
    render :layout => "empty"
  end

  def empty_page
  end

  def not_found_error
    render :layout => "empty"
  end
end
