OibtTv::Application.routes.draw do
  match 'page/:page' => 'content#page'
  match 'view/:id' => 'content#view'
  match 'search/:keyword(/:page)' => 'content#search'
  match 'tag/:tag(/:page)' => 'content#tag'
  root :to => "content#page", :defaults=>{:page=>1}
end
