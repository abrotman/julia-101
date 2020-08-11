#!/usr/bin/julia
using Random

#Random size for the square
size = abs(rand(Int) % 5000)
println("Size of data: $size")
points = Int(floor(size^2/2))
global within = 0
square = zeros(Int8,size*2,size*2)
for i = 1:points
	randX = Int(floor((rand(Int) % (size*2))/2))
	randY = Int(floor((rand(Int) % (size*2))/2))
	r_test = sqrt((abs(randX)^2) + (abs(randY)^2))
	if (r_test <= size)
		global within += 1
		square[randX+size,randY+size] = 1
	end
end
calc_pi = 4*(within/points)
println(calc_pi)
