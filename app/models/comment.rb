class Comment  < ActiveRecord::Base
    has_many :threads
end