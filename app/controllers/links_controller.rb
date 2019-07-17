class LinksController < ApplicationController

  def index
    @link = Link.last(10).reverse
  end

  def new
    @link = Link.new
  end

  def show
    @link = Link.find_by(short_link: params[:short_link])
  end

  def create
    @link = Link.new(link_params)
    @link.short_link = @link.generate_short_link
    if @link.save
      redirect_to links_path
    else
      redirect_to new_link_path
    end
  end

  def goto
    @link = Link.find_by(short_link: params[:id])
    begin
      redirect_to @link.original_link
    rescue
      redirect_to new_link_path
    end
  end

  private
    def  link_params
      params.require(:link).permit(:original_link)
    end
end
