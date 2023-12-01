class MonumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @monuments = Monument.all
    if params[:query].present?
      sql_subquery = "name ILIKE :query OR location  ILIKE :query"
      @monuments = @monuments.where(sql_subquery, query: "%#{params[:query]}%")
    end
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

  private

  def monument_params
    params.require(:monument).permit(:name,:location,:description,:price,:photo)
  end
end
