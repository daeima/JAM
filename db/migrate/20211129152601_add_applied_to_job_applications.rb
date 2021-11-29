class AddAppliedToJobApplications < ActiveRecord::Migration[6.0]
  def change
    add_column :job_applications, :applied, :datetime
  end
end
