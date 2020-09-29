class CreateMeetingnotes < ActiveRecord::Migration[6.0]
  def change
    create_table :meetingnotes do |t|
      t.text :description
    end
  end
end
