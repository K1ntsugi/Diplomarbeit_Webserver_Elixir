defmodule Geometry do
  @moduledoc Modules """
  A module name must follow certain rules.
  It starts with an  uppercase letter and is usually written in CamelCase style.
  A module name can consist of alphanumerics, underscores, and
  the dot (.) character.
  """

  @doc Functions """
  Functions must always be part of a module
  """

  @doc defmodule and def """
  Notice that defmodule and def aren’t referred to as
  keywords. That’s because they’re not! Instead, these are
  compilation constructs called macros.
  """

  @doc return """
  Recall that in Elixir, everything
  that has a return value is an expression. The return value of a
  function is the return value of its last expression. There’s no
  explicit return in Elixir.
  """

  def rectangle_area(a, b) do
    a * b
  end
end
