function v_sorted = bubble_sort( v )
% Sort function based on bubble sort algorithm
% Based on pseudo-code avliable on wikipedia: 
% https://en.wikipedia.org/wiki/Bubble_sort#Pseudocode_implementation
% Do not use this method in practice. It is far too slow. 
    n = length(v);
    while true
        swapped = false;
        for i = 2 : n
            %/* if this pair is out of order */
            if v(i-1) > v(i)
                %/* swap them and remember something changed */
                tmp = v(i);
                v(i) = v(i-1);
                v(i-1) = tmp;
                swapped = true;
            end
        end
        if ~swapped
            break
        end
    end
    v_sorted = v;
end 
