class FarrowsController < ApplicationController
  before_action :farrow_shuffle, only: [:index]
  
  def index
   @farrow = Library.order("created_at DESC")
  end

  private

  def farrow_shuffle
    library_farrow_shuffle = Library.order("created_at DESC")
    farrow_1 = library_farrow_shuffle.last(rand(27..52))
    farrow_2 = library_farrow_shuffle - farrow_1
    farrow_3_0 = farrow_1.slice(0)
    farrow_2.insert(rand(0..1),farrow_3_0)
 

    
  end
end
