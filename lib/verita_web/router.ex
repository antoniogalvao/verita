defmodule VeritaWeb.Router do
  use VeritaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", VeritaWeb do
    pipe_through :api
  end
end
