class TeamsController < ApplicationController

  def index
    @teams = Team.all
    @teams = @teams.search(team_params_search)
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

    # 全件表示用のストロングパラメーター
    def team_params
      params.permit(:team_name, :motivation, :activity_times, :area, :want_gender, :want_experience_period, :want_performance, :searching, :text).merge(user_id: current_user.id)
    end

    # 検索結果表示用のストロングパラメーター
    def team_params_search
      params.permit(:motivation, :activity_times, :area, :want_gender, :want_experience_period, :want_performance, :searching, :text)
    end
end
