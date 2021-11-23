class CreateJobApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :job_applications do |t|
      t.string :title
      t.string :level
      t.string :company_name
      t.text :description
      t.string :status
      t.string :link
      t.text :notes
      t.string :address
      t.float :latitude
      t.float :longitude
      t.boolean :remote, default: false
      t.boolean :archive, default: false
      t.boolean :favorite, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
