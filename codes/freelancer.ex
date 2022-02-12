defmodule FreelancerRates do
  @daily_rate 8.0

  @monthly_billable_days 22

  def daily_rate(hourly_rate), do: hourly_rate * @daily_rate

  def apply_discount(before_discount, discount) do
    before_discount - before_discount * (discount / 100.0)
  end

  def monthly_rate(hourly_rate, discount) do
    daily_rate(hourly_rate * @monthly_billable_days)
    |> apply_discount(discount)
    |> ceil()
  end

  defp daily_discounted_rate(hourly_rate, discount \\ 0) do
    hourly_rate
    |> daily_rate()
    |> apply_discount(discount)
  end

  def days_in_budget(budget, hourly_rate, discount) do
    (budget / daily_discounted_rate(hourly_rate, discount))
    |> Float.floor(1)
  end
end
