class JobApplication < ApplicationRecord
  belongs_to :user
  has_many :interviews, dependent: :destroy

  geocoded_by :address
  after_validation geocode, if: :will_save_change_to_location?

  validates :title, :company_name, presence: true

    include PgSearch::Model
    pg_search_scope :search_by_title_and_company_name,
      against: [ :title, :company_name ],
      using: {
        tsearch: { prefix: true }
      }
end
