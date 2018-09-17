class Application
 
  def call(env)
    resp = Rack::Response.new
    time = Time.new 
    time.split(" ")
    new_time = time[1]
    new_time.split(":")
    if num_1==num_2 && num_2==num_3
      resp.write "Good Morning!"
    else
      resp.write "You Lose"
    end
 
    resp.finish
  end
 
end