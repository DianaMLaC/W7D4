class GoalsController < ApplicationController
    before_action :require_loged_in, only: [:create, :destroy]
    def destroy
        @goal = current_user.goals.find_by(id: params[:id])
        if @goal && @goal.destroy
            redirect_to users_url
        end
    end

    def create
        @goal = Goal.new(goal_params)
        @goal.user_id = params[:user_id]
        flash[:errors] = @goal.errors.full_messages unless @goal.save
        redirect_to users_url(params[:user_id])
    end

    private
    def goal_params
        params.require(:goal).permit(:title, :details, :status)
    end


end
