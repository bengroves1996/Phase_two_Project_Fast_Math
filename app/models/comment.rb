class Comment  < ActiveRecord::Base
    has_many :posts
end