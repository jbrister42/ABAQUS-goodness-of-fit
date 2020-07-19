data=xlsread('Stresses_rawnostress.xlsx', 'FE extended', 'A2:AF1602');
exp=xlsread('Stresses_rawnostress.xlsx', 'experimental', 'A2:F1602');

Fcol=2;
excol=2;
N = 1601;
b=(exp(:,excol));
av=(mean(b))^2;
C=cell(1,16);
k=1;
l=1;
while Fcol <34
    tot=0;
    while l <1602
    m=(exp(l,excol));
    n=(data(l,Fcol));
    d=(m-n)^2;
    tot=tot+d;
    l=l+1;
    end
    sred=tot/(N*av);
    C{k}=sred;
    Fcol=Fcol+2;
    k=k+1;
    l=1;
end
C
csvwrite('0MPa_raw.csv', C)
