A = input("ingrese una matriz A")
B = input("ingrese una matriz B")

function C = matmul(A, B)

  % verificar que ambas matrices sean compatibes para una muktiplicacion entre ellas.
  if (size(A, 2) ~= size(B, 1))
    error('The matrices are not compatible for multiplication.')
  end

  % multiplicamos las matrices.
  C = A * B;

end

C = matmul(A, B);

disp(C);
