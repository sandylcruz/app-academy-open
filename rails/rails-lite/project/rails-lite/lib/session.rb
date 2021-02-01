require 'json'

class Session
  # find the cookie for this app
  # deserialize the cookie into a hash
  def initialize(req)
    raw_cookie = req.cookies["_rails_lite_app"]
    
    if raw_cookie
      @cookie = JSON.parse(raw_cookie)
    else
      @cookie = {}
    end    
  end

  def [](key)
    @cookie[key]
  end

  def []=(key, val)
    @cookie[key] = val
  end

  # serialize the hash into json and save in a cookie
  # add to the responses cookies
  def store_session(res)
    unserialized_cookie = { path: "/", value: @cookie.to_json }
    res.set_cookie("_rails_lite_app", unserialized_cookie)
  end
end
