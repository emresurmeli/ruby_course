json.cheeses @cheeses do |cheese|
  json.name   cheese.name
  json.price  cheese.price
  json.source cheese.source

  json.reviews cheese.reviews do |review|
    json.name        review.name
    json.rating      review.rating
    json.description review.description
  end
end
