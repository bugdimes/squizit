class LinksController < ApplicationController
    def create
        link = Link.find_or_create_by!(link_params)
        render json: link
    end

    private

    def link_params
        params.require(:link).permit(:url)
    end
end
