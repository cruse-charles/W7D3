class User < ApplicationRecord

    validates :username, presence: true, uniqueness: true 
    validates :password_digest, presence: true 
    validates :password_digest, length: {minimum:6}, allow_nil: true


    # def self.find_by_credentials

    # end

end
