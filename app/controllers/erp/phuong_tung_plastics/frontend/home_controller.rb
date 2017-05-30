module Erp
  module PhuongTungPlastics
    module Frontend
      class HomeController < Erp::Frontend::FrontendController
        def index
          @sliders = Erp::Banners::Banner.get_home_sliders
        end
      end
    end
  end
end