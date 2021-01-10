class Article < ApplicationRecord
   validates :title, presence: true
   validates :text, presence: true
   validates_length_of :title, maximum: 140
   validates_length_of :text, maximum: 4000
   has_many :comments #из модели сможем обращаться к контроллеру comments т.е связали сущности
   #belongs_to :user # связывание сущностей users и arcticle

   def subject
     title #заголовок статьи
   end

   def last_comment
      comments.last     
   end
end
