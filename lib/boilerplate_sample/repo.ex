defmodule BoilerplateSample.Repo do
  use Ecto.Repo,
    otp_app: :boilerplate_sample,
    adapter: Ecto.Adapters.Postgres
end
