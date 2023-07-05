class CreateHeropowers < ActiveRecord::Migration[7.0]
  def change
    create_table :heropowers do |t|
      t.references :hero, null: false, foreign_key: true
      t.references :power, null: false, foreign_key: true
      t.string :strength

      t.timestamps
    end
  end
end
