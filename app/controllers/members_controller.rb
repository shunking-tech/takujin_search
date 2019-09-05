class MembersController < ApplicationController

  # メンバ一覧を表示するアクション
  def index

  end

  # メンバーを新規作成するフォームを表示するアクション
  def new
    @member = Member.new
  end

  # メンバーを新規登録するアクション
  def create
    member = Member.create(member_params)
  end


  private

    def member_params
      params.require(:member).permit(:gender, :area, :experience_period, :performance, :motivation, :want_activity_times, :text, :searching).merge(user_id: current_user.id)
    end

end
