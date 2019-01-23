
class Article < ApplicationRecord
  validates :article, presence: true, length:{minimum: 5, maximum: 50}
  
end
