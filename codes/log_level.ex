defmodule LogLevel do
  @type legacy? :: boolean
  @type level :: integer

  def to_label(level, legacy?) do
    cond do
      level == 0 and not legacy? -> :trace
      level == 5 and not legacy? -> :fatal
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    return_label = to_label(level, legacy?)

    cond do
      return_label == :unknown and legacy? -> :dev1
      return_label == :error or return_label == :fatal -> :ops
      return_label == :unknown -> :dev2
      true -> nil
    end
  end
end
