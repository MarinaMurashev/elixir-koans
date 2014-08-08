#!/usr/bin/env elixir

ExUnit.start

defmodule About_Matches_Variables do
    use ExUnit.Case

    test "It's like affecting a variable" do
        a_variable = 1
        assert a_variable == __?
    end

    test "The real operation is named matching" do
        [a, b] = [1, 2]

        assert a  == __? and b == __?
    end

    test "Matching three variables" do
        [a, b, c] = [1, 2, 3]

        assert a  == __? and b == __? and c == __?
    end

    test "Matching one variable and drop a value" do
        [a, _] = ["Keep me", "Drop me"]

        assert a  == __?
    end

    test "Error matching" do

        assert_raise __?, fn -> [ a , a ] = [ 1 , 2 ] end
    end

    test "Matching an array inner an array" do
        [ a ] = [ ["Hello", "World !"] ]

        assert a  == __?
    end
end
