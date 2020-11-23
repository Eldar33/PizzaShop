class CreateOrders < ActiveRecord::Migration[6.0]
  def change
  	create_table :orders do |t|

  		t.string :fio
  		t.string :phone
  		t.string :address
  		t.text :orders_input  		

  		t.timestamps
  	end
  end
end
