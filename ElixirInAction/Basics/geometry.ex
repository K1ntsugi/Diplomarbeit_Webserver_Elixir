defmodule Geometry do
  @moduledoc "
  A module name must follow certain rules.
  It starts with an  uppercase letter and is usually written in CamelCase style.
  A module name can consist of alphanumerics, underscores, and
  the dot (.) character.
  "

  @doc "
  Functions must always be part of a module

  Notice that defmodule and def aren’t referred to as
  keywords. That’s because they’re not! Instead, these are
  compilation constructs called macros.

  Recall that in Elixir, everything
  that has a return value is an expression. The return value of a
  function is the return value of its last expression. There’s no
  explicit return in Elixir.
  "

  def rectangle_area(a, b) do
    a * b
  end

  def square_area(a) do
    rectangle_area(a, a)
  end

  defmodule Circle do
    @pi 3.14159

    @spec area(number) :: number
    def area(r), do: r * r * @pi

    @spec circumference(number) :: number
    def circumference(r), do: 2 * r * @pi
  end
end
