[t,y] = ode45(@E1_FPractica2_z2,[0 10],[0 0 0 0]); %Cuatro condiciones iniciales dado el espacio estado

figure(1)
plot(t,y(:,1));
hold on
plot(t,y(:,2));
hold off
grid on
title("Posición")
xlabel("Tiempo")
ylabel("Metros")
legend('X1','X2')

figure(2)
plot(t,y(:,3));
hold on
plot(t,y(:,4));
hold off
grid on
title("Velocidad")
xlabel("Tiempo")
ylabel("Metros/Segundo")
legend('X1','X2')

figure(3)
plot(t, [0; diff(y(:,3))]);
hold on
plot(t, [0; diff(y(:,4))]);
hold off
grid on
title("Aceleración")
xlabel("Tiempo")
ylabel("Metros/Segundo^2")
legend('X1','X2')