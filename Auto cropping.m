%operating all pictures in a folder
clear all
close all
clc
% dname_open is the source file where you have your images whereas dname_save is the file to save your images after croping
dname_open = input('Please Enter the Directory Address of the Images:','s');
dname_save = input('Please Enter the Directory Address of the Save Destination:', 's');

%Code Test parameter (Will only do first image in folder if test=1)
test = 0;

%Set up basic file name path to be read
top_file = [dname_open '\'];
ls_top_file = ls(top_file);
c = cellstr(ls_top_file);
cc = c(3:length(c));
S = size(cc);
a = 1;
S(1)

%Input image for crop coordinates
    close all
    file = char(cellstr([top_file char(cc(a))]));
    data_n = char(cc(a));
    file_name = char(cc(a));
imagename = (file_name)
fileToRead2 = [dname_open '\' imagename];
I = imread(fileToRead2);
[I1c rect]= imcrop(I)
I2 = imcrop(I, rect);
imshow (I2, 'Border', 'Tight');
set(gcf, 'Position', [0 0 1 1]);
h = gcf;
saveas(h, [dname_save '\' 'IMG_' '001'], 'jpg')

%Crop Loop
while a<= S(1)
    close all
    file = char(cellstr([top_file char(cc(a))]));
    data_n = char(cc(a));
    file_name = char(cc(a));
    
% Operations on files
imagename = (file_name);
newname= sprintf('%d IMG_');

%Input image
fileToRead2 = [dname_open '\', imagename];
I = imread(fileToRead2);

%Cropping
%Vector [xmin, ymin, width, height]
I2 = imcrop(I, rect);
imshow(I2,'Border','Tight');
set(gcf, 'PaperPositionMode', 'auto');
h = gcf;

%saveas(h, [dname_save '\' 'IMG_', a], 'jpg');
saveas(h, [dname_save '\' 'IMG_', num2str(a,'%d')], 'jpg');
if test == 1
    fprintf('breaking loop to set axis - test==1')
    break
end
a=a+1
end
