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
  if a <= 0 || b <= 0 || c <= 0
    raise TriangleError, "no sides may be less than or equal to 0"
  end
  if (a + b <= c) or (a + c <= b) or (b + c <= b)
    raise TriangleError, "two sides must add up to greater than the third side"
  end
  if a == b and b ==c
    return :equilateral
  end
  if (a != b and b == c or a == c) or (a != c and b == c or a == b)
    return :isosceles
  end
  if a!= b or a != c
    return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
