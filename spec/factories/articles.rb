FactoryGirl.define do 
  factory :article do
    title "Article title" #просто текст чтобы сущность не была пустой
    text "Article text"   #просто текст чтобы сущность не была пустой

    #создаем фабрику с названием article_with_comments
    # для создания статьи с несколькими комментарими
    factory :article_with_comments do
      #после создания article
      after :create do |article, evaluator|
        #создаем список из 3-х комментов
        create_list :comment, 3, article: article
      end
    end
  end
end