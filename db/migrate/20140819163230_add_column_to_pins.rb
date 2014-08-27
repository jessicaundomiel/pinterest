class AddColumnToPins < ActiveRecord::Migration
  def change
    add_column :pins, :nsfw, :boolean, :default => false
  end
end
