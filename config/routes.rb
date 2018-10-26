Hotloader::Engine.routes.draw do
  get 'hotloaders', to: "refesh#refresh"
end
