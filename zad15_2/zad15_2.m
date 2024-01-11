% fractional2binary.m
a = 1235.57849; % your float point number
n = 16; % number bits for integer part of your number
m = 20; % number bits for fraction part of your number
% binary number
d2b = binary_rep_my(a,n,m);
% the inverse transformation
b2d = d2b*pow2([n-1:-1:0 -(1:m)].'), 

%pow2([n-1:-1:0 -(1:m)].'): To jest konstrukcja potęgi liczby 2 dla każdej pozycji w wektorze. [n-1:-1:0 -(1:m)].' generuje wektor potęg liczby 2 od 2^(n-1) do 2^0 dla części całkowitej, a następnie od 2^(-1) do 2^(-m) dla części ułamkowej.

%d2b * pow2(...): Mnożenie wektora binarnego d2b przez wektor potęg liczby 2. Działa to na zasadzie sumy ważonej, gdzie każdy bit liczby binarnej jest mnożony przez odpowiednią potęgę liczby 2.

%b2d = d2b * pow2(...): Wynikiem tego działania jest liczba dziesiętna, która jest reprezentacją liczby binarnej d2b w systemie dziesiętnym.

binary_rep(1235.57849, 16, 20),