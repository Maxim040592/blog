class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    # т.е внутри статьи создаем комментарий который передается через параметры
    @article.comments.create(comment_params) 
    
    redirect_to article_path(@article)
  end


  private
  #разрешение на передачу параметров
  def comment_params
    params.require(:comment).permit(:author, :body)
  end

end
