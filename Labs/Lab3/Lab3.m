load spectra
who
plot(wavelength, xyz)
%% 1.1
[X11, Y11, Z11] = spectra2xyz(1, CIED65)
%% 1.2
plot(wavelength, R1);
plot(wavelength, R2);
[X12a, Y12a, Z12a] = spectra2xyz(R1, CIED65)
[X12b, Y12b, Z12b] = spectra2xyz(R2, CIED65)
%% 1.3
[X13a, Y13a, Z13a] = spectra2xyz(R1, f11)
[X13b, Y13b, Z13b] = spectra2xyz(R2, f11)
%% 1.4
% Skip for now
%% 1.5
[R1, G1, B1] = myxyz2rgb(X12a, Y12a, Z12a);
[R2, G2, B2] = myxyz2rgb(X12b, Y12b, Z12b);
[R3, G3, B3] = myxyz2rgb(X13a, Y13a, Z13a);
[R4, G4, B4] = myxyz2rgb(X13b, Y13b, Z13b);
map = [R1 G1 B1; R2 G2 B2; R3 G3 B3; R4 G4 B4]
map = min(1,max(0,map))
image([1 2;3 4])
image1 = colormap(map)
%% 2.2
[r1, g1, b1] = myxyz2rgb(43.915, 44.89, 68.43);
[r2, g2, b2] = myxyz2rgb(31.60, 30.48, 54.20);
[r3, g3, b3] = myxyz2rgb(80.43, 84.00, 96.50);
[r4, g4, b4] = myxyz2rgb(25.84, 42.52, 80.88);
[r5, g5, b5] = myxyz2rgb(37.36, 18.44, 27.52);
[r6, g6, b6] = myxyz2rgb(7.40, 5.74, 40.36);
map = [r1 g1 b1; r2 g2 b2; r3 g3 b3; r4 g4 b4; r5 g5 b5; r6 g6 b6]
map = min(1,max(0,map))
image([1 2 3; 4 5 6])
image2 = colormap(map)
%% 3 
[C, M, Y, K] = tiffread('halftone.tif');
[R, G, B] = cmyk2rgb(C, M, Y, K);
imshowrgb(R, G, B)
%% 3.1
C1 = C(129:384, 129:384)
M1 = M(129:384, 129:384)
Y1 = Y(129:384, 129:384)
K1 = K(129:384, 129:384)
Demichel_test(C1, M1, Y1, K1)
C2 = C(139:394,129:384)
M2 = M(139:394,129:384)
Y2 = Y(139:394,129:384)
K2 = K(139:394,129:384)
Demichel_test(C2, M2, Y2, K2)
%% 4
[R, G, B] = tiffread('Butterfly');
imshowrgb(R, G, B);
%% 4.1
[C, M, Y, K] = rgb2cmyk(R, G, B);
figure(1)
imshow(C)
figure(2)
imshow(M)
figure(3)
imshow(Y)
figure(4)
imshow(K)
%% 4.2
[L, a, b] = myrgb2lab(R, G, B);
[R2, G2, B2] = mylab2rgb(L, a*3, b*3);
figure(1)
imshowrgb(R2, G2, B2)
%% 5.1
[X1, Y1, Z1] = spectra2xyz(1, CIED65)
[R1, G1, B1] = myxyz2rgb(X1, Y1, Z1);

[X2, Y2, Z2] = spectra2xyz(1, Tungsten60W)
[R2, G2, B2] = myxyz2rgb(X2, Y2, Z2);

[X3, Y3, Z3] = spectra2xyz(1, plank90K)
[R3, G3, B3] = myxyz2rgb(X3, Y3, Z3);

RGB = [R1 G1 B1; R2 G2 B2; R3 G3 B3];
showRGB(RGB)
%% 5.2
showRGB_20
%% 5.3
plot_deltaE
%% 5.4
plot_XYZ
%% 5.5
plot_Lab




