defmodule PostmarkTest do
  use ExUnit.Case
  doctest Postmark

  test "greets the world" do
    assert Postmark.hello() == :world
  end
end
