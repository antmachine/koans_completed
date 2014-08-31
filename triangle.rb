# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
	if ( a <= 0 || b <= 0 || c <= 0 )
		raise TriangleError, "Impossible triangle. One of the sides is less than 0 units."
	end

	s = (a + b + c) / 2.0
	ok = (s - a) * (s - b) * (s - c) # This must be positive for a triangle to be drawn
	
	if (ok <= 0)
		raise TriangleError, "Impossible triangle. The sides can't connect."
	end

	if ( a == b )
		if ( a == c )
			return :equilateral
		end
		return :isosceles
	else
		if ( a == c || b == c )
			return :isosceles
		end
	end
	return :scalene
end


# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError

end
