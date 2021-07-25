

# Write your package code here.
module MyPkg0

    export sog0

    function sog0(x...)
        iVector = x[1]                        
        len = length(iVector)
        if len==0
            return nothing
        end
    
        temp = iVector[1]
        if len==1
            return [true]
        end
    
        oVector = Vector{Bool}(undef, len)
        oVector[1] = Bool(1)
        for i in 2:len
            oVector[i] = ifelse(isequal(iVector[i], iVector[i-1]), false, true)
        end
        return oVector
    end
end

