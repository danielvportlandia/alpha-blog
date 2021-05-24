class ArticlesController < ApplicationController
  # runs the method set_article before any other lines in the specified class methods
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def show
    # byebug
  end

  def index
    @articles = Article.paginate(page: params[:page], per_page: 3)
  end

  def new
    @article = Article.new
  end

  def edit
    # byebug
  end

  def create
    # render plain: params[:article]
    @article = Article.new(article_params)
    @article.user = User.first
    # render plain: @article.inspect
    if @article.save
      flash[:notice] = "Article was created successfully."
      # redirect_to article_path(@article)
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "Article was updated successfully."
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  # any methods below this line are only available within the controller
  private

  def set_article
    @article = Article.find(params[:id])
  end

  def
    article_params
    params.require(:article).permit(:title, :description)
  end

end
