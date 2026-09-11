%% Project - Compare Stellar Spectra
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

%% This code loads the data from the previous project.
load stellarSpectraData

%% Task 1
% Find the minimum intensity (and index) for every column of spectra at
% once, then compute the observed Halpha wavelength, redshift, and
% radial velocity for each star.
[sHa,idx] = min(spectra);
lambdaHa = lambda(idx);
z = lambdaHa/656.28 - 1;
speed = z*299792.458;

%% Tasks 2-4
% Plot each star's spectrum. Dash the line if the star is blueshifted
% (speed <= 0, i.e. moving toward us); otherwise use a thicker solid line.
for v = 1:7
    s = spectra(:, v);
    if speed(v) <= 0
        plot(lambda, s, "--")
    else
        plot(lambda, s, LineWidth=3)
    end
    hold on
end

hold off

%% Task 5
% Add a legend using the star names.
legend(starnames)

%% Task 6
% Which stars are moving away from us (redshifted, speed > 0)?
movaway = starnames(speed > 0)

%% Further Practice
% Like many functions in MATLAB, plotting functions can accept matrix
% inputs. plot(A) creates a line for each column in A.
% If you do not want to differentiate between redshifted and blueshifted
% spectra, you do not need to use a for loop.
plot(lambda,spectra)
legend(starnames)
