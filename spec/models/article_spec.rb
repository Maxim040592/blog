require "spec_helper"
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
 
end