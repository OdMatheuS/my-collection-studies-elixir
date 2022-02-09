defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount - before_discount * (discount / 100.0)
  end

  def monthly_rate(hourly_rate, discount) do
    total_rate = daily_rate(hourly_rate * 22)
    |> apply_discount(discount)
    |> Float.ceil()
    |> trunc()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    total_discount = budget * (discount / 100.0)

    (budget / (daily_rate(hourly_rate) - total_discount))
    |> Float.floor(1)
  end
end
