module ApplicationHelper
  def profile(role)
    if role == "admin"
      'admin.png'
    elsif role == "seller"
      'seller.png'
    else
      'buyer.png'
    end
  end
end
