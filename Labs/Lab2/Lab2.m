bild = imread('kvarn.tif');
bild = im2double(bild);
%% 1.1
b11 = bild > 0.5;
imwrite(b11, 'b11.tif')
%% 1.2
% 19 grånivåer representeras i tr1, högsta värdet är 18, normaliseras
% genom att dividera med 19 för att få värden mellan 0-1. 
% 33 grånivåer representeras i tr2, högsta värdet är 32, noramliseras genom
% att dividera med 33 för att få värden mellan 0-1.
tr1 = tr1/19;
tr2 = tr2/33;
%% 1.2 forts.
b12_tr1 = troskel(bild, tr1);
b12_tr2 = troskel(bild, tr2);
imwrite(b12_tr1, 'b12_tr1.tif');
imwrite(b12_tr2, 'b12_tr2.tif');
%% 1.3 
%tr3 = tr3/33;
b13 = troskel(bild, tr3);
imwrite(b13, 'b13.tif');
%% 1.4 
spinTR = [7 8 9 10; 6 1 2 11; 5 4 3 12; 16 15 14 13];
lineTR = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];
spinTR = spinTR/17;
lineTR = lineTR/17;
%% 1.4 forts.
b14_spin = troskel(bild, spinTR);
b14_line = troskel(bild, lineTR);
imwrite(b14_line, 'b14_lint.tif');
imwrite(b14_spin, 'b14_spin.tif');
%% 2.1 
b21 = tabellrast(bild);
imwrite(b21, 'b21.tif');
%% 2.2
b22 = tabellrast2(bild);
imwrite(b22, 'b22.tif');
%% 2.4
b24 = tabellrast3(bild);
imwrite(b24, 'b24.tif');
%% 3.1
FnS = [0 0 7; 3 5 7]/16;
b31 = errordif(bild, FnS);
imwrite(b31, 'b31.tif');
%% 3.2
JJnN = [ 0 0 0 7 5; 3 5 7 5 3; 1 3 5 3 1]/48;
b32 = errordif(bild, JJnN);
imwrite(b32, 'b32.tif');
%% 3.4 
b34_1 = errordif(bild, 0.6);
imwrite(b34_1, 'b34_1.tif');
filter = [0 0 0.2; 0 0.8 0];
b34_2 = errordif(bild, filter);
imwrite(b34_2, 'b34_2.tif');
%% 3.6
brus = rand(512)-0.5;
temp = bild;
temp2 = temp + brus *0.2;
b36 = errordif(temp2, FnS);
imwrite(b36, 'b36.tif');
%% 4
b40 = imcdp(bild);
imwrite(b40, 'b40.tif');
%% 5.1
mysnr(bild, b11)
mysnr(bild, b31)
mysnr(bild, b40)








