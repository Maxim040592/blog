class ArticlesController < ApplicationController
    
  def index
    @articles = Article.all
  end

  def show
    # в случае сохранения данных в базу происходит переход
    # на данный action по технологии REST 
    # и сразу получаем значения которые отображаются в файле
    # show.html.erb
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article # перенаправление по нужному пути в REST
    else
      render action: 'new'
    end
  end

  def edit
     @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article # перенаправление по нужному пути в REST
    else
      render action: 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    
    redirect_to @article #возвращает на страницу index
  end

  private
  #разрешение на передачу параметров
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
