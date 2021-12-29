
function [Sa, Sb, Sc] = MPC(I_ref1, I_ref2, I_meas1, I_meas2)
Ts=25e-6;
R=765^2/50000;
L=10e-3;
e=100;
Vdc=500;
v0=0;
v1=2/3*Vdc;
v2=1/3*Vdc+1j*sqrt(3)/3*Vdc;
v3=-1/3*Vdc+1j*sqrt(3)/3*Vdc;
v4=-2/3*Vdc;
v5=-1/3*Vdc-1j*sqrt(3)/3*Vdc;
v6=1/3*Vdc-1j*sqrt(3)/3*Vdc;
v7=0;
v=[v0 v1 v2 v3 v4 v5 v6 v7]; %stabdards vector
states=[0 0 0;1 0 0;1 1 0;0 1 0;0 1 1;0 0 1;1 0 1;1 1 1]; % based on SVM standard vectors
persistent x_old i_old
if isempty(x_old), x_old=1; end
if isempty(i_old), i_old=0+1j*0: end
g=zeros(1, 8);
ik_ref=I_ref1+1j*I_ref2; 
ik=I_meas1+1j*I_meas2;
e=v(x_old)-L/Ts*ik-(R-L/Ts)*i_old;
i_old=ik;
for i=1:8
v_o1=v(i);
ik1=(1-R*Ts/L)*ik+Ts/L*(v_o1-e);
g(i)=abs(real(ik_ref-ik1))+abs(imag(ik_ref-ik1));
end
[yy, x_opt]=min(g);
x_old=x_opt;
x_opt=x_old;
Sa=states(x_opt,1);
Sb=states(x_opt,2);
Sc=states(x_opt,3);
