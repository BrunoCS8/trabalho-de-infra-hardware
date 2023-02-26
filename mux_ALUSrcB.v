module mux_ALUSrcB (
    input wire [31:0] zero, um, dois, tres, quatro,
    input wire [1:0] controle,
    output wire [31:0] saida_USrcAB
);
    assign saida_USrcAB = (saida_USrcAB == 2'b00) ? zero:
                          (saida_USrcAB == 2'b01) ? um:
                          (saida_USrcAB == 2'b10) ? dois:
                          (saida_USrcAB == 2'b11) ? tres:
                          quatro;
endmodule