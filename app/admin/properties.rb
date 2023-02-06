ActiveAdmin.register Property do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :description, :address, :city, :price, :user_id, :is_paid, :buyer_id
  #
  # or
  #
  # permit_params do
    permitted = [:name, :description, :address, :city, :price, :user_id, :is_paid, :buyer_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  # member_action :publish, method: :put do
  #   property = Property.find(params[:id])
  #   property.update(published_at: Time.zone.now)
  #   redirect_to admin_property_path(property)
  # end
  
end
