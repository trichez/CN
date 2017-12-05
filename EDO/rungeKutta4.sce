//runge-kutta 4ª ordem
clear;
function [yy] = dy(x,y)
    yy = x-y+2; // 
endfunction
y0 = 2;// condicao inicial
a = 0;//x0
b = 1;//xn
n = 20;//0;//nº de pontos -1

h = abs(b-a)/(n);

K1 = 0;
K2 = 0;
count = 1;
X = linspace(a, b, n);
Y(count) = y0;

while count < n do
    
    K1 = dy(X(count),Y(count));
    K2 = dy(X(count)+h , Y(count) + h * K1);
    K3 = dy(X(count)+(h/2) , Y(count) + (h/2) * K2 );
    K4 = dy(X(count)+(h/2) , Y(count) + h * K3);
    Y(count+1) = Y(count) + (h/6)*(K1 + 2*K2 + 2*K3 + K4);

    printf("i:%d(%f, %f)\n ",count ,X(count),Y(count));
    count = count +1;   

end
    printf("i:%d(%f, %f)\n ",count ,X(count),Y(count));
plot(X,Y,'b');
