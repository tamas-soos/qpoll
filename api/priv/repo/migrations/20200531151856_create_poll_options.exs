defmodule Qpoll.Repo.Migrations.CreatePollOptions do
  use Ecto.Migration

  def change do
    create table(:poll_options) do
      add :option, :string
      add :poll_id, references(:polls, on_delete: :nothing)

      timestamps()
    end

    create index(:poll_options, [:poll_id])
  end
end
