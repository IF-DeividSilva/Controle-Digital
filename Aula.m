% exemplo 2.5
sys = tf([1 2],[1 0 -0.25], 0.01)

impulse(sys)

% exemplo alising
t=0:1:2*pi
y=sin(t);
plot(t,y)

t=0:0.1:2*pi
y=sin(t);
plot(t,y)

t=0:0.001:2*pi
y=sin(t);
plot(t,y)
