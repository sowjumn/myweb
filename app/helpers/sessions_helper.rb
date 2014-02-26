module SessionsHelper
  def sign_in(admin)
    cookies.permanent[:remember_token] = admin.remember_token
    self.current_admin = admin
  end

  def current_admin=(admin)
    @current_admin = admin
  end

  def current_admin
    @current_admin ||= Admin.where(cookies[:remember_token]).first
  end

  def signed_in?
    !current_admin.nil?
  end

  def sign_out
    self.current_admin = nil
    cookies.delete(:remember_token)
  end
end