class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :show_nsfw, :boolean, :default => true
  end
end
