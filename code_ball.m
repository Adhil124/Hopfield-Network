fac = input(' Enter % of w to be converted to 0');
ball = readmatrix('ball.txt');

ballp=zeros(90,100);
ballp(1:30,30:70) = ball(1:30,30:70);
figure(1);
imshow(ballp,[-1 1]);

S = ball(:);
w = 1/9000*(S*S');

%  to set certain weights(w) to zero
x=1; 
for i = 1:9000
    for j = i:9000
        if x<=fac
            w(i,j)=0;
            w(j,i)=0;
        end
        x=x+1;
        if x==101
                x=1;
        end
    end
end

u = zeros(9000,1);
du = zeros(9000,1);
v = ballp(:);
dt = 0.1;
l=2;
E = zeros(200,1);

for i = 1:200
    du = (-u + w*v)*dt ;
    u = u + du;
    v = tanh(l*u);
    E(i) = sqrt(mean((S-v).^2));
    
    figure(1);
    v1 = reshape(v,90,100);
    v1(1:30,30:70)=ballp(1:30,30:70);
    imshow(v1,[-1 1]);
end

figure(2);
plot(.1*(1:200),E*100);
title('RMS error plot');
xlabel('t');
ylabel('RMS error-%');