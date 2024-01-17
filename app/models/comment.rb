class Comment < ApplicationRecord
    belongs_to :article
    validates :body, :commenter, presence: true
end
