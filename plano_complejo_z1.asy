size(200,0,IgnoreAspect);
import graph;
import math;
pair z0=(0,0);
pair z1=(1.5,-1.5*sqrt(3));
real xmax,xmin,ymax,ymin;
if(z1.x > 0) {
xmax=z1.x+.1;
xmin=-.35;
} else {
xmax=.25;
xmin=z1.x-.1;
}
if(z1.y > 0) {
ymax=z1.y+.1;
ymin=-.25;
} else {
ymax=.25;
ymin=z1.y-.5;
}
real theta=atan(z1.y/z1.x);
draw(z0--z1,.25mm+red);
draw(z1--(z1.x,0),.1mm+dashed+gray);
draw(z1--(0,z1.y),.1mm+dashed+gray);
dot(z1,red);
xaxis(Label("$x$",position=EndPoint, align=SE,fontsize(6pt)),xmin=xmin,xmax=xmax,fontsize(8pt),Ticks(scale(.7)*Label(align=W),NoZero,begin=true,beginlabel=true,             end=true,endlabel=true,Step=1,step=.5,Size=1mm, size=.5mm,pTick=black,ptick=gray));
yaxis(Label("$y$",fontsize(6pt),position=EndPoint, align=NW),ymin=ymin,ymax=ymax,fontsize(8pt),      Ticks(scale(.7)*Label(align=E),NoZero,begin=true,beginlabel=true,end=true,endlabel=true,Step=1,step=.5,Size=1mm,size=.5mm,pTick=black,ptick=gray));
//label("$("+(z1.x == 1 ? "" : (string) z1.x)+","+(z1.y == 0 ? "" : (string) z1.y)+")$",z1,S,fontsize(8pt));
label("$\displaystyle\left( \frac{3}{2},-\frac{3}{2}\sqrt{3}\right)$",z1,S,fontsize(8pt));
//path c=arc(0,.25,0,-degrees(theta));
//path c1=arc(0,.25,360,180);
//draw("$\pi$",c,NE,red,Arrow,PenMargin);
//draw("$-\pi$",scale(1.1)*c1,SE,gray,Arrow,PenMargin);
//arrow("$r$",z1/2,SW,red+fontsize(8pt));
write(abs(z1));
write(degrees(theta));