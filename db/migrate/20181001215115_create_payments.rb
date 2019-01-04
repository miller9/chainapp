class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :cash_pay
	  t.integer :chain_id #Adding Foreign Key --> table chains
      t.timestamps
    end
  end
end
