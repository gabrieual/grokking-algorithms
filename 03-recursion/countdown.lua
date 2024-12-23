-- recursive countdown
function Countdown(i)
    print(i)

    if i == 1 then
        return nil 
    end
    
    Countdown(i-1)
end