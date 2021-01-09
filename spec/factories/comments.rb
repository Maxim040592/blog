FactoryGirl.define do 
  factory :comment do
    author "Mike" #просто текст чтобы сущность не была пустой
    sequence(:body) {|n| "comment body #{n}"}  #создаст "comment body n n - раз. данное число"
    #указано в строчке create_list :comment, 3, article: article файла article.rb т.е 3
  end
end