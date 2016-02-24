json.array!(@registers) do |register|
  json.extract! register, :id, :id, :name, :email, :password, :auth_token, :auth_token_expire, :city, :state, :source, :college, :course, :year, :phone, :custom
  json.url register_url(register, format: :json)
end
