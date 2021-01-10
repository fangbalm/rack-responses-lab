class Application
    def call(env)
        resp = Rack::Response.new 
        now = Time.now.hour
        if now <= 12 
            resp.write "Good Morning!"
        elsif now > 12 
            resp.write "Good Afternoon!"
        end
        resp.finish
    end
end 