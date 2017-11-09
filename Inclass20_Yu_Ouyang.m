%Inclass 20

%In this folder you will find data .mat file with x and y data

% For all of the questions below, use any options as necessary to get a
% good fit - starting points, lower bounds etc. 

% 1. Define a custom model and try to fit the data to a Michaelis function 
% y = V*x/(K+x). 

load('data.mat')
fit_str1 = 'V*x/(K+x)';
fitmodel1 = fittype(fit_str1);
[fit_out1, fit_metric1] = fit(xx',yy',fitmodel1,'Lower', [0,0]);

% 2. Use a custom model to try to fit the data to a Hill function with
% exponent 2: y = V*x^2/(K^2+x^2)

fit_str2 = 'V*x^2/(K^2+x^2)';
fitmodel2 = fittype(fit_str2);
[fit_out2, fit_metric2] = fit(xx',yy',fitmodel2,'Lower', [0,0]);

% 3. Now treat the exponent as a free parameter and perform the fit again,
% that is fit to the model y = V*x^n/(K^n+x^n)

fit_strn = 'V*x^n/(K^n+x^n)';
fitmodeln = fittype(fit_strn);
[fit_outn, fit_metricn] = fit(xx',yy',fitmodeln, 'Lower', [0,0,0]);

% fit_outn gives n = 2.107

% 4. Redo parts 1 and 2, but using your model from 3 and fixing the value of
% n to either 1 or 2.

fit_str = 'V*x^2.1/(K^2.1+x^2.1)';
fitmodel = fittype(fit_str);
[fit_out, fit_metric] = fit(xx',yy',fitmodel,'Lower', [0,0]);
