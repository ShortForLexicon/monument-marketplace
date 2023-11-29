class MonumentsController < ApplicationController
  def index
    @monuments = Monument.all
  end

  def show
    @monument = Monument.find(params[:id])
  end

  def create
    @monument = Monument.new(monument_params)
  end

  def new
    @monument = Monument.new
  end
end
