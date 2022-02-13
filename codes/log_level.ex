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
    cond do
      (level < 1 or level >= 5) and legacy? == true -> :dev1
      level == 4 or level == 5 -> :ops
      level > 5 -> :dev2
      level <= 1 -> nil
      true -> nil
    end
  end
end
