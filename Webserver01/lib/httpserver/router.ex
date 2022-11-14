defmodule Httpserver.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/" do
    # Get request to localhost 8000
    send_resp(conn, 200, "Welcome to my API")
  end

  get "/:name" do
    send_resp(conn, 200, "Welcome #{name}")
  end

  # default case for requests that match nothing above
  match _ do
    send_resp(conn, 404, "There is no route for zour call")
  end
end
