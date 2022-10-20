class HindusController < ApplicationController

    before_action :library_hindu_shuffle, only: [:index, :show]
  
   def index
    @librarys = Library.order("created_at DESC")
   end
  
  
  
               private

              def library_hindu_shuffle
  
                library_hindu_shuffle = Library.order("created_at DESC")
                hindu_1 = library_hindu_shuffle.last(rand(27..52))
                hindu_2 = hindu_1 + (library_hindu_shuffle - hindu_1)
                hindu_3 = hindu_2.last(rand(27..52))
                hindu_4 = hindu_3 + (library_hindu_shuffle - hindu_3)
                hindu_5 = hindu_4.last(rand(27..53))
                hindu_6 = hindu_5 + (library_hindu_shuffle - hindu_5)
                hindu_7 = hindu_6.last(rand(27..53))
                hindu_8 = hindu_7 + (library_hindu_shuffle - hindu_7)
                hindu_9 = hindu_8.last(rand(27..53))
                hindu_10 = hindu_9 + (library_hindu_shuffle - hindu_9)
                hindu_11 = hindu_10.last(rand(27..53))
                hindu_12 = hindu_11 + (library_hindu_shuffle - hindu_11)
                hindu_13 = hindu_12.last(rand(27..53))
                hindu_14 = hindu_13 + (library_hindu_shuffle - hindu_13)
                hindu_15 = hindu_14.last(rand(27..53))
                hindu_16 = hindu_15 + (library_hindu_shuffle - hindu_15)
                hindu_17 = hindu_16.last(rand(27..53))
                hindu_18 = hindu_17 + (library_hindu_shuffle - hindu_17)
                hindu_19 = hindu_18.last(rand(27..53))
                hindu_20 = hindu_19 + (library_hindu_shuffle - hindu_19)
                @hindu_shuffle = hindu_20
              end
  
end
