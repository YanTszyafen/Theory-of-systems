function u=v2(V)
u=0.*(V<=200 | V>600)+(0.005*V-1).*(V>200 & V<=400)+(-0.005*V+3).*(V>400 & V<=600);
end