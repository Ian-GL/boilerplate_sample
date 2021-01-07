defmodule BoilerplateSampleWeb.PageController do
  use BoilerplateSampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
