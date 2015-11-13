require "sinatra"

#localhost = 127.0.0.1

get "/" do
	erb :author
end

get "/hi" do
 	@greeting = "Hello World"
	erb :hipage
end	

get "/time" do
	erb :showtime
end	

get "/pizza" do
 	@ingredients = [ "cheese", "pepperoni", "mushrooms" ]
 	erb :pizza
end

get "/users/:username" do
 	@username = params[:username]
 	erb :user_profile
end

get "/hours/ago/:number_of_hours" do
 	@number_of_hours = params[:number_of_hours]
 	erb :show_hours
end

get "/about" do
  "Hi, this is Gonzalo"
end

get "/author" do
	"<h1>My first Sinatra</h1>
	<p>
		<b>Author:</b>
		Ursula K. Le Guin
	</p>"
end	