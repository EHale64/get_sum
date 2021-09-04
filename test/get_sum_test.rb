require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/get_sum'
require 'json'
require 'pry'

class GetSumTest < MiniTest::Test
    def setup
        @sum = GetSum.new
    end

    def test_list
        assert_equal 1, @sum.get_sum(0,1)
        assert_equal -1, @sum.get_sum(0,-1)
        assert_equal 3, @sum.get_sum(1,2)
        assert_equal 14, @sum.get_sum(5,-1)
        assert_equal 1, @sum.get_sum(1,1)
        assert_equal 0, @sum.get_sum(1,-1)
        assert_equal 0, @sum.get_sum(5,-5)
        assert_equal -45, @sum.get_sum(-10,-5)
    end
end