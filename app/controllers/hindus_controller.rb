class HindusController < ApplicationController

    before_action :library_hindu_shuffle, only: [:index, :show]
  
   def index
    @librarys = Library.order("created_at DESC")
   end
  
  
  
               private

              def library_hindu_shuffle
  
                library_hindu_shuffle = Library.order("created_at DESC")
                hindo_1 = library_hindu_shuffle.last(rand(27..52))
                hindo_2 = hindo_1 + (library_hindu_shuffle - hindo_1)
                hindo_3 = hindo_2.last(rand(27..52))
                hindo_4 = hindo_3 + (library_hindu_shuffle - hindo_3)
                hindo_5 = hindo_4.last(rand(27..53))
                hindo_6 = hindo_5 + (library_hindu_shuffle - hindo_5)
                hindo_7 = hindo_6.last(rand(27..53))
                hindo_8 = hindo_7 + (library_hindu_shuffle - hindo_7)
                hindo_9 = hindo_8.last(rand(27..53))
                hindo_10 = hindo_9 + (library_hindu_shuffle - hindo_9)
                hindo_11 = hindo_10.last(rand(27..53))
                hindo_12 = hindo_11 + (library_hindu_shuffle - hindo_11)
                hindo_13 = hindo_12.last(rand(27..53))
                hindo_14 = hindo_13 + (library_hindu_shuffle - hindo_13)
                hindo_15 = hindo_14.last(rand(27..53))
                hindo_16 = hindo_15 + (library_hindu_shuffle - hindo_15)
                hindo_17 = hindo_16.last(rand(27..53))
                hindo_18 = hindo_17 + (library_hindu_shuffle - hindo_17)
                hindo_19 = hindo_18.last(rand(27..53))
                hindo_20 = hindo_19 + (library_hindu_shuffle - hindo_19)
                @hindo_shuffle = hindo_20
              end
  
end
