
require 'rails_helper'


describe Article do 

  describe "Validations" do 
    it { should validate_presence_of :title } # В модели Contact должна присутвовать валидация поля :email
    it { should validate_presence_of :text } 
 end

  describe "associations" do
    it { should have_many :comments } 
    #т.е сущность articles должна емть много комментариев 
    #т.е в модели Article должен быть прописан код has_many :comments
  end

  # проверка метода subject 
  describe "#subject" do
    it "returns the articles title" do
      #создаем обьет хитрым способом
      article = create(:article, title: 'Lorem Ipsum')

      # assert, проверка
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end
 
   describe "#last_comment" do
    it "returns last_comment" do
      #создаем статью но в этот раз с комментариями
      article = create(:article_with_comments)
 
      #проверка на то что в статьте последний комментарий будет comment body 3
      expect(article.last_comment.body).to eq "comment body 3"
    end
  end

   describe "max length field" do
    it {should validate_length_of(:title).is_at_most(140) }
    it {should validate_length_of(:text).is_at_most(4000) }
    #проверка на максимальную длину поля
  end
  

end