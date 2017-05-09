function [CL CD]=NACA0012(alf)
    
     % lift data for interpolation
    CLX = [0 0.087266463 0.174532925 0.261799388 0.34906585 0.436332313 0.523598776 0.610865238 0.698131701 0.785398163 ...
           0.872664626 0.959931089 1.047197551 1.134464014 1.221730476 1.308996939 1.396263402 1.483529864 1.570796327 1.658062789 ...
           1.745329252 1.832595715 1.919862177 2.00712864 2.094395102 2.181661565 2.268928028 2.35619449 2.443460953 2.530727415 ...
           2.617993878 2.705260341 2.792526803 2.879793266 2.967059728 3.054326191 3.141592654];
    CLY =  [0 0.45 0.95 1.35 0.83 0.87 1 1.1 1.15 1.25 ...
            1.23 1.2 1.15 1.08 0.9 0.7 0.5 0.25 6.12323E-17 -0.173648178 ...
            -0.342020143 -0.5 -0.64278761 -0.766044443 -0.866025404 -0.939692621 -0.984807753 -1 -0.984807753 -0.939692621 ...
            -0.866025404 -0.766044443 -0.64278761 -0.5 -0.342020143 -0.173648178 -1.83697E-16];
            
    CL = interp1(CLX, CLY, abs(alf), 'spline');
    CD = sin(2*abs(alf)-pi/2)+1;
    %e=0.88;
    %AR=8;
    %CD = 0.008+(1/pi/AR/e)*CL.^2;
    CL(alf<0) = -1*CL(alf<0);
    
end
