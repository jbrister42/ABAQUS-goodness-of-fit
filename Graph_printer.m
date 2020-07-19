data=xlsread('M_Al_on_9mm_Ti_indent_profiles.xlsx', 'Sheet1', 'A2:N6200');
col=1;
hold on
while col<6
    x=(data(:, col));
y=(data(:,col+1));
plot(x,y) 
col=col+2;
end
hold off
xlabel('Displacement/mm', 'fontsize', 30)
ylabel('Depth/mm', 'fontsize', 30)
grid on
title('High yield stress, low work-hardening indent profile', 'fontsize', 30) 
legend({'No residual stress','100MPa tensile','100MPa compressive'}, 'location', 'southeast', 'fontsize', 15)
axis([0, 1.4, -0.11, 0.02])
set(gca,'FontSize',20)


