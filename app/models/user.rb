class User < ActiveRecord::Base
    has_secure_password
    has_many :comments
    
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :email, presence: true
end

### add belongs to user
### has_many