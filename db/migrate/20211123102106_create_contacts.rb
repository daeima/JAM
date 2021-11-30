class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.string :email
      t.string :phone
      t.string :contact_url
      t.references :interview, null: false, foreign_key: true
      t.timestamps
    end
  end
end
