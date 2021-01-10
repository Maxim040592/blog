class Comment < ApplicationRecord
  validates_length_of :body, minimum: 5
  belongs_to :article # связывание сущностей coment и arcticle
end
