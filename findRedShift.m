%% Project - Stellar Motion
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

%% This code loads the data and defines measurement parameters.
load starData
nObs = size(spectra,1)
lambdaStart = 630.02
lambdaDelta = 0.14

%% Task 1
% Create a vector "lambda" of wavelength values, from lambdaStart to
% lambdaEnd in increments of lambdaDelta.
lambdaEnd = lambdaStart + (nObs-1)*lambdaDelta
lambda = (lambdaStart:lambdaDelta:lambdaEnd)

%% Task 2 & 7
% Extract column 2 (the Halpha spectrum) as "s".
s = spectra(:,2)

%% Task 3
% Plot the spectrum.
plot(lambda,s,".-")
xlabel("Wavelength")
ylabel("Intensity")

%% Task 4
% Find the minimum intensity value and its index, then the corresponding
% wavelength (this is the observed, redshifted Halpha line).
[sHa,idx] = min(s)
lambdaHa = lambda(idx)

%% Task 5
% Mark the Halpha line on the plot.
hold on
plot(lambdaHa,sHa,"rs",MarkerSize=8)
hold off

%% Task 6
% Compute the redshift z and the corresponding radial velocity (km/s)
% using the rest wavelength of Halpha, 656.28 nm, and the speed of light.
z = (lambdaHa/656.28) - 1
speed = z * 299792.458

%% Further Practice
% Instead of typing a different column value, try using a slider to
% select any column in spectra. To add a slider to your live script,
% select Control > Slider in the Live Editor tab. Right-click the slider
% to configure the slider values. The values should account for each
% column in spectra, i.e. 1:1:7.
