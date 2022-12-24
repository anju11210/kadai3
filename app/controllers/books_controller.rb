class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(post_image_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to post_images_path
  end

  def index
  end

  def show
  end

  def edit
  end

  private

  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
end
