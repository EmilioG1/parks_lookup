class ParksController < ApplicationController
  
  def index
    @parks = Park.paginate(:page => params[:page], per_page: 5)
    json_response(@parks)
  end
  
  def search
    name = params[:name]
    @parks = Park.search(name)
    json_response(name)
  end

  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @park = Park.create!(park_params)
    json_response(@park, :created)
  end

  def update
    @park = Park.find(params[:id])
    if @park.update!(park_params)
      render status: 200, json: {
        message: "This park has been updated successfully!"
      }
    end
  end

  def destroy
    @park = Park.find(params[:id])
    if @park.destroy
      render status: 200, json: {
        message: "This park has been successfully destroyed!"
      }
    end
  end


  private
    def park_params
      params.permit(:name, :location)
    end
end