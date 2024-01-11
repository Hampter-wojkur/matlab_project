function [d2b]= binary_rep_my(a, n, m)
    % Oblicz postać binarną liczby
    d2b = [fix(rem(fix(a)*pow2(-(n-1):0),2)), fix(rem(rem(a,1)*pow2(1:m),2))];

    % Wyświetl wynik
    disp(['Binary representation of ', num2str(a), ': ', num2str(d2b)]);
end


%fix(a): To zaokrąglenie liczby zmiennoprzecinkowej a w dół, zwracając najbliższą liczbę całkowitą w kierunku zera. Otrzymujemy w ten sposób część całkowitą liczby a.

%fix(a)*pow2(-(n-1):0): Mnożenie części całkowitej przez potęgi liczby 2 od -n+1 do 0. Działa to jak przesunięcie bitowe w lewo o n-1 miejsc.

%rem(...): Obliczanie reszty z dzielenia przez 2. To sprowadza się do wyznaczania wartości reszty dla każdego bitu.

%[fix(...), fix(...)]: Konkatenacja dwóch wyników uzyskanych z części całkowitej liczby.

%rem(a,1): To wyznacza część ułamkową liczby a, czyli resztę z dzielenia a przez 1.

%rem(a,1)*pow2(1:m): Podobnie jak wcześniej, mnożenie części ułamkowej przez potęgi liczby 2 od 1 do m.

%[fix(...), fix(...)]: Ponownie konkatenacja dwóch wyników uzyskanych z części ułamkowej liczby.

%[fix(rem(fix(a)*pow2(-(n-1):0),2)), fix(rem(rem(a,1)*pow2(1:m),2))]: Na koniec, obie części (całkowita i ułamkowa) są sklejane razem w jedno binarne wyrażenie, reprezentujące liczbę a w formie binarnej.