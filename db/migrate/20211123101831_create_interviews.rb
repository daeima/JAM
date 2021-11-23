class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.text :notes
      t.datetime :start_date
      t.datetime :end_time
      t.string :link
      t.string :interview_type
      t.references :job_application, null: false, foreign_key: true

      t.timestamps
    end
  end
end
