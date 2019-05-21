class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.references :shop_visit, null: false, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
