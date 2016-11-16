class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :first_name, :string
      t.string :last_name, :string
      t.string :email, :string
      t.string :phone_number, :string
      t.timestamps
    end
  end
end
