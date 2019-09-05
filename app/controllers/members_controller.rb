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
    @member = Member.create(member_params)
    redirect_to member_path(@member)
  end

  # メンバーの情報を表示するアクション
  def show
    @member = Member.find(params[:id])
  end

  # メンバーの情報を編集するアクション
  def edit
    @member = Member.find(params[:id])
  end

  # メンバーの情報を更新するアクション
  def update
    @member = Member.find(params[:id])
    @member.update(member_params)
    redirect_to member_path(@member)
  end


  private

    def member_params
      params.require(:member).permit(:gender, :area, :experience_period, :performance, :motivation, :want_activity_times, :text, :searching).merge(user_id: current_user.id)
    end

end