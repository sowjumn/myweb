class Project < ActiveRecord::Base
  has_many :details, dependent: :destroy
  accepts_nested_attributes_for :details
end