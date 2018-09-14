class Blog < ApplicationRecord
  attr_accessor :name, :string

  validates :name, presence: true
  validates :id, presence: true
  validates :created_at, presence: true
  validates :updated_at, presence: true

  has_many :entries

end
