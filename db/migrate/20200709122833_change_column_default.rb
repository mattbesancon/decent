class ChangeColumnDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:posts, :rating, 0)
  end
end
