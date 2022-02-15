defmodule TaskList do
  @moduledoc """
  Create a task list, read and write a file
  """

  def add(task_name) do
    task = "[ ]" <> task_name <> "\n"
    File.write("task_list.md", task, [:append])
  end

  def show_list, do: File.read("task_list.md")
end
