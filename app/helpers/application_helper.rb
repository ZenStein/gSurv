module ApplicationHelper
    def is_active_controller(controller_name)
        params[:controller] == controller_name ? "active" : nil
    end

    def is_active_action(action_name)
        params[:action] == action_name ? "active" : nil
    end

  def is_logged_in?(user)
    @current_user == user
  end
  def is_logged_out?(user)
    @current_user == user
  end
  def log_out()
    sessions = nil
    @current_user = nil
  end
  def log_in(user)
    @current_user = user
  end
  def authicate(email, password)
    user = User.where(email: email, password: password)
    log_in(user) unless user
  end

  def authrize(user)
    is_logged_in?(user)
  end
end
