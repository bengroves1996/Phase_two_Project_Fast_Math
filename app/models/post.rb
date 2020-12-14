class Post < ActiveRecord::Base
    belongs_to :comment
end