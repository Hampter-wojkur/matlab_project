# Deklaracja i inicjalizacja zmiennych różnych typów
A = Int64(1234)          # Inicjalizacja zmiennej całkowitej 1234 typu Int64
F = Float16(1.125)       # Inicjalizacja zmiennej zmiennoprzecinkowej 1.125 typu Float16
B = Float64(A)           # Konwersja zmiennej A typu Int64 na zmiennoprzecinkową typu Float64

# Wyświetlanie dokładności różnych typów zmiennoprzecinkowych
tol = eps(Float16), eps(Float32), eps(Float64), eps(BigFloat)  # Obliczenie dokładności dla różnych typów i ich przypisanie do zmiennej tol
println("Dokładności różnych typów zmiennoprzecinkowych:", tol)  # Wyświetlenie dokładności różnych typów zmiennoprzecinkowych

# Wyświetlanie reprezentacji bitowej dla wybranych liczb
println("Reprezentacja bitowa liczby zmiennoprzecinkowej Float32: -0.009765625 ", bitstring(Float32(-0.009765625)))  # Wyświetlenie reprezentacji bitowej dla liczby -0.009765625 typu Float32
println("Reprezentacja bitowa liczby zmiennoprzecinkowej Float16: -0.009765625 ", bitstring(Float16(-0.009765625)))  # Wyświetlenie reprezentacji bitowej dla liczby -0.009765625 typu Float16
println("Reprezentacja bitowa liczby zmiennoprzecinkowej Float32: minus nieskończoność ", bitstring(Float32(-Inf)))  # Wyświetlenie reprezentacji bitowej dla minus nieskończoności typu Float32

# Obliczanie wyniku i wyświetlanie go
result = Float16(1.) + eps(Float64)  # Obliczenie wyniku i przypisanie go do zmiennej result
println("Wynik: ", result)  # Wyświetlenie wyniku

# Manipulowanie liczbami zmiennoprzecinkowymi i ich dokładnością
a = Float16(1.25)  # Inicjalizacja zmiennej zmiennoprzecinkowej 1.25 typu Float16
b = a + eps(Float16)  # Dodanie dokładności do liczby a i przypisanie wyniku do zmiennej b
println("Dokładność liczby w formacie Float16: ", eps(Float16))  # Wyświetlenie dokładności liczby typu Float16
println("Wynik operacji dodawania dokładności do liczby a: ", b)  # Wyświetlenie wyniku operacji dodawania dokładności do liczby a
println("Reprezentacja bitowa sumy liczb 1.25 oraz jej dokładności: ", bitstring(b))  # Wyświetlenie reprezentacji bitowej sumy liczby 1.25 i jej dokładności