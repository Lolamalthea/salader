class CreateSalads < ActiveRecord::Migration
  def change
    create_table :salads do |t|
      t.string :name
      t.integer :nb_guests

      t.timestamps null: false
    end
  end
end
