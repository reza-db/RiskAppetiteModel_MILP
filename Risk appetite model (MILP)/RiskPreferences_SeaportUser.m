%% Risk preferences (risk attitude) of Seaport User (SU)
clc
clear

% Loading data set for porth-user
Data2 = xlsread('DataSet1.xlsx','MSI - Port User');
Data4 = xlsread('DataSet1.xlsx','Questionnaire - Port User');
Data5 = xlsread('DataSet1.xlsx','Average weight of RSGA');

% Define the data set
U2 = Data2(:,1); % Number of observation MSI - SU
U4 = Data4(:,1); % Number of observation questionnaire - SU
MSI_CR2 = Data2(:,2:end-1); % Data set after MSI - SU
CR4 = Data4(:,2:end-1); % Data set before MSI - SU
W_RSGA = Data5(:,1); % Weight of RSGA

%% Normalize dataset
Xval1 = size(MSI_CR2);
Xval3 = size(CR4);
TW = transpose(W_RSGA);

for n = 1:Xval1
    for m = 1:length(TW) % it is the number of features
        NCR1(n,m) = min(MSI_CR2(:,m))/MSI_CR2(n,m);
    end
end

%% Risk profile analysis
for n = 1: Xval3 % Seaport user observations
    for m = 1: length(TW) % it is number of features
    Y2(n,m) = NCR1(n,m)-TW(:,1)/CR4(n,m);
    end
end

for n=1:Xval3
PWSM(n,1)=sum(Y2(n,:).*TW);
PWPM(n,1)=prod(Y2(n,:).^TW);
end

lamda1=0;
lamda2=0.1;
lamda3=0.2;
lamda4=0.3;
lamda5=0.4;
lamda6=0.5;
lamda7=0.6;
lamda8=0.7;
lamda9=0.8;
lamda10=0.9;
lamda11=1;

J1 =lamda1*PWSM+(1-lamda1)*PWPM; % Joint generalized criterion lamda 0
J2 =lamda2*PWSM+(1-lamda2)*PWPM; % Joint generalized criterion lamda 0.1
J3 =lamda3*PWSM+(1-lamda3)*PWPM; % Joint generalized criterion lamda 0.2
J4 =lamda4*PWSM+(1-lamda4)*PWPM; % Joint generalized criterion lamda 0.3
J5 =lamda5*PWSM+(1-lamda5)*PWPM; % Joint generalized criterion lamda 0.4
J6 =lamda6*PWSM+(1-lamda6)*PWPM; % Joint generalized criterion lamda 0.5
J7 =lamda7*PWSM+(1-lamda7)*PWPM; % Joint generalized criterion lamda 0.6
J8 =lamda8*PWSM+(1-lamda8)*PWPM; % Joint generalized criterion lamda 0.7
J9 =lamda9*PWSM+(1-lamda9)*PWPM; % Joint generalized criterion lamda 0.8
J10 =lamda10*PWSM+(1-lamda10)*PWPM; % Joint generalized criterion lamda 0.9
J11 =lamda11*PWSM+(1-lamda11)*PWPM; % Joint generalized criterion lamda 1
