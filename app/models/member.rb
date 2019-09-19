class Member < ApplicationRecord

  # メンバーを絞り込みするためのメソッド
  def self.search(member_params_search)
    if member_params_search.nil? || member_params_search.empty?
      Member.all
    else
      # where句の条件を作成
      columns_where = ""
      member_params_search.each do |key, val|
        # 選択された条件のみ追加
        if val != "0" then
          columns_where += "(" + key.to_s + "=" + val.to_s + ") and "
        end
      end
      # 末尾の' and 'を削除
      columns_where = columns_where.chomp(' and ')

      # where句を設定
      Member.where(columns_where)
    end
  end

end
