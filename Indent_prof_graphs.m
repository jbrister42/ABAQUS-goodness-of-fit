data=xlsread('Stresses_rawnostress.xlsx', 'FE extended', 'A2:AF1602');
exp=xlsread('Stresses_rawnostress.xlsx', 'experimental', 'A2:F1602');
col=1;
hold on
while col<13
x=(data(:, col));
y=(data(:,col+1));
plot(x,y) 
col=col+2;
end
u=(exp(:,1));
v=(exp(:,2));
plot(u,v)
hold off
xlabel('Displacement/mm', 'fontsize', 30)
ylabel('Depth/mm', 'fontsize', 30)
grid on
title('High yield stress, low work-hardening indent profile', 'fontsize', 30) 
legend({'No residual stress','100MPa tensile','100MPa compressive'}, 'location', 'southeast', 'fontsize', 15)
axis([0, 0.4, -0.06, 0.02])
set(gca,'FontSize',20)


