%% Aggregate response of risk criteria/alternative/profile (Rn) for PA

clc
clear

% Loading the data set
Data2 = xlsread('DataSet1.xlsx','MSI - Port User');

% Define the data set
U2 = Data2(:,1); % Number of observation MSI - SU
CR2 = Data2(:,2:end-1); % Data set after MSI - SU
x11 = CR2(:,1)  ; x12 = CR2(:,2)  ; x13 = CR2(:,3)  ; x14 = CR2(:,4)  ; x15 = CR2(:,5)  ; x16 = CR2(:,6) ; x17 = CR2(:,7) ; x18 = CR2(:,8) ; x19 = CR2(:,9);
x21 = CR2(:,10) ; x22 = CR2(:,11) ; x23 = CR2(:,12) ; x24 = CR2(:,13) ; x25 = CR2(:,14) ; x26 = CR2(:,15); x27 = CR2(:,16);
x31 = CR2(:,17) ; x32 = CR2(:,18) ; x33 = CR2(:,19) ; x34 = CR2(:,20) ; x35 = CR2(:,21) ; x36 = CR2(:,22); x37 = CR2(:,23); x38 = CR2(:,24); x39 = CR2(:,25);
x41 = CR2(:,26) ; x42 = CR2(:,27) ; x43 = CR2(:,28) ; x44 = CR2(:,29) ; x45 = CR2(:,30) ; x46 = CR2(:,31); x47 = CR2(:,32); x48 = CR2(:,33);
x51 = CR2(:,34) ; x52 = CR2(:,35) ; x53 = CR2(:,36) ; x54 = CR2(:,37) ; x55 = CR2(:,38) ;
x61 = CR2(:,39) ; x62 = CR2(:,40) ; x63 = CR2(:,41) ; x64 = CR2(:,42) ; x65 = CR2(:,43) ; x66 = CR2(:,44);
x71 = CR2(:,45) ; x72 = CR2(:,46) ; x73 = CR2(:,47) ;
x81 = CR2(:,48) ; x82 = CR2(:,49) ; x83 = CR2(:,50) ;
x91 = CR2(:,51) ; x92 = CR2(:,52) ; x93 = CR2(:,53) ; x94 = CR2(:,54) ; x95 = CR2(:,55) ; x96 = CR2(:,56);
x101 = CR2(:,57); x102 = CR2(:,58); x103 = CR2(:,59); x104 = CR2(:,60); x105 = CR2(:,61);

