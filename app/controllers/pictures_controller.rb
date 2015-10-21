class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
    render :index
  end

  def show
   @picture = Picture.find(params[:id])
   render :show
 end

 def new
   @picture = Picture.new
   render :new
 end

 def create
   @picture = Picture.create( picture_params )
   redirect_to :show
 end

 private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def picture_params
  params.require(:picture).permit(:pic)
end

end
