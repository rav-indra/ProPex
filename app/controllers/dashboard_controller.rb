class DashboardController < ApplicationController
  def index
    @users = User.all
    @props = Property.where(user_id: current_user.id)
    @sold_property =  @props.where(is_paid: true)
    @buyer_props = Property.where(buyer_id: current_user.id)
  end 
  # sold properties page
  def sold
    @props = Property.where(user_id: current_user.id)
    @sold_property =  @props.where(is_paid: true)
  end
end
