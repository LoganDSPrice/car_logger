class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.float :cost
      t.string :description
      t.text :notes
      t.references :part, null: false, foreign_key: true
      t.references :shop_visit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
