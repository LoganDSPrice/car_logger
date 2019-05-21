class CreateShopVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_visits do |t|
      t.date :date
      t.date :starts_on
      t.date :ends_on
      t.integer :miles
      t.references :car, null: false, foreign_key: true
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
