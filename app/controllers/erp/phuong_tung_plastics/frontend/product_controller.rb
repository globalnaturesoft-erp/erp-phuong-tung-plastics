module Erp
  module PhuongTungPlastics
    module Frontend
      class ProductController < Erp::Frontend::FrontendController
        def listing
          @menu = Erp::MiniStores::Category.find(params[:category_id])
          @products = Erp::MiniStores::Product.get_products_for_category(params).paginate(:page => params[:page], :per_page => 12)
          @meta_keywords = @menu.meta_keywords
          @meta_desciption = @menu.meta_description
        end
        def detail
          @product = Erp::MiniStores::Product.find(params[:product_id])
          @meta_keywords = @product.meta_keywords.to_s
          @meta_description = @product.meta_description
        end
      end
    end
  end
end