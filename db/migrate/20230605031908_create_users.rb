class CreateUsers < ActiveRecord::Migration[5.2]
	def change
		create_table :users do |t|
			t.string :fullname
			t.text :email
			t.string :password_digest
			t.text :address
			t.boolean :admin
			t.string :contact_number

			t.timestamps
		end
	end
end
