#!/usr/bin/env elixir

ExUnit.start

defmodule About_Numbers_and_booleans do
    use ExUnit.Case

    test "Basics numbers types" do
        an_integer = __?
        a_float = 42.0

        assert is_integer(an_integer)

        assert_? is_float(a_float)

        assert_? is_float(an_integer)

        assert_? is_integer(a_float)
    end

    test "Is an hexadecimal number treated as an integer" do
        assert_? is_integer(0x2A)
    end

    test "Answer to the Ultimate Question of Life, the Universe, and Everything" do
        an_hex = 0x20
        a_dec = 10
        assert an_hex + a_dec == __?
    end

    test "You can use _ as separator in integer" do
        an_integer = 100_000_000
        assert_? is_integer(an_integer)
    end

    test "Value equality operator has an usual expectation" do
        an_integer = 4
        a_float = 4.0
        assert_? an_integer == a_float
    end

    test "Value inequality operator has an usual expectation" do
        an_integer = 4
        a_float = 2.0
        assert_? an_integer != a_float
    end

    test "Strict equality operator take care about types" do
        an_integer = 4
        a_float = 4.0
        assert_? an_integer === a_float
    end

    test "Strict inequality operator take care about types" do
        an_integer = 4
        a_float = 4.0
        assert_? an_integer !== a_float
    end

    test "Comparing two values considering type" do
        an_integer = 4.0
        a_float = 4.0
        assert_? an_integer === a_float
    end

    test "Are booleans integers ?" do
        assert_? is_integer(true)
        assert_? is_boolean(0)
    end

    test "Booleans are atoms" do
        assert_? is_atom(true)
        assert :true == __?
    end

    test "That's true if a_boolean is true ortherwise b_boolean" do
        a_boolean = false
        b_boolean = true
        assert_? a_boolean or b_boolean
    end

    test "Operator || is a relaxed boolean operator, that's true if a_variable or b_variable isn't nil" do
        a_variable = 42
        b_variable = nil
        assert_? a_variable || b_variable
    end

    test "Operator && is a relaxed boolean operator, that's true if a_variable and b_variable isn't nil" do
        a_variable = 42
        b_variable = 5.0
        assert_? a_variable && b_variable
    end

end
