class RepliesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_reply, only: [:edit, :update, :show, :destroy]
    before_action :set_incident, only: [:create, :edit, :show, :update, :destroy]


    def create
        @reply = @incident.replies.create(params[:reply].permit(:reply, :incident_id))
        @reply.user_id = current_user.id

        respond_to do |format|
            if @reply.save
                format.html { redirect_to incident_path(@incident) }
                format.js
            else
                format.html { redirect_to incident_path(@incident), notice: 'Reply did not save. Please try again' }
                format.js
            end
        end
    end

    def new
        # we do the logic at the top before_action
    end

    def destroy
        @reply = @incident.replies.find(params[:id])
        @reply.destroy
        redirect_to incident_path(@incident)
    end

    def edit
        @incident = Incident.find(params[:incident_id])
        @reply = @incident.replies.find(params[:id])
    end

    def update
        @reply = @incident.replies.find(params[:id])
        respond_to do |format|
            if @reply.update(reply_params)
                format.html { redirect_to incident_path(@incident), notice: 'Reply was successfuly updated' }
            else
                format.html { render :edit }
                format.json { render json: @reply.errors, status: :unprocessable_entiry }
            end
        end
    end


    private

    def set_incident
        @incident = Incident.find(params[:incident_id])
    end

    def set_reply
        @reply = Reply.find(params[:id])
    end

    def reply_params
        params.require(:reply).permit(:reply)
    end

end