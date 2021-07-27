
module MyPkg0

    export sog
    """
        sog(x...)

    The function sog() takes a `Vector` of any type `x...` as its input with any possible length, and will return a `Bool Vector` with the same length as input. Values
     `true` or `false` in the output depends on whether one element in the `Vector` is the start of a group or not. The sog() will return 
     'nothing' if the length of input is 0. As any type can be applied in the input, be careful! To check whether two elements `a` and `b` are treated
    as the same, please call `isequal(a, b)` to see the result. 

    Examples:

        sog([1,2,2,2,1,3,3,1,1]) = [true, true, false, false, true, true, false, true, false]
        sog() = nothing
        sog(["a", "a", "a", 'a']) = [true, false, false, true]

    """
    function sog(x=[])                       
        len = length(x)

        if len == 0
            return nothing
        end

        iVector = x[1] 
        temp = iVector[1]
        if len == 1
            return [true]
        end
    
        oVector = Vector{Bool}(undef, len)
        oVector[1] = Bool(1)
        for i in 2:len
            oVector[i] = !isequal(iVector[i], iVector[i-1])
        end
        return oVector
    end
end

