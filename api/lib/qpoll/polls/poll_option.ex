defmodule Qpoll.Polls.PollOption do
  use Ecto.Schema
  import Ecto.Changeset
  alias Qpoll.Polls.Poll

  schema "poll_options" do
    field(:option, :string)
    timestamps()

    belongs_to(:poll, Poll)
  end

  @doc false
  def changeset(poll_option, attrs) do
    poll_option
    |> cast(attrs, [:option])
    |> validate_required([:option])
  end
end