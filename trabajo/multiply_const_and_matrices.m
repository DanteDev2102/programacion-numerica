disp("Multiplicar constante por matriz y luego su resultado por matriz otra matriz: ")

k= input("Ingrese constante: ")
A= input("Ingrese matriz a multiplicar con constante: ")
B= input("Ingrese matriz a multiplicar al final: ")


function C = multiply_const_and_matrices(k, A, B)
  % Multiplicar un número constante con una matriz y luego multiplicar el resultado con otra matriz
  % k: número constante
  % A: matriz 1
  % B: matriz 2

  % Verificar si las dimensiones de las matrices son compatibles para la multiplicación
  [n_A, m_A] = size(A);
  [n_B, m_B] = size(B);
  if m_A ~= n_B
      error('Las dimensiones de las matrices no son compatibles para la multiplicación');
  end

  % Multiplicar el número constante con la matriz A
  C = k*A;

  % Multiplicar el resultado con la matriz B
  C = C*B;

end

C = multiply_const_and_matrices(k, A, B);

disp(C);
