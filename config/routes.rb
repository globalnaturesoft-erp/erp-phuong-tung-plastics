Erp::PhuongTungPlastics::Engine.routes.draw do
  root to: "frontend/home#index"
  get "chuyen-muc.html" => "frontend/product#listing", as: :product_listing
  get "chuyen-muc/chi-tiet.html" => "frontend/product#detail", as: :product_detail
  get "lien-he-chung-toi.html" => "frontend/contact#index", as: :contact
  get "gioi-thieu.html" => "frontend/information#about_us", as: :about_us
end