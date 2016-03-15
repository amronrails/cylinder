json.array!(@reviews) do |review|
  json.extract! review, :id, :name, :email, :rating, :comment, :votes
  json.url review_url(review, format: :json)
end
