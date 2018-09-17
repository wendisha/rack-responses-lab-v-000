require 'pry'
class Application
 
  def call(env)
    resp = Rack::Response.new
    time = Time.now.strftime("%I:%M:%S %Z %z") 
    time.split(":")
    
    if time[0].to_i < 12
      resp.write "Good Morning!"
      binding.pry
    else
      resp.write "Good Afternoon!"
    end
 
    resp.finish
  end
 
end