# app/controllers/addremove.rb
class Addremove < ApplicationController
  def addremv
    $received_nodes = params[:nodestoadd]
    $received_arches = params[:archestoadd]
    $received_nodes = params[:nodestormv]
    $received_arches = params[:archestormv]
    # Your logic for handling the request
    data = { message: "Hello, this is your API response!" }

    # Render a JSON response
    render json: data, status: :ok
  end
end
