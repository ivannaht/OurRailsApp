class CreateAdditionalInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :additional_infos do |t|
      t.string :address
      t.string :phone
      t.string :email
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
