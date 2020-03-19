f=imread('D:\Work&Files\PSU-Course\EE455\Images\walkbridge.tif');
f=f(:,:,1);
 
f1=f(1:16:end,1:16:end);
%This is the 32*32 image we get from Excercise(1)
 
for x = 1 : 512       
    for y = 1 : 512    
        zeroimage(x,y) = 0;
    end
end
f2=zeroimage;
%Generate a zeroimage which has a size of 512*512
 
for x=1:32
    for y=1:32
             f2((16*(x-1)+1),(16*(y-1)+1))=f1(x,y);
    end
end
%Attribute the value of original 32*32 image to the 512*512 image
%The upper left pixel of every 16 pixels along horizontal and vertical direction in the 512*512
%zeroimage are distributed a value from the 32*32 image
 
f2=uint8(f2);
% Set the image to 8-bit 
 
% Now perform the bilinear interpolation
for n=1:31
    for x=(16*(n-1)+1):16*n
        for k=1:31
            for y=(16*(k-1)+1):16*k
                    g1=(((16*k+1)-y)/(16))*f2((16*(n-1)+1),(16*(k-1)+1))+((y-(16*(k-1)+1))/(16))*f2((16*(n-1)+1),(16*k+1));
                    g2=(((16*k+1)-y)/(16))*f2((16*n+1),(16*(k-1)+1))+((y-(16*(k-1)+1))/(16))*f2((16*n+1),(16*k+1));
                    f2(x,y)=(((16*n+1)-x)/16)*g1+((x-(16*(n-1)+1))/(17-1))*g2;
            end
        end
    end
end
 
imtool(f2);
imwrite(f2,'result','gif');