% Calculating R1 - R81
for a = 1: size(CR2)
    for b = 1: 61 % number of features
        R1(:,1)  = x16 + x22 + x32 + x47 + x54 + x61 + x72 + x82 + x93 + x103;
        R2(:,1)  = x16 + x21 + x36 + x46 + x51 + x66 + x73 + x82 + x96 + x101;
        R3(:,1)  = x11 + x22 + x39 + x45 + x52 + x62 + x73 + x81 + x94 + x102;
        R4(:,1)  = x14 + x22 + x33 + x48 + x55 + x62 + x73 + x82 + x91 + x101;
        R5(:,1)  = x14 + x27 + x39 + x42 + x51 + x63 + x72 + x83 + x95 + x101;
        R6(:,1)  = x18 + x27 + x31 + x46 + x55 + x64 + x73 + x81 + x93 + x102;
        R7(:,1)  = x16 + x21 + x34 + x45 + x51 + x63 + x73 + x83 + x91 + x102;
        R8(:,1)  = x12 + x24 + x39 + x44 + x55 + x66 + x71 + x83 + x91 + x103;
        R9(:,1)  = x17 + x25 + x31 + x44 + x52 + x63 + x72 + x82 + x93 + x105;
        R10(:,1) = x17 + x27 + x33 + x45 + x54 + x66 + x72 + x81 + x92 + x104;
        R11(:,1) = x15 + x23 + x39 + x41 + x54 + x61 + x73 + x82 + x92 + x103;
        R12(:,1) = x19 + x21 + x37 + x48 + x54 + x63 + x73 + x81 + x91 + x105;
        R13(:,1) = x13 + x21 + x33 + x43 + x53 + x63 + x73 + x81 + x93 + x103;
        R14(:,1) = x17 + x26 + x39 + x48 + x53 + x64 + x71 + x82 + x96 + x102;
        R15(:,1) = x19 + x27 + x32 + x44 + x51 + x65 + x71 + x81 + x91 + x103;
        R16(:,1) = x14 + x22 + x31 + x47 + x53 + x65 + x73 + x83 + x92 + x104;
        R17(:,1) = x12 + x25 + x35 + x48 + x51 + x61 + x73 + x83 + x94 + x104;
        R18(:,1) = x19 + x26 + x38 + x47 + x52 + x66 + x73 + x82 + x95 + x101;
        R19(:,1) = x11 + x21 + x32 + x43 + x53 + x64 + x71 + x82 + x95 + x104;
        R20(:,1) = x14 + x23 + x38 + x43 + x51 + x63 + x72 + x82 + x91 + x102;
        R21(:,1) = x15 + x27 + x37 + x43 + x52 + x61 + x73 + x83 + x96 + x104;
        R22(:,1) = x17 + x22 + x34 + x41 + x51 + x62 + x73 + x81 + x95 + x103;
        R23(:,1) = x14 + x25 + x37 + x41 + x53 + x66 + x72 + x81 + x93 + x102;
        R24(:,1) = x17 + x23 + x32 + x46 + x54 + x63 + x72 + x83 + x94 + x101;
        R25(:,1) = x12 + x26 + x31 + x43 + x54 + x62 + x72 + x83 + x91 + x101;
        R26(:,1) = x16 + x25 + x39 + x43 + x52 + x65 + x71 + x81 + x92 + x101;
        R27(:,1) = x14 + x26 + x36 + x45 + x54 + x61 + x71 + x81 + x93 + x103;
        R28(:,1) = x13 + x22 + x38 + x44 + x51 + x61 + x72 + x81 + x96 + x104;
        R29(:,1) = x18 + x26 + x37 + x41 + x51 + x65 + x72 + x82 + x94 + x103;
        R30(:,1) = x16 + x24 + x31 + x48 + x54 + x61 + x72 + x81 + x95 + x104;
        R31(:,1) = x16 + x26 + x35 + x44 + x53 + x63 + x73 + x81 + x92 + x102;
        R32(:,1) = x11 + x27 + x36 + x48 + x52 + x63 + x72 + x82 + x92 + x103;
        R33(:,1) = x17 + x21 + x38 + x41 + x55 + x61 + x71 + x81 + x92 + x101;
        R34(:,1) = x14 + x21 + x35 + x46 + x52 + x61 + x71 + x83 + x92 + x103;
        R35(:,1) = x19 + x25 + x33 + x46 + x51 + x62 + x71 + x82 + x92 + x104;
        R36(:,1) = x13 + x23 + x34 + x48 + x52 + x65 + x71 + x81 + x93 + x101;
        R37(:,1) = x15 + x21 + x35 + x45 + x55 + x65 + x72 + x82 + x95 + x105;
        R38(:,1) = x13 + x26 + x32 + x41 + x55 + x63 + x73 + x83 + x92 + x104;
        R39(:,1) = x18 + x22 + x34 + x43 + x54 + x66 + x71 + x83 + x92 + x105;
        R40(:,1) = x14 + x24 + x32 + x41 + x52 + x62 + x73 + x81 + x96 + x105;
        R41(:,1) = x18 + x24 + x36 + x41 + x52 + x63 + x71 + x82 + x91 + x104;
        R42(:,1) = x18 + x25 + x32 + x45 + x53 + x61 + x73 + x82 + x91 + x101;
        R43(:,1) = x17 + x22 + x36 + x42 + x53 + x65 + x73 + x83 + x91 + x104;
        R44(:,1) = x13 + x25 + x36 + x41 + x54 + x62 + x71 + x83 + x95 + x102;
        R45(:,1) = x13 + x21 + x31 + x42 + x52 + x66 + x73 + x82 + x94 + x103;
        R46(:,1) = x13 + x22 + x39 + x46 + x53 + x61 + x72 + x82 + x91 + x105;
        R47(:,1) = x12 + x22 + x38 + x45 + x52 + x63 + x71 + x82 + x93 + x104;
        R48(:,1) = x15 + x21 + x36 + x44 + x53 + x62 + x72 + x83 + x93 + x101;
        R49(:,1) = x17 + x24 + x35 + x43 + x51 + x62 + x73 + x82 + x93 + x103;
        R50(:,1) = x13 + x27 + x35 + x47 + x54 + x62 + x71 + x82 + x91 + x102;
        R51(:,1) = x12 + x21 + x32 + x42 + x52 + x62 + x72 + x81 + x92 + x102;
        R52(:,1) = x19 + x23 + x31 + x45 + x53 + x62 + x71 + x83 + x96 + x103;
        R53(:,1) = x15 + x22 + x32 + x48 + x51 + x66 + x71 + x83 + x93 + x102;
        R54(:,1) = x11 + x25 + x34 + x47 + x55 + x63 + x72 + x83 + x96 + x103;
        R55(:,1) = x15 + x24 + x33 + x47 + x53 + x63 + x71 + x81 + x94 + x101;
        R56(:,1) = x11 + x22 + x37 + x44 + x54 + x62 + x73 + x82 + x92 + x101;
        R57(:,1) = x19 + x22 + x36 + x43 + x55 + x61 + x72 + x81 + x94 + x102;
        R58(:,1) = x11 + x21 + x31 + x41 + x51 + x61 + x71 + x81 + x91 + x101;
        R59(:,1) = x16 + x23 + x37 + x42 + x55 + x26 + x71 + x82 + x93 + x104;
        R60(:,1) = x11 + x23 + x35 + x41 + x53 + x66 + x72 + x81 + x91 + x104;
        R61(:,1) = x12 + x23 + x36 + x47 + x51 + x64 + x73 + x81 + x92 + x105;
        R62(:,1) = x17 + x21 + x37 + x47 + x52 + x61 + x71 + x83 + x91 + x102;
        R63(:,1) = x12 + x21 + x33 + x41 + x54 + x65 + x72 + x82 + x96 + x102;
        R64(:,1) = x15 + x26 + x34 + x46 + x52 + x62 + x72 + x81 + x91 + x104;
        R65(:,1) = x18 + x21 + x38 + x48 + x53 + x62 + x72 + x83 + x92 + x103;
        R66(:,1) = x19 + x22 + x35 + x41 + x52 + x64 + x72 + x83 + x93 + x101;
        R67(:,1) = x18 + x23 + x33 + x44 + x52 + x61 + x73 + x83 + x95 + x102;
        R68(:,1) = x11 + x26 + x33 + x42 + x51 + x61 + x71 + x83 + x93 + x105;
        R69(:,1) = x16 + x22 + x33 + x41 + x52 + x64 + x72 + x83 + x91 + x103;
        R70(:,1) = x12 + x27 + x34 + x41 + x53 + x61 + x73 + x82 + x93 + x101;
        R71(:,1) = x11 + x24 + x38 + x46 + x54 + x65 + x73 + x83 + x93 + x102;
        R72(:,1) = x16 + x27 + x38 + x41 + x53 + x62 + x71 + x83 + x94 + x105;
        R73(:,1) = x12 + x22 + x37 + x46 + x53 + x63 + x71 + x81 + x95 + x103;
        R74(:,1) = x18 + x22 + x35 + x42 + x54 + x63 + x71 + x81 + x96 + x101;
        R75(:,1) = x19 + x21 + x39 + x41 + x54 + x63 + x73 + x83 + x93 + x104;
        R76(:,1) = x15 + x22 + x31 + x41 + x51 + x63 + x71 + x82 + x92 + x102;
        R77(:,1) = x15 + x25 + x38 + x42 + x54 + x64 + x73 + x81 + x91 + x103;
        R78(:,1) = x19 + x24 + x34 + x42 + x53 + x61 + x72 + x82 + x92 + x102;
        R79(:,1) = x13 + x24 + x37 + x45 + x51 + x64 + x72 + x83 + x92 + x101;
        R80(:,1) = x18 + x21 + x39 + x47 + x51 + x62 + x72 + x81 + x93 + x104;
        R81(:,1) = x14 + x21 + x34 + x44 + x54 + x64 + x71 + x82 + x94 + x104;
    end
end

% Creating Decision Matrix Seaport User (SU)
AR_SU = [R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,...
         R11, R12, R13, R14, R15, R16, R17, R18, R19, R20,...
         R21, R22, R23, R24, R25, R26, R27, R28, R29, R30,...
         R31, R32, R33, R34, R35, R36, R37, R38, R39, R40,...
         R41, R42, R43, R44, R45, R46, R47, R48, R49, R50,...
         R51, R52, R53, R54, R55, R56, R57, R58, R59, R60,...
         R61, R62, R63, R64, R65, R66, R67, R68, R69, R70,...
         R71, R72, R73, R74, R75, R76, R77, R78, R79, R80, R81];