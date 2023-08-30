import graph;
import math;
size(300,200,IgnoreAspect);

real xmin=0,xmax=20;
real ymin=0,ymax=10;

typedef real realfcn(real);
realfcn F(real v,real a) {
  return new real(real x) {return (-4.905*x^2)/(v*cos(a))^2+x*tan(a);};
}

real H(real v, real a) {return v^2*(sin(a))^2/(2*9.81);}
real R(real v, real a) {return v^2*sin(2*a)/(9.81);}

typedef real realfcn(real);
real v=10;
for(int i=45; i < 90; i=i+15){
  draw(graph(F(v,i*pi/180),0,R(v,i*pi/180)),Pen(i),
       "$\theta="+(i == 1 ? "" : (string) i)+"^{\circ}$");
  label("$\theta="+(i == 1 ? "" : (string) i)+"^{\circ}$",(R(v,i*pi/180)/2+.5,H(v,i*pi/180)),N,Pen(i));
	  }

xaxis("$x$",xmax=R(v,45*pi/180),LeftTicks);
yaxis("$y$",ymin=0,LeftRight,RightTicks(trailingzero));
yequals(Label("$h$",(8,1.2),up),1.2,extend=false,red);
//attach(legend(2),(point(S).x,truepoint(S).y),10S,UnFill);