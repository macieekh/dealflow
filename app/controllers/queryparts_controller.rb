class QuerypartsController < ApplicationController
def index
    @queryparts = Part.order(:name).where("name like ?", "%#{params[:term]}%")
    render json: @queryparts.map(&:name)
  end
end
