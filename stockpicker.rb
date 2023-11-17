arr = [17,3,6,9,15,8,6,1,10]

def stockpicker (arr)
    profit=[]
    combo_arr =[]
    arr.combination(2) do |combo|
        if combo[1] - combo[0] > 0
            combo_arr.push(combo)
            profit.push(combo[1]-combo[0])
        end
    end
    best_price = combo_arr[profit.rindex(profit.max)]
     p result =[arr.rindex(best_price[0]), arr.rindex(best_price[1])]
end
stockpicker(arr)