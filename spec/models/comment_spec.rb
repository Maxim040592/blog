
require 'rails_helper'

describe Comment do 

  it { should belong_to :article } 
   #т.е сущность comment должна емть одну статью 
   #т.е в модели Comment должен быть прописан код belong_to :article

    describe "min length field" do
    it {should validate_length_of(:body).is_at_least(5) }
    #проверка на минимальную длину поля
  end
 
end