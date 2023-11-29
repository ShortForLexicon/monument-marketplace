class OfferController < ApplicationController
  def index
    @offers = Offer.all
  end
end
