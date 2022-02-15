defmodule TaskList do
  def add(task_name) do
    task = "[ ]" <> task_name <> "\n"
    File.write("task_list.md",task,[:append])
  end
end
