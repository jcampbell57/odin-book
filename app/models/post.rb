class Post < ApplicationRecord
  belongs_to :user, dependent: :destroy

  validates :body, presence: true
end
