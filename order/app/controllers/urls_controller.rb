class UrlsController < ApplicationController
  before_action :set_current_user

  def index_url
    @urls = Url.where(user_id: 3, category:params[:category])
    @category = Category.find_by(name: params[:category])
  end

  def index_category
    @categories = Category.where(user_id: 3)
  end

  def new_url
    @categories = Category.where(user_id: 3)
    @name = Category.find_by(name: params[:category])
    @url = Url.where(user_id: 3)
  end

  def create_url
    url = Url.new(url: params[:url],
                  category: params[:category],
                  title: params[:title],
                  user_id: 3)
    if url.save
      flash[:notice] = "作成しました"
      redirect_to('/urls')
    else
      render('/urls/new_url')
    end
  end


  def new_category
    @name = params[:name]
  end

  def create_category
    @category = Category.new(name: params[:name], user_id: 3)
    if @category.save
      flash[:notice] = "カテゴリーを追加しました"
      redirect_to("/urls")
    else
      render('urls/new_category')
    end

  end

  def delete_url
    delete_id = params[:check_id]
    print delete_id
    url = Url.find_by(id: delete_id)
    if url.destroy
      flash[:notice] = "削除しました"
    else
      flash[:notice] = "削除できませんでした"
    end
  end


  def delete_category
    delete_id = params[:delete_id]
    category = Category.find_by(id: delete_id)
    if category.delete
      flash[:notice] = "削除しました"
    else
      flash[:notice] = "削除できませんでした"
    end
  end

  def edit_url
    @url = Url.find_by(user_id: 3, id: params[:id])
    @categories = Category.where(user_id: 3)
  end

  def update
    @url = Url.find_by(id: params[:id])
    @url.title = params[:title]
    @url.url = params[:url]
    @url.category = params[:category]
    if @url.save
      flash[:notice] = "変更しました"
      redirect_to('/urls')
    else
      render('/urls/edit_url')
    end

  end

  def edit
    redirect_to("/urls/edit/#{params[:check_id]}")
  end


end
