class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :username
      t.string :password
      t.string :password_confirmation

      t.timestamps
    end
  end
end
