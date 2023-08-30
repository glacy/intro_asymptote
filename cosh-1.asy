import graph;
size(0,4inches,IgnoreAspect);
real lne(real x) {static real lne=log(exp(1)); return log(x)/lne;};
real f1(real x) {return acosh(x);}
real f2(real x) {return -acosh(x);}
real f3(real x) {return lne((1+sqrt(1-x^2))/(x));}
real f4(real x) {return -1*lne((1+sqrt(1-x^2))/(x));}
xaxis(Label("$x$",position=EndPoint, align=NE),LeftTicks,Arrow);
yaxis(Label("$y$",position=EndPoint, align=NE),RightTicks,Arrow);
label("$\cosh^{-1} (x)$",(1.75,.5),fontsize(12pt)+red);
label("$\mbox{sech}^{-1} (x)$",(1,2),fontsize(12pt)+blue);
draw(graph(f1,1,4),red);
draw(graph(f2,1,4),red);
draw(graph(f3,0.1,1),blue);
draw(graph(f4,0.1,1),blue);