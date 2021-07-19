
ball = readmatrix('ball.txt');

figure(1);
imshow(ball);

ballp = ball;
ballp(31:90,:) = 1;
ballp(:,1:25) = 1;
ballp(:,71:100) = 1;

figure(2);
imshow(ballp);





mona = readmatrix('mona.txt');


figure(3);
imshow(mona);

monap = mona;
monap(31:90,:) = 1;
monap(:,1:25) = 1;
monap(:,71:100) = 1;
figure(4);
imshow(monap);




cat = readmatrix('cat.txt');


figure(5);
imshow(cat,[]);

catp = cat;
catp(31:90,:) = 1;
catp(:,1:25) = 1;
catp(:,71:100) = 1;

figure(6);
imshow(catp,[]);


