defmodule Backend.Event do
  use Backend.Web, :model

  schema "events" do
    field :time, Ecto.DateTime
    field :blob, :map
    belongs_to :report, Backend.Report
    belongs_to :user, Backend.User

    timestamps
  end

  @required_fields ~w(time blob)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
