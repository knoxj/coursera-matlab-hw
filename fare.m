function [ price ] = fare( m,age )
%FARE Computes fare for a given trip milage and age for city travel
%   Couresa MATLAB course Lesson 5 problem 2
if m <= 1
    dist = 1,
else
    dist = round(m),
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if dist == 1,
    price = 2;
elseif dist > 1 && dist <= 10
    price = 2 + (dist - 1)*0.25,
elseif dist > 10
    price = 4.25 + (dist - 10)*0.1,
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if ((age <= 18) || (age >= 60))
    price = price*0.8,
end
