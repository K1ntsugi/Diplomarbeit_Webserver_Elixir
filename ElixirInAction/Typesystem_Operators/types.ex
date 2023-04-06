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
    # printing list, pay attention to module call Kernel <-> IO
    IO.inspect(prime_numbers, label: "List of prime numbers")
    length(prime_numbers) |> puts()
    Enum.at(prime_numbers, 3) |> puts()
    (5 in prime_numbers) |> puts()
    prime_numbers = List.replace_at(prime_numbers, 0, 13)
    Enum.at(prime_numbers, 0) |> puts()
    # offests all values that may be behind the insertion index
    prime_numbers = List.insert_at(prime_numbers, 3, 11)
    Enum.at(prime_numbers, 4) |> puts()
    # append at the end with negative value
    prime_numbers = List.insert_at(prime_numbers, -1, 17)
    IO.inspect(prime_numbers, label: "List of prime numbers after manip operations")
    prime_numbers = [2, 3, 5, 7]
    IO.inspect(prime_numbers, label: "Original List of prime numbers")
    even_numbers = [1, 4, 6, 8]
    # concat lists
    new_list = even_numbers ++ prime_numbers
    IO.inspect(new_list, label: "Concated List: ")

    # head | tail concepts
    some_list = [1 | [2, 3, 4]]
    hd(some_list) |> puts()
    tl(some_list) |> IO.inspect()

    a_list = [9, :value, true]
    new_list = [:new_element, a_list]

    IO.inspect(new_list, label: "new_list: ")
  end

  defmodule Immutabiliry do
    # manipulating tuples
    a_tuple = {a, b, c}
    new_tuple = put_elem(a_tuple, 1, b2)
  end
end
