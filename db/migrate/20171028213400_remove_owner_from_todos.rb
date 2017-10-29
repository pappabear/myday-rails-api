class RemoveOwnerFromTodos < ActiveRecord::Migration[5.0]
  def change
    remove_column :todos, :owner
  end
end
