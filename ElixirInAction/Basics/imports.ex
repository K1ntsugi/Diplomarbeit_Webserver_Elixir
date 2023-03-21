defmodule MyModule do
  import IO
  # module kernel is imported by default
  def my_function do
    puts("Calling imported function.")
  end
end
