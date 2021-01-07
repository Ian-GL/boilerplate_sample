defmodule BoilerplateSample.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      BoilerplateSample.Repo,
      # Start the Telemetry supervisor
      BoilerplateSampleWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: BoilerplateSample.PubSub},
      # Start the Endpoint (http/https)
      BoilerplateSampleWeb.Endpoint
      # Start a worker by calling: BoilerplateSample.Worker.start_link(arg)
      # {BoilerplateSample.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: BoilerplateSample.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    BoilerplateSampleWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
