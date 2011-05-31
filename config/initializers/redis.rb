if Rails.env.production?
  redis_uri = URI.parse(ENV["REDISTOGO_URL"])
  REDIS = Redis.new(:host => redis_uri.host, :port => redis_uri.port, :password => redis_uri.password)
else
  REDIS = Redis.new(:host => 'localhost', :port => 6379)
end
