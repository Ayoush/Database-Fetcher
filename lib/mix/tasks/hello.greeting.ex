defmodule Mix.Tasks.Hello.Greeting do
	use Mix.Task
	import Mix.Ecto
	import Ecto.Query
	alias Discuss.{Repo,Topic}
	@shortdoc "Sends a greeting to all"
	def run(_args) do
		Application.ensure_all_started(:discuss)
		query = from(title in Topic, select: title)
		var_data = Enum.map(list, fn %Discuss.Topic{id: id, title: title} -> IO.puts title end)
		IO.inspect("#{Repo.all(query)}")
		Repo.start_link
		Repo.get(Topic, 1)
		IO.inspect("#{Repo.get_by(Topic, title: "ayoush")}")
	end
end