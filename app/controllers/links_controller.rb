class LinksController < ApplicationController

    def show
        link = Link.find_by_slug(params[:slug]) or not_found
        link.opened!
        redirect_to link.url
    end

    def create
        link = Link.find_or_create_by!(link_params)
        render json: link
    end

    private

    def link_params
        params.require(:link).permit(:url)
    end
end
