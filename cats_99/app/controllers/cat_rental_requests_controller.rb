class CatRentalRequestsController < ApplicationController

  def new
    @cats = Cat.all
    @cat_rental = CatRentalRequest.new
    render :new
  end

  def create
    @cat_rental = CatRentalRequest.new(cat_rental_params)
    if @cat_rental.save
      render json: @cat_rental
    else
      render json: @cat_rental.errors.full_messages
    end
  end

  private

  def cat_rental_params
    params.require(:cat_rental).permit(:cat_id, :start_date, :end_date)
  end

end
