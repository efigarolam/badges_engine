Rails.application.routes.draw do

  mount BadgesEngine::Engine => "/badges_engine"
end
