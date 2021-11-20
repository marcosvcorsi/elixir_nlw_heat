defmodule ElixirNlwHeat.Message do
  use Ecto.Schema

  import Ecto.Changeset

  @required_params [:text, :username, :email]

  @derive {Jason.Encoder, only: [:id] ++ @required_params}

  schema "messages" do
    field :text, :string
    field :username, :string
    field :email, :string

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> validate_length(:text, min: 1, max: 140)
    |> validate_format(:email, ~r/@/)
  end
end