class CheckoutController < ApplicationController

  def create
    p 111111111111111111111111111111111
    property = Property.find(params[:id])
    p 222222222222222222222222222222222222
    p property
    @session = Stripe::Checkout::Session.create({
      payment_method_types: ['card'],
      line_items: [{
        price_data: {
         currency: 'inr',
         product_data: {
           name: property.name,
         },
         unit_amount: property.price
        },
       quantity: 1
     }],
      mode: 'payment',
      metadata: {product_id: property.id},
      success_url: root_url,
      cancel_url: root_url,
    })
    redirect_to @session.url, allow_other_host: true
    # respond_to do |format|
    #   format.js
    # end
  end
end
