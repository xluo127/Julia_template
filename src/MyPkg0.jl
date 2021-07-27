
module MyPkg0

    export sog
    """
        sog(x...)

    The function sog() takes a `Vector` type `x...` as its input with any possible length, and will return a `Bool Vector` with the same length as input. Values
     `true` or `false` in the output depends on whether one element in the `Vector` is the start of a group.  
    """
    function sog(x...)
        iVector = x[1]                        
        len = length(iVector)
        if len == 0
            return nothing
        end
    
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

