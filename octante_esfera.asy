import graph3;
currentprojection=orthographic(5,4,2);
size(0,150);
surface XY1=surface((0,0,0)--arc((0,0,0),(1,0,0),(0,1,0))--cycle);
surface XZ1=surface((0,0,0)--arc((0,0,0),(1,0,0),(0,0,1))--cycle);
surface ZY1=surface((0,0,0)--arc((0,0,0),(0,1,0),(0,0,1))--cycle);
surface[] s={XY1,XZ1,ZY1};
draw(s,lightgray+opacity(0.8));
real aS=1.25;
draw(Label("$x$",EndPoint),-aS*X--aS*X,Arrow3);
draw(Label("$y$",EndPoint),-aS*Y--aS*Y,Arrow3);
draw(Label("$z$",EndPoint),(0,0,0)--aS*Z,Arrow3);