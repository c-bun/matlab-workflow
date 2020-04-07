function video = testfxn(path, frames, sigma)

% loop across frames
% perform gaussian smoothing
% subtract background
% encapsulate above in a function
% sigma = 16;
% path = "Cy5DNA_A565_6xG_pos_2xwash_002.tif";
% frames = 100;
video = NaN([512 512 frames],'single');
for frame = 1:frames
    image = imread(path,'tif',"Index",frame);
    gaussian = imgaussfilt(image, sigma);
    background_subtracted = image-gaussian;
    video(:,:,frame) = background_subtracted;
end
end