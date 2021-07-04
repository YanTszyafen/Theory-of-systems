T = 0.1;
A = [0 1;0 0];
B = [0;1];
C = [1 0];
Bd = 0;
k=100;
Ad = expm(A*T);
for i=1:k
    Bd = Bd+(A^(i-1)*T^(i))/(prod(1:i))*B;
end
Bd

