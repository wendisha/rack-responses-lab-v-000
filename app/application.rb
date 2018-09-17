class Application
 
  def call(env)
    resp = Rack::Response.new
    time = Time.now.strftime("%I:%M:%S %Z %z") 
    time.split(":").to_i
    if time[0] < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
 
    resp.finish
  end
 
end