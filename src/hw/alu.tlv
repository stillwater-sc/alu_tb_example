\m4_TLV_version 1d: tl-x.org
\SV

   // =========================================
   // ALU testbench example.
   // =========================================
   
\SV
// ------------------------
// SystemVerilog data types

typedef logic [31:0] word_t;

typedef enum bit [3:0] {
    alu_add,
    alu_sub
} aluop_t;


// --------------
// ALU

module alu
(
    input aluop_t aluop,
    input word_t a, b,
    output word_t f
);

always_comb
begin
    case (aluop)
        alu_add: f = a + b;
        alu_sub: f = a - b;
        default: f = f;
    endcase
end

endmodule : alu 
