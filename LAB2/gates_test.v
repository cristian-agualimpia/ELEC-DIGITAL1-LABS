// filename: gates_test.v
// Módulo de prueba
module test_gates;
  reg a, b; // Entradas
  wire s_and, s_or, s_xor; // Salidas

  // Instanciación de las compuertas
  and_gate u1 (.a(a), .b(b), .s(s_and)); // Compuerta AND
  or_gate u2 (.a(a), .b(b), .s(s_or));   // Compuerta OR
  xor_gate u3 (.a(a), .b(b), .s(s_xor)); // Compuerta XOR

  // Bloque inicial para probar diferentes combinaciones
  initial begin
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    $finish; // Terminar la simulación
  end

  // Monitor para mostrar los resultados
  initial begin
    $monitor("Time=%0d, a=%b, b=%b, AND=%b, OR=%b, XOR=%b",
             $time, a, b, s_and, s_or, s_xor);
  end
endmodule

// Compuerta AND
module and_gate (
  input a,
  input b,
  output s
);
  assign s = a & b; // Operador AND lógico
endmodule

// Compuerta OR
module or_gate (
  input a,
  input b,
  output s
);
  assign s = a | b; // Operador OR lógico
endmodule

// Compuerta XOR
module xor_gate (
  input a,
  input b,
  output s
);
  assign s = a ^ b; // Operador XOR lógico
endmodule
