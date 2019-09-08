class User < ApplicationRecord
  validates :nick_name, {presence: true, uniqueness: true}
  
end
