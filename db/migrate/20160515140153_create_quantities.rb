class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.string :description
      t.references :ingredient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
