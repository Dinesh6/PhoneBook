class Phbook < ActiveRecord::Base
belongs_to :user
validates :phone,length: { is: 10 }
validates :phone,:note,:name,:User_id,presence: true
end
