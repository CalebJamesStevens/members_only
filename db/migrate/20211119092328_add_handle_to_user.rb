class AddHandleToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :handle, :string
  end
end
