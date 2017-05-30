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
      
      # product image
      def product_image(product, thumb)
        if product.product_images.present?
          product.main_image.image_url.send(thumb).url
        else
          url_for('/frontend/image/product/no-image.png')
        end
      end
      
    end
  end
end
