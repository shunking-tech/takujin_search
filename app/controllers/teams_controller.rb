class TeamsController < ApplicationController

  def index

  end

  def new
    @team = Team.new
  end

  def create
    team = Team.create(team_params)
    redirect_to team_path(team)
  end

  private

    def team_params
      params.require(:team).permit(:team_name, :motivation, :activity_times, :area, :want_gender, :want_experience_period, :want_performance, :searching).merge(user_id: current_user.id)
    end
end
