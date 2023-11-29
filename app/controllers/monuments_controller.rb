class MonumentsController < ApplicationController
  def index
    @monuments = Monument.all
  end

  def show
    @monument = Monument.find(params[:id])
  end

  def create
    @monument = Monument.new(monument_params)
    @monument.save
    redirect_to @monument
  end

  def new
    @monument = Monument.new
    flash[:notice] = "Monument created successfully"
  end
end
