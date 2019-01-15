class HomeController < ApplicationController
  def set_cookies
    cookies.permanent.signed[:user_name] = "bowen"
    cookies.permanent.signed[:customer_id] = "123456"
  end

  def show_cookies
    @user_name = cookies.signed[:user_name]
    @customer_id = cookies.signed[:customer_id]
  end

  def delete_cookies
    cookies.delete(:user_name)
    cookies.delete :customer_id
  end
end
