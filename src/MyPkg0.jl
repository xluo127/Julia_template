
module MyPkg0

    export sog

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

