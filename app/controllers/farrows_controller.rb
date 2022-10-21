class FarrowsController < ApplicationController
  before_action :farrow_shuffle, only: [:index]
  
  def index
   @farrow = Library.order("created_at DESC")
  end

  private

  def farrow_shuffle
    farrow = Library.order("created_at DESC")

    farrow_1 = farrow.last(rand(25..29))
    farrow_2 = farrow - farrow_1
    
  end
end
