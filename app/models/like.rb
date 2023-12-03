class Like < ApplicationRecord
  belongs_to :user
  # below are optional as a like will belong to either a post or a comment, not both
  belongs_to :post, optional: true
  belongs_to :comment, optional: true
end
