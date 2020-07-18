%% SPQEIR model
% Proverbio Daniele
% 01/04/2020
% LCSB, Luxembourg
% Proverbio D, Kemp F, Magni S, Husch A, Aalto A, Mombaerts L, Skupin A, Goncalves J,  Ameijeiras-Alonso J, Ley C, "Dynamical SPQEIR model assesses the effectiveness of non-pharmaceutical interventions against COVID-19 epidemic outbreaks", 2020

%% Mobility data
% from Google mobility report, dowload from ourworldindata.org
% To show why we took 4 days for tau (time to implement measures) in
% most countries

load('data_mobility_SPQEIR.mat');
%NB: for Lombardy alone, we used Italian data as they closely match

t1 = datetime(2020,2,16,8,0,0);
t2 = datetime(2020,6,8,8,0,0);
mobility_dates = (t1:t2)';


AT_mean_outflux = (AT_mobility1(:,1) + AT_mobility1(:,2) + AT_mobility1(:,4) + AT_mobility1(:,6))/4 ;
CH_mean_outflux = (CH_mobility1(:,1) + CH_mobility1(:,2) + CH_mobility1(:,4) + CH_mobility1(:,6))/4 ;
DK_mean_outflux = (DK_mobility(:,1) + DK_mobility(:,2) + DK_mobility(:,4) + DK_mobility(:,6))/4 ;
IR_mean_outflux = (IR_mobility(:,1) + IR_mobility(:,2) + IR_mobility(:,4) + IR_mobility(:,6))/4 ;
IL_mean_outflux = (IL_mobility1(:,1) + IL_mobility1(:,2) + IL_mobility1(:,4) + IL_mobility1(:,6))/4 ;
LO_mean_outflux = (LO_mobility1(:,1) + LO_mobility1(:,2) + LO_mobility1(:,4) + LO_mobility1(:,6))/4 ;

figure()
hold on
plot(mobility_dates,AT_mean_outflux)
plot(mobility_dates,CH_mean_outflux)
plot(mobility_dates,DK_mean_outflux)
plot(mobility_dates,IR_mean_outflux)
plot(mobility_dates,IL_mean_outflux)
plot(mobility_dates,LO_mean_outflux)

legend({'AT','CH','DK','IR','IL','LO'},'Location','southwest')
xlabel("Date",'FontSize',15)
ylabel("Mobility changes wrt baseline [%]",'FontSize',15)
hold off

figure()
hold on
plot(mobility_dates(10:50),AT_mean_outflux(10:50))
plot(mobility_dates(10:50),CH_mean_outflux(10:50))
plot(mobility_dates(10:50),DK_mean_outflux(10:50))
plot(mobility_dates(10:50),IR_mean_outflux(10:50))
plot(mobility_dates(10:50),IL_mean_outflux(10:50))
plot(mobility_dates(10:50),LO_mean_outflux(10:50))
set(gca,'FontSize',14)
legend({'AT','CH','DK','IR','IL','LO'},'Location','southwest')
xlabel("Date",'FontSize',15)
ylabel("Mobility changes wrt baseline [%]",'FontSize',15)
title("Google Mobility Data")
hold off
