class MonumentsController < ApplicationController
  def index
    @monuments = Monument.all
  end
end
