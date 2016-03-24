% specifing the filename and filename extension
contents = dir('*.jpg');
%specifying the distination file
dist ='copy-paste your destination path here';
a = 1;
for i = 1:numel(contents)
  filename = contents(i).name;
  % Open the file specified in filename, resize image into 425*844
  x = imread(filename);
  y = imresize(x,[123 92]);
  %save into distination
  imwrite(y,[dist '\' 'IMG_', num2str(a,'%d.jpg')]);
  a = a+1;
end
