function [root, iteration] = newton(func, diffFunc, initialValue, tolerance, maxIterations)
  
  root = initialValue;
  iteration = 0;

  while abs(func(root)) > tolerance && iteration < maxIterations

    root = root - func(root) / diffFunc(root);
    iteration += 1;

  end

endfunction
