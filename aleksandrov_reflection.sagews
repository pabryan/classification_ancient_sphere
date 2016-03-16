︠b9e70b9b-9aca-4066-906d-98b2daf4ffca︠
delta = pi/8
epsilon = 1/4
angle_line_r = 0.65
delta_r = 0.5

p = plot([], ticks=[[], []])

p += circle((0,0), 1)

# Relfection vector V
p += arrow((0,0), (cos(-delta), sin(-delta)), width=1)
p += text("V", (1/2, -1/2))
p += text("$\delta$", (delta_r * cos(-delta/2), delta_r * sin(-delta/2)))
p += polar_plot(angle_line_r, (x, -delta, 0))

p += arrow((0,0), (-cos(-delta), -sin(-delta)), linestyle="--", width=1)
p += text("-V", (-7/8, 1/3))
p += text("$\delta$", (delta_r * cos(pi-delta/2), delta_r * sin(pi-delta/2)))
p += polar_plot(angle_line_r, (x, pi-delta, pi))

# Reflection plane P
p += line([(-(1+epsilon) * cos(pi/2-delta), -(1+epsilon) * sin(pi/2-delta)), ((1+epsilon) * cos(pi/2-delta), (1+epsilon) * sin(pi/2-delta))])
p += text("P", (3/4, 1))

# Equator
p += line([(0,0), (1,0)])
p += text("$E_V^+$", (5/8, 0.1))
p += text("$E_V^-$", (-5/8, -0.1))

# Reflected equator
p += line([(0,0), (cos(pi-2*delta), sin(pi-2*delta))], color = "red")
p += text("$R_V(E_V^+)$", (cos(pi-2*delta) - epsilon/3, sin(pi-2*delta) + epsilon/3))
p += polar_plot(angle_line_r, (x, pi-2*delta, pi-delta))
p += text("$\delta$", (delta_r * cos(pi-(3/2)*delta), delta_r * sin(pi-(3/2)*delta)))

# Great circles
for phi_index in [1/5, 3/5, 1, 7/4]:
    phi = (pi/6) * phi_index
    p += parametric_plot((sin(x) * sin(phi), cos(x)), (x, 0, pi), color="black", linestyle=":")
    p += parametric_plot((sin(x) * sin(-phi), cos(x)), (x, 0, pi), color="black", linestyle=":")

#p += point((sin(pi/30), 0), size=50)
#p += text(r"$x_1(t)$", (sin(pi/30) + epsilon/2, epsilon/3))

# M and reflection
m = plot([])
h = 1/4
w = sqrt(1 - h^2)
theta = arcsin(h)
m += line([(-w,h), (w,h)])
#m += plot(z + (epsilon/4) * sin(((4*pi)/w)*x), (x,-w,w))
m += text(r"$M_t^-$", (-1-epsilon, epsilon))
m += text(r"$M_t^+$", (1+epsilon, epsilon))
m += line([(h*tan(delta), h), (cos(pi-2*delta-theta), sin(pi-2*delta-theta))], color = "red")
m += text(r"$R_V(M_t^+)$", (cos(pi-2*delta-theta) - epsilon/4, sin(pi-2*delta-theta) + epsilon/2), color = "red")
p += m

#p.save("reflection.pdf")
p.show()
︡041f9031-69e8-4dc7-bc54-90fe56069bfb︡︡{"once":false,"done":false,"file":{"show":true,"uuid":"d5e500c4-3776-4469-ae55-276b84ddbde0","filename":"/projects/5febb04b-b14b-43bc-8aac-f717fca7ba11/.sage/temp/compute1-us/4885/tmp_73HOkD.svg"}}︡{"html":"<div align='center'></div>","done":false}︡{"done":true}









