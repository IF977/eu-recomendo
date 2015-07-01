json.array!(@posts) do |post|
  json.extract! post, :id, :titulo, :conteudo, :categoria, :localidade, :tipo, :data
  json.url post_url(post, format: :json)
end
