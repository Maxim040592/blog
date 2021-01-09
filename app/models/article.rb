class Article < ApplicationRecord
   validates :title, presence: true
   validates :text, presence: true
   has_many :comments #из модели сможем обращаться к контроллеру comments т.е связали сущности
   #belongs_to :user # связывание сущностей users и arcticle

   def subject
     title #заголовок статьи
   end
end
