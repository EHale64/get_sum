class GetSum
    def get_sum(a, b)
        if b.positive?
            (a..b).sum
        elsif b.negative?
            (b..a).sum 
        end
    end
end