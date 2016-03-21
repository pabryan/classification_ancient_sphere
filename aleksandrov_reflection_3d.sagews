︠b9e70b9b-9aca-4066-906d-98b2daf4ffcas︠
# Parameters
delta = pi/8
epsilon = 0.1
angle_line_r = 0.65
delta_r = 0.5

# Various vectors
origin = vector([0,0,0])
reflection_vector = vector([cos(delta), 0, -sin(delta)])
vertical_vector = vector([0, 0, 1])
projected_reflection_vector = reflection_vector - reflection_vector.dot_product(vertical_vector) * vertical_vector
projected_reflection_vector = projected_reflection_vector/projected_reflection_vector.norm()

from sage.plot.plot3d.base import Graphics3dGroup
p1 = Graphics3dGroup()
p2 = Graphics3dGroup()

# Sphere
S = sphere(opacity = 0.1)
p1 += S
p2 += S

# Relfection vector V
from sage.plot.plot3d.shapes2 import Line
p1 += arrow3d(origin,reflection_vector, width=0.4, color='black')
p1 += line3d([origin,projected_reflection_vector], thickness=0.4, color='black')
p2 += line3d([origin,projected_reflection_vector], thickness=0.4, color='black')

# Reflection plane
u = vector([0, 1, 0])
v = vector([sin(delta), 0, cos(delta)])
p1 += parametric_plot3d(cos(x) * u + sin(x) * v, [x, 0, 2*pi], color='black')
#p2 += parametric_plot3d(cos(x) * u + sin(x) * v, [x, 0, 2*pi], color='black')
p1 += line3d([(0,-1,0), (0,1,0)], thickness=0.4, color='black')
p2 += line3d([(0,-1,0), (0,1,0)], thickness=0.4, color='black')

# Vertical Vector
p1 += line3d([origin, vertical_vector], thickness=0.4, color='black')
p2 += line3d([origin, vertical_vector], thickness=0.4, color='black')

# Equator
p1 += parametric_plot3d([cos(x), sin(x), 0], [x, 0, 2*pi], color='blue')
p2 += parametric_plot3d([cos(x), sin(x), 0], [x, 0, 2*pi], color='blue')

# Reflected equator
u = vector([0,1,0])
v = vector([cos(2*delta), 0, -sin(2*delta)])
p2 += parametric_plot3d(cos(x) * u + sin(x) * v, [x, 0, 2*pi], color='red')

# Hypersurface
h(x) = 1/4 + epsilon*sin(2*x)
w(x) = sqrt(1 - h(x)^2)

u = vector([0, 1, 0])
v = vector([w, 0, h])
hypersurface(x) = [w*cos(x), w*sin(x), h]
p2 += parametric_plot3d(hypersurface(x), [x, 0, 2*pi], thickness=2)

# Reflection Hypersurface
#reflected_hypersurface(x) = hypersurface(x) - 2*reflection_vector.dot_product(hypersurface(x)) * reflection_vector
#p += parametric_plot3d(reflected_hypersurface(x), [x, 0, 2*pi], color='red')
p2 += parametric_plot3d(hypersurface(x) - 2*reflection_vector.dot_product(hypersurface(x)) * reflection_vector, [x, 0, 2*pi], color='red', thickness=2)

p1.show(frame=False)
p2.show(frame=False)

︡e4d40eed-be6a-4be8-a792-f7ee7e8c2042︡︡{"done":false,"file":{"uuid":"a6e2cf15-46fb-4753-ba47-143a83071345","filename":"a6e2cf15-46fb-4753-ba47-143a83071345.sage3d"}}︡{"html":"<div align='center'></div>","done":false}︡{"done":false,"file":{"uuid":"4d29d26b-9812-4770-aa9c-06802967e996","filename":"4d29d26b-9812-4770-aa9c-06802967e996.sage3d"}}︡{"html":"<div align='center'></div>","done":false}︡{"done":true}










