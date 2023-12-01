class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new
    @monument = Monument.find(params[:monument_id])
    @offer = Offer.new
    flash[:notice] = "Offer made successfully"
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

  private

  def offer_params
    params.require(:offer).permit(:user, :monument)
  end

  def monument_params
    params.require(:monument).permit(:name,:location,:description,:price,:photo)
  end
end
