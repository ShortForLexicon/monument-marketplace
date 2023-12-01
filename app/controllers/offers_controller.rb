class OffersController < ApplicationController
  before_action :set_monument, except: [:index]

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new

  end

  def create
    @offer = Offer.new(status: "pending")
    @offer.monument = @monument
    @offer.user = current_user
    if @offer.save
      flash[:notice] = "Offer made successfully"
      redirect_to offers_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  def delete
    @offer.delete
  end

  private

  def set_monument
   @monument = Monument.find(params[:monument_id])
  end

  def offer_params
    params.require(:offer).permit(:user, :monument)
  end

  def monument_params
    params.require(:monument).permit(:name,:location,:description,:price,:photo)
  end
end
