defmodule Types do
  import IO

  # Atoms
  # An atom consists of two parts: the text and the value. The atom
  # text is whatever you put after the colon character. At runtime,
  # this text is kept in the atom table. The value is the data that goes
  # into the variable, and it’s merely a reference to the atom table
  defmodule Atoms do
    :an_atom
    :another_atom
    :"an atom with spaces"
    var0 = :an_atom
    puts(var0)
  end

  # Tuples
  defmodule Tuples do
    person = {"Bob", 25}
    ageOfBob = elem(person, 1)
    puts(ageOfBob)

    older_person = put_elem(person, 1, 30)

    elem(older_person, 1)
    |> puts()
  end

  # Lists
  # Lists may look like arrays, but they work like singly linked lists.
  defmodule Lists do
    prime_numbers = [2, 3, 5, 7]

    length(prime_numbers) |> puts()

    Enum.at(prime_numbers, 3) |> puts()

    (5 in prime_numbers) |> puts()

    prime_numbers = List.replace_at(prime_numbers, 0, 11)
    Enum.at(prime_numbers, 0) |> puts()
  end
end
