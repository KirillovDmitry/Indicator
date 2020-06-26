`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// 
// тестовый модуль для элементарного преобразователя двочного кода в
// двоично-десятичный
// 
////////////////////////////////////////////////////////////////////////////////

module EP_tb;

	// Inputs
	wire [3:0] X;
	reg TG = 0;

	// Outputs
	wire [3:0] Y;

	// Instantiate the Unit Under Test (UUT)
	EP uut (
		.X(X), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		TG = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		#10 forever #10 TG = !TG;

	end
	
	
	reg [15:0] D = 0;
	always @(posedge TG)
		D <= D + 1'b1;
		
	assign X = D[3:0];

      
endmodule
