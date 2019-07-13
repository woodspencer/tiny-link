class LinksController < ApplicationController
  'require securerandom'
  def index
    @link = Link.all
  end

  def new
    @link = Link.new
  end

  def show
  end

  def create
    @link = Link.new(link_params)
    @link.short_link = @link.generate_short_link
    if @link.save
      redirect_to @link
    else
      render 'new'
    end
  end

  private
    def  link_params
      params.require(:original_link)
    end
end
