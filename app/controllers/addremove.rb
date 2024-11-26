# app/controllers/addremove.rb
class Addremove < ApplicationController
  def addremv
    received_nodes = params[:nodestoadd]
    received_arches = params[:archestoadd]
    received_nodes_to_remove = params[:nodestormv]
    received_arches_to_remove = params[:archestormv]
    nested_data = JSON.parse(received_nodes)
    nested_data.each do |id, dta|
      puts "#{id} #{dta}"
    end
    received_arches_data = JSON.parse(received_arches)
    received_arches_data.each do |id, dta|
    end
    data = {}
    # Render a JSON response
    render json: data, status: :ok
  end
end
