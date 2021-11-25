class JobApplication < ApplicationRecord
  belongs_to :user
  has_many :interviews, dependent: :destroy
  scope :filter_by_status, -> (status) { where(status: status) }
  validates :title, :company_name, presence: true

    include PgSearch::Model
    pg_search_scope :search_by_title_and_company_name,
      against: [ :title, :company_name ],
      using: {
        tsearch: { prefix: true }
      }
end
