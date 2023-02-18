function dx = E1_FPractica2_z1(t,x)

%Definicion de los parametros
m1 = 290;
b1 = 1000;
m2 = 59;
k1 = 16182;
f = 0;
k2 = 19000;
z = 0.05*sin(0.5*pi*t);

%Salida de la ecuacion (desde x1,x2, hasta la segunda derivada de x1,x2)
dx = zeros(4,1);

%%Definicion de la dinamica del sistema representada en espacio de estados
dx(1) = x(3);
dx(2) = x(4);
dx(3) = (1/m1)*(-b1*x(3)+b1*x(4)-k1*x(1)+k1*x(2)+f);
dx(4) = (1/m2)*(b1*x(3)-b1*x(4)+k1*x(1)-(k1+k2)*x(2)-f+k2*z);


end