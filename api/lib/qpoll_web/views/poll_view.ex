defmodule QpollWeb.PollView do
  use QpollWeb, :view
  alias QpollWeb.PollView

  def render("index.json", %{polls: polls}) do
    %{data: render_many(polls, PollView, "poll.json")}
  end

  def render("show.json", %{poll: poll}) do
    %{data: render_one(poll, PollView, "poll_with_options.json")}
  end

  def render("poll.json", %{poll: poll}) do
    %{
      id: poll.id,
      question: poll.question
    }
  end

  def render("poll_with_options.json", %{poll: poll}) do
    %{
      id: poll.id,
      question: poll.question,
      options: render_many(poll.poll_options, QpollWeb.PollOptionView, "poll_option.json")
    }
  end
end
