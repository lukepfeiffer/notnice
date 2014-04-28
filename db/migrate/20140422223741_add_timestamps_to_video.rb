class AddTimestampsToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :created_at, :date_time
    add_column :videos, :updated_at, :date_time
  end
end
