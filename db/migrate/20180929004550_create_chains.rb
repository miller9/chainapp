class CreateChains < ActiveRecord::Migration[5.2]
  def change
    create_table :chains do |t|
      t.string :name
      t.string :position
      t.integer :value
      t.string :owe
      t.string :paid
      t.date :delivery_date

      t.timestamps
    end
  end
end
