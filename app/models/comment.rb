class Comment  < ActiveRecord::Base
    has_many :threads
    belongs_to :user
end