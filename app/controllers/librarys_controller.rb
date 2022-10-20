class LibrarysController < ApplicationController
  before_action :library_set, except: [:index, :new, :create, :show]
    before_action :library_rundam_all, only: [:index, :show]
    before_action :library_rundam_five, only: [:index, :show]
  
   def index
    @librarys = Library.order("created_at DESC")
   end
  
   def new
    @library = Library.new
   end
  
   def create
     @library = Library.new(library_params)
     if @library.save
       redirect_to root_path
     else
       render :new
     end
   end
   
   def show
    @librarys = Library.order("created_at DESC")
   end
  
   def edit
   end
  
   def update
    if @library.update(library_params)
      redirect_to library_path
    else
      render :edit
    end
   end
  
   def destroy
    if
     @library.destroy
     redirect_to root_path
    else
     redirect_to root_path
    end
   end
  
   private
                            def library_params
                              params.require(:library).permit(:card_type, :image, :numbers)
                            end
                
                            def library_set
                              @library = Library.find(params[:id])
                            end
                
                            def library_rundam_all
                              @library_rundam_all = Library.order("RAND()")
                            end
                
                            def library_rundam_five
                              @library_rundam_five = Library.order("RAND()").limit(5)
                            end
end
