class OrdersController < ApplicationController
  
  def create
    @order = Order.new(order_params)
    if @order.save
      format.json { render :nothing, status: 201 }
    else
      render :nothing, status: 400
    end
  end


  private

    def order_params
      params.require(:order).permit(:user_id, :recipient_name, :address_line_1, :address_line_2, :city, :state_abbreviation, :zip_code)
    end
end
