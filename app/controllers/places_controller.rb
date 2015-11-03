class PlacesController < ApplicationController
	def index
		@places = Place.all
	end

	def new
		@place = Place.new
	end

	def create 
		@place = Place.new(place_params)

		if @place.save 
			flash[:notice] = "A Place has been created."
			redirect_to places_path
		else
			render :new
		end
	end

	private 

	def place_params
		params.require(:place).permit(:name, :description, :content)
	end

end
 