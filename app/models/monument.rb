class Monument < ApplicationRecord

  def show
    @monument = Monument.find(params[:id])
  end
end
