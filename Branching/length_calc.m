% Steve Jaycox 2013
% Function used in fractal banching program to calculate components of a line

function [ o_length ] = length_calc( i_xs, i_ys )
% Returns the length of a line

X = i_xs.^2;
Y = i_ys.^2;

o_length = sqrt( (X(2)-X(1)) + (Y(2)-Y(1)));

end
