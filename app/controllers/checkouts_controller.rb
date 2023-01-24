class CheckoutsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    p 111_111_111_111_111_111_111_111_111_111_111
    property = Property.find(params[:id])
    p 222_222_222_222_222_222_222_222_222_222_222_222
    p property
    p property.id
    @session = Stripe::Checkout::Session.create({
                                                  metadata: { order_id: property.id, cid: current_user.id },
                                                  payment_method_types: ['card'],
                                                  line_items: [{
                                                    price_data: {
                                                      currency: 'inr',
                                                      product_data: {
                                                        name: property.name
                                                      },
                                                      unit_amount: property.price * 100
                                                    },
                                                    quantity: 1
                                                  }],
                                                  mode: 'payment',
                                                  success_url: root_url,
                                                  cancel_url: 'https://1ca4-2401-4900-1f3f-190d-f18d-5517-ee59-c309.ngrok.io' + '/dashboard/index'
                                                })
    p 7_777_777_777_777
    p @session
    redirect_to @session.url, allow_other_host: true
    # respond_to do |format|
    #   format.js
    # end
  end
end
