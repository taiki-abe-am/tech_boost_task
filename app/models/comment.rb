class Comment < ApplicationRecord

belongs_to :user

belongs_to :topic

validates :description, presence: true
end
