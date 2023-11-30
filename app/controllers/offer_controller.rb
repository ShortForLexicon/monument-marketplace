class OfferController < ApplicationController
  def index
    @offers = Offer.all
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.monument = @monument
    @offer.user = @user
    redirect_to @monument
    if @offer.save
      redirect_to monument_path(@monument)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def offer_params
    params.require(:offer).permit(:user, :monument)
  end
end
