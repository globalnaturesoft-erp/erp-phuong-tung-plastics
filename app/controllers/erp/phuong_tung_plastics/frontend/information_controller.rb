module Erp
  module PhuongTungPlastics
    module Frontend
      class InformationController < Erp::Frontend::FrontendController
        def about_us
          @about_us = Erp::MiniStores::ArticleCategory.find_by_alias(Erp::MiniStores::ArticleCategory::ALIAS_ABOUT).articles.last
        end
      end
    end
  end
end