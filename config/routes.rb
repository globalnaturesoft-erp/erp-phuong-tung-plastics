Erp::PhuongTungPlastics::Engine.routes.draw do
  root to: "frontend/home#index"
  get "chuyen-muc(/:category_id)(/:title).html" => "frontend/product#listing", as: :product_listing
  get "san-pham/:product_id(/:title).html" => "frontend/product#detail", as: :product_detail
  get "lien-he-chung-toi.html" => "frontend/contact#index", as: :contact
  post "lien-he-chung-toi.html" => "frontend/contact#index"
  get "gioi-thieu.html" => "frontend/information#about_us", as: :about_us
end