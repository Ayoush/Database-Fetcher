defmodule Mix.Tasks.HelloWorld do
	use Mix.Task
	@shortdoc "Testing"
	do run(args) do
		IO.puts("Hello World")
	end 
end