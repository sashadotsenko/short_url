class LinksController < ApplicationController
  def create
    @link = Links::Create.new(link_params).call
    render json: { new_link: Link::STANDARD_DOMEN + "links/" + @link.new_link }
  end

  def show
    render json: { old_link: link.old_link }
  end

  private

  def link_params
    params.require(:links).permit(:old_link)
  end

  def link
    @link ||= Link.find_by(new_link: params[:id])
  end
end
