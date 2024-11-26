class UpdateNodeController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:updtend]
    def updtend
        new_pars = params[:update_node]
        new_id = new_pars[:id_num].to_i
        puts new_pars
        Node.where(id_num: new_id).update(caption: new_pars[:name], content: new_pars[:txt], module: new_pars[:module].to_i, level: new_pars[:placey].to_i)
        render json: Node.all, status: :ok
    end
end

