class ReferencesController < ApplicationController
    before_action :set_reference, only: [:show, :edit, :update, :destroy]
    
    def index
        @references = Reference.all
    end
    
    def show
    end
    
    def new
        @reference = Reference.new
    end
    
    def create
        @reference = Reference.new(reference_params)
        if @reference.save
            redirect_to @reference
        else 
            render 'new'
        end 
    end
    
    def edit
    end
    
    def update
        if @reference.update(reference_params)
            redirect_to @reference
        else 
            render 'edit'
        end 
    end
    
    def destroy
        @reference.books.delete_all
    end
    
    private
    def set_reference
        @reference = Reference.find(params[:id])
    end
    
    def reference_params
        params.require(:reference).permit(:year)
    end
end
