class User < ActiveRecord::Base
  validates :email, presence: true
  validates :date_of_birth, presence: true
  validate :is_18_years_old
end

def is_18_years_old
  date = 18.years.ago
  if date_of_birth > date
    errors.add(:date_of_birth, "You need to be 18 years old to register")
  end
end