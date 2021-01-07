class Comment < ApplicationRecord
  belongs_to :article # связывание сущностей coment и arcticle
end
