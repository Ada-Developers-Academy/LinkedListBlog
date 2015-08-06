class SetNextKeyDefault < ActiveRecord::Migration
  def change
    change_column :comments, :next_id, :integer, default: 0
  end
end
