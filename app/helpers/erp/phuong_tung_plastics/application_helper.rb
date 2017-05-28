module Erp
  module PhuongTungPlastics
    module ApplicationHelper
      
      # page title helper
      def title(page_title)
        content_for :title, page_title.to_s
      end
      
      # menu link helper
      def category_link(category)
        erp_phuong_tung_plastics.product_listing_path(category_id: category.id, title: url_friendly(category.name))
      end
      
      # product link helper
      def product_link(product)
        erp_phuong_tung_plastics.product_detail_path(product_id: product.id, title: url_friendly(product.name))
      end
      
    end
  end
end
