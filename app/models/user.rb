class User < ActiveRecord::Base
has_many :phbooks
validates :name,presence: true
end
