class JqclientsController < ApplicationController
	def index 
		@jqclients = Client.order(:name).where("name like ?", "%#{params[:term]}%")
  		render json: @jqclients.map(&:name)
  	end
end
