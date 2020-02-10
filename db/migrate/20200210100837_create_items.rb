class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :sales_status
      t.string :image_id
      t.integer :non_taxed_price
      t.timestamps
    end
  end
end
