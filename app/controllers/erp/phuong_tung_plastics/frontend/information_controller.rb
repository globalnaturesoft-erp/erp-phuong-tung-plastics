module Erp
  module PhuongTungPlastics
    module Frontend
      class InformationController < Erp::Frontend::FrontendController
        def about_us
          @category_about = Erp::MiniStores::ArticleCategory.find_by_alias(Erp::MiniStores::ArticleCategory::ALIAS_ABOUT)
          if @category_about.present?
            @about_us = @category_about.articles.present? ? @category_about.articles.last : Erp::MiniStores::Article.new
          end
        end
      end
    end
  end
end