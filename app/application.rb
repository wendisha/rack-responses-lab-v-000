class Application
 
  def call(env)
    resp = Rack::Response.new
    time = Time.new 
    time.split(" ")
    new_time = time[1]
    new_time.split(":")
    if new_time[0] < 12
      resp.write "Good Morning!"
    else
      resp.write "You Lose"
    end
 
    resp.finish
  end
 
end