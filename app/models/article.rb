class Article < ApplicationRecord
   validates :title, presence: true
   validates :text, presence: true
   has_many :comments  #из модели сможем обращаться к свойству comments т.е связали сущности
end
