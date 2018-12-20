clc; clear all; close all;

n = 4; m = 2;           % order and the repetition of the moment

disp(['Calculating Pseudo Zernike moments ..., n = ' num2str(n) ', m = ' num2str(m)]);


p = rgb2gray(imread('Oval_H.png'));
figure(1);subplot(2,3,1);imshow(p);
title('Horizontal oval');
p = logical(not(p));
tic
[~, AOH, PhiOH] = PZernikemoment(p,n,m);  % Call Zernikemoment fuction
Elapsed_time = toc;
xlabel({['A = ' num2str(AOH)]; ['\phi = ' num2str(PhiOH)]});

p = rgb2gray(imread('Oval_45.png'));
figure(1);subplot(2,3,2);imshow(p);
title('-45 degree oval');
p = logical(not(p));
[~, AOH, PhiOH] = PZernikemoment(p,n,m);      % Call Zernikemoment fuction
xlabel({['A = ' num2str(AOH)]; ['\phi = ' num2str(PhiOH)]});

p = rgb2gray(imread('Oval_V.png'));
figure(1);subplot(2,3,3);imshow(p);
title('Vertical oval');
p = logical(not(p));
[~, AOH, PhiOH] = PZernikemoment(p,n,m);      % Call Zernikemoment fuction
xlabel({['A = ' num2str(AOH)]; ['\phi = ' num2str(PhiOH)]});


p = rgb2gray(imread('shape_0.png'));
figure(1);subplot(2,3,4);imshow(p);
title('Horizontal shape');
p = logical(not(p));
[~, AOH, PhiOH] = PZernikemoment(p,n,m);      % Call Zernikemoment fuction
xlabel({['A = ' num2str(AOH)]; ['\phi = ' num2str(PhiOH)]});

p = rgb2gray(imread('shape_90.png'));
figure(1);subplot(2,3,5);imshow(p);
title('Vertical shape');
p = logical(not(p));
[~, AOV, PhiOV] = PZernikemoment(p,n,m);      % Call Zernikemoment fuction
xlabel({['A = ' num2str(AOV)]; ['\phi = ' num2str(PhiOV)]});

p = rgb2gray(imread('Rectangular_H.png'));
figure(1);subplot(2,3,6);imshow(p);
title('Horizontal Rectangle');
p = logical(not(p));
[~, AOH, PhiOH] = PZernikemoment(p,n,m);      % Call Zernikemoment fuction
xlabel({['A = ' num2str(AOH)]; ['\phi = ' num2str(PhiOH)]});

% show the elapsed time
disp('Calculation is complete.');
disp(['The elapsed time per image is ' num2str(Elapsed_time) ' seconds'])