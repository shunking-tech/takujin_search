class Team < ApplicationRecord
  def self.search(team_params_search)
    if team_params_search.nil? || team_params_search.empty?
      Team.all
    else
      Team.where("(motivation = ?) or (activity_times = ?) or (area = ?) or (want_gender = ?) or (want_experience_period = ?) or (want_performance = ?) or (searching = ?)", team_params_search[:motivation], team_params_search[:activity_times], team_params_search[:area], team_params_search[:want_gender], team_params_search[:want_experience_period], team_params_search[:want_performance], team_params_search[:searching])
    end
  end
end
