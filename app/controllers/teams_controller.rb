class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    team = Team.create(team_params)
    redirect_to team_path(team)
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    team = Team.find(params[:id])
    team.update(team_params)
    redirect_to team_path(team)
  end

  def show
    @team = Team.find(params[:id])
  end

  def search
    
  end

  private

    def team_params
      params.require(:team).permit(:team_name, :motivation, :activity_times, :area, :want_gender, :want_experience_period, :want_performance, :searching, :text).merge(user_id: current_user.id)
    end
end
