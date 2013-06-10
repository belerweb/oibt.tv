OibtTv::Application.routes.draw do
  match 'page/:page' => 'content#page'
  match 'view/:id' => 'content#view'
  match 'search/:keyword' => 'content#search'
  root :to => "content#page", :defaults=>{:page=>1}
end
