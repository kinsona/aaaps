class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :device_id, null: false
      t.boolean :tagged, default: false
      t.json :symptoms

      t.timestamps null: false
    end
  end
end
