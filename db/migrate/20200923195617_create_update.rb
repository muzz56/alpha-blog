class CreateUpdate < ActiveRecord::Migration[6.0]
  def change
    create_table :updates do |t|
      add_column :articles, :created_at, :datetime
      add_column :articles, :updated_at, :datetime
    end
  end
  def change
    create_table :updates do |t|
      add_column :meetingnotes, :created_at, :datetime
      add_column :meetingnotes, :updated_at, :datetime
    end
  end
end
