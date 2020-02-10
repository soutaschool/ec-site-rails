class Admins::ItemsController < ApplicationController
    def index
    end

    def new
        @item = Item.new(item_params)
    end

    private
    def item_params
        params.require(:item).permit(:name, :description, :sales_status, :image, :non_taxed_price)
    end
end