Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['NGnzk6p0a3GoFwsstwUqFe0EK'], ENV["j7Vzwz85ailklahUW74ZeUPK8zNkqpjH8A2kgY6JTdobExFfqy"]
end