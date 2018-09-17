class Application
 
  def call(env)
    resp = Rack::Response.new
    if num_1==num_2 && num_2==num_3
      resp.write "Good Morning!"
    else
      resp.write "You Lose"
    end
 
    resp.finish
  end
 
end