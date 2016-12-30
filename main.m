%  04/07/16

%% 
clc
figure(1)
syms f(t) t
f(t) = ((3*t+3).*heaviside(t+2) - 6*t.*heaviside(t)).*heaviside(-t+2);
grid on;
ezplot(f, [-4,4])
hold off

x = -10:10;
[C,~] = polarctfs(f,4,10);
figure(3)
hold on
plotyy(x,abs(C),x,angle(C),'stem','stem')
hold off
%% Second Signal
clc
syms t x(t)
x(t) = heaviside(t+.5).*heaviside(-t+.5);
figure
grid on
hold on
ezplot(x, [-2.5,2.5])

q = -15:15;
[C,w] = polarctfs(x,5,15);
figure(3)
hold on
plotyy(q,abs(C),q,angle(C),'stem','stem')
legend('abs(C)','angle(C)')
hold off
