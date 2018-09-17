class Application
 
  def call(env)
    resp = Rack::Response.new
    time = Time.now 
    time.split(" ")
    new_time = time[1]
    new_time.split(":")
    if new_time[0] < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
 
    resp.finish
  end
 
end