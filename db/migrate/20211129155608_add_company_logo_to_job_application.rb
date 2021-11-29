class AddCompanyLogoToJobApplication < ActiveRecord::Migration[6.0]
  def change
    add_column :job_applications, :comp_logo, :string
  end
end
