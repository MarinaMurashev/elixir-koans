#!/usr/bin/env elixir

ExUnit.start

defmodule About_testing do
    use ExUnit.Case

    test "We shall contemplate truth by testing reality, via asserts." do
        assert __?
    end

    test "When reality lie, we shall refute truth" do
        refute __?
    end

    test "Enlightenment may be more easily achieved with appropriate messages." do
        assert __?, "This should be true -- Please fix this"
    end

    test "To understand reality, we must compare our expectations against reality." do
        expected_value = __?
        actual_value = 1 + 1

        assert expected_value == actual_value
    end

    test "Assertions are smart" do
        is_1_equal_2? = fn -> assert 1 == 2 end
        is_1_greater_than_2? = fn -> assert 1 > 2 end

        message = "Expected 1 to be " <> __? <> " 2"
        assert_raise ExUnit.ExpectationError, message, is_1_equal_2?

        message = "Expected 1 to be " <> __? <> " 2"
        assert_raise ExUnit.ExpectationError, message, is_1_greater_than_2?
    end
end

