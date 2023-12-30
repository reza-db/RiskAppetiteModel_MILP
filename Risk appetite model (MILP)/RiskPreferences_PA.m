%% Risk preferences (risk attitude) of Porth-authority (PA)
clc
clear

% Loading data set for port authorities (PA)
Data1 = xlsread('DataSet1.xlsx','MSI - PA');
Data3 = xlsread('DataSet1.xlsx','Questionnaire - PA');
Data5 = xlsread('DataSet1.xlsx','Average weight of RSGA');

% Define the data set
U1 = Data1(:,1); % Number of observation MSI - PA
U3 = Data3(:,1); % Number of observation questionnaire - PA
MSI_CR1 = Data1(:,2:end-1); % Data set after MSI - PA
CR3 = Data3(:,2:end-1); % Data set before MSI - PA
W_RSGA = Data5(:,1); % Weight of RSGA

%% Normalize dataset
Xval1 = size(MSI_CR1);
Xval3 = size(CR3);
TW = transpose(W_RSGA);

for i = 1:Xval1
    for j = 1:length(TW) % it is the number of features
        NCR1(i,j) = min(MSI_CR1(:,j))/MSI_CR1(i,j);
    end
end

%% Risk profile analysis
for i = 1: Xval3 % Port-authority observations
    for j = 1: length(TW) % it is number of features
    Y1(i,j) = NCR1(i,j)-TW(:,1)/CR3(i,j);
    end
end

for i=1:Xval3
PWSM(i,1)=sum(Y1(i,:).*TW);
PWPM(i,1)=prod(Y1(i,:).^TW);
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
