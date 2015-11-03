class PlacesController < ApplicationController
	before_action :set_place, only: [:show, :edit, :update, :destroy]

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

	def show; end 

	def edit; end

	def update 
		if @place.update(place_params)
			flash[:notice] = "Place has been updated."
			redirect_to place_path 
		else
			render :edit
		end
	end

	private 

	def set_place 
		@place = Place.find(params[:id])
	end

	def place_params
		params.require(:place).permit(:name, :description, :content)
	end

end
 