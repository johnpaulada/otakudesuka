defmodule OtakudesukaWeb.Router do
  use OtakudesukaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", OtakudesukaWeb do
    pipe_through :api
  end
end
