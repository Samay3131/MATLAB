function cost = waferstore (part_numbers,quantities,cost)

if length(part_numbers) == length(quantities) && length(cost) == length(quantities)
    parts =struct('partno',part_numbers,'quantity' , quantities ,'costper', cost);
   result = struct('partno',parts.partno,'total',parts.quantity .* parts.costper);
%     result = [parts.partno parts.quantity .* parts.costper];
    a = transpose(result.partno);
    b = transpose(result.total);
    c = [a b];
    disp(c)

else
    fprintf("Length of the vectors are not equal")
end
% part_numbers = input("Enter the vector containing the part numbers");
% quantities = input("Enter the vector contaning the quantities");
% cost = input("Enter the vector  containing the costs of the parts in the inventory");
% waferstore (part_numbers,quantities,cost)
