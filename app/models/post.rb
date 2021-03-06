class Post < ApplicationRecord
    validates :title, presence: true, length: { maximum: 80 }
    validates :link, url: true, length: { maximum: 1000 }

    belongs_to :user
    has_many :comments                  
end
