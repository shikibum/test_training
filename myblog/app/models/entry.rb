class Entry < ApplicationRecord
  attr_accessor :blog_id, :body, :created_at, :posted_on, :title, :updated_at

  belongs_to :blog
end
