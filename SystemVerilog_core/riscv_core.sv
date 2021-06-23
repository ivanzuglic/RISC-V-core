
 // test program
  `define READONLY_MEM(ADDR, DATA) logic [31:0] instrs [0:58-1]; assign DATA = instrs[ADDR[$clog2($size(instrs)) + 1 : 2]]; assign instrs = '{{12'b10101, 5'd0, 3'b000, 5'd1, 7'b0010011}, {12'b111, 5'd0, 3'b000, 5'd2, 7'b0010011}, {12'b111111111100, 5'd0, 3'b000, 5'd3, 7'b0010011}, {12'b1011100, 5'd1, 3'b111, 5'd5, 7'b0010011}, {12'b10101, 5'd5, 3'b100, 5'd5, 7'b0010011}, {12'b1011100, 5'd1, 3'b110, 5'd6, 7'b0010011}, {12'b1011100, 5'd6, 3'b100, 5'd6, 7'b0010011}, {12'b111, 5'd1, 3'b000, 5'd7, 7'b0010011}, {12'b11101, 5'd7, 3'b100, 5'd7, 7'b0010011}, {6'b000000, 6'b110, 5'd1, 3'b001, 5'd8, 7'b0010011}, {12'b10101000001, 5'd8, 3'b100, 5'd8, 7'b0010011}, {6'b000000, 6'b10, 5'd1, 3'b101, 5'd9, 7'b0010011}, {12'b100, 5'd9, 3'b100, 5'd9, 7'b0010011}, {7'b0000000, 5'd2, 5'd1, 3'b111, 5'd10, 7'b0110011}, {12'b100, 5'd10, 3'b100, 5'd10, 7'b0010011}, {7'b0000000, 5'd2, 5'd1, 3'b110, 5'd11, 7'b0110011}, {12'b10110, 5'd11, 3'b100, 5'd11, 7'b0010011}, {7'b0000000, 5'd2, 5'd1, 3'b100, 5'd12, 7'b0110011}, {12'b10011, 5'd12, 3'b100, 5'd12, 7'b0010011}, {7'b0000000, 5'd2, 5'd1, 3'b000, 5'd13, 7'b0110011}, {12'b11101, 5'd13, 3'b100, 5'd13, 7'b0010011}, {7'b0100000, 5'd2, 5'd1, 3'b000, 5'd14, 7'b0110011}, {12'b1111, 5'd14, 3'b100, 5'd14, 7'b0010011}, {7'b0000000, 5'd2, 5'd2, 3'b001, 5'd15, 7'b0110011}, {12'b1110000001, 5'd15, 3'b100, 5'd15, 7'b0010011}, {7'b0000000, 5'd2, 5'd1, 3'b101, 5'd16, 7'b0110011}, {12'b1, 5'd16, 3'b100, 5'd16, 7'b0010011}, {7'b0000000, 5'd1, 5'd2, 3'b011, 5'd17, 7'b0110011}, {12'b0, 5'd17, 3'b100, 5'd17, 7'b0010011}, {12'b10101, 5'd2, 3'b011, 5'd18, 7'b0010011}, {12'b0, 5'd18, 3'b100, 5'd18, 7'b0010011}, {20'b00000000000000000000, 5'd19, 7'b0110111}, {12'b1, 5'd19, 3'b100, 5'd19, 7'b0010011}, {6'b010000, 6'b1, 5'd3, 3'b101, 5'd20, 7'b0010011}, {12'b111111111111, 5'd20, 3'b100, 5'd20, 7'b0010011}, {7'b0000000, 5'd1, 5'd3, 3'b010, 5'd21, 7'b0110011}, {12'b0, 5'd21, 3'b100, 5'd21, 7'b0010011}, {12'b1, 5'd3, 3'b010, 5'd22, 7'b0010011}, {12'b0, 5'd22, 3'b100, 5'd22, 7'b0010011}, {7'b0100000, 5'd2, 5'd1, 3'b101, 5'd23, 7'b0110011}, {12'b1, 5'd23, 3'b100, 5'd23, 7'b0010011}, {20'b00000000000000000100, 5'd4, 7'b0010111}, {6'b000000, 6'b111, 5'd4, 3'b101, 5'd24, 7'b0010011}, {12'b10000000, 5'd24, 3'b100, 5'd24, 7'b0010011}, {1'b0, 10'b0000000010, 1'b0, 8'b00000000, 5'd25, 7'b1101111}, {20'b00000000000000000000, 5'd4, 7'b0010111}, {7'b0000000, 5'd4, 5'd25, 3'b100, 5'd25, 7'b0110011}, {12'b1, 5'd25, 3'b100, 5'd25, 7'b0010011}, {12'b10000, 5'd4, 3'b000, 5'd26, 7'b1100111}, {7'b0100000, 5'd4, 5'd26, 3'b000, 5'd26, 7'b0110011}, {12'b111111110001, 5'd26, 3'b000, 5'd26, 7'b0010011}, {7'b0000000, 5'd1, 5'd2, 3'b010, 5'b00001, 7'b0100011}, {12'b1, 5'd2, 3'b010, 5'd27, 7'b0000011}, {12'b10100, 5'd27, 3'b100, 5'd27, 7'b0010011}, {12'b1, 5'd0, 3'b000, 5'd28, 7'b0010011}, {12'b1, 5'd0, 3'b000, 5'd29, 7'b0010011}, {12'b1, 5'd0, 3'b000, 5'd30, 7'b0010011}, {1'b0, 10'b0000000000, 1'b0, 8'b00000000, 5'd0, 7'b1101111}};

 // 
 //  Testing each instruction 
 // 
 // Some constant values to use as operands.
 //(ADDI, x1, x0, 10101)           // An operand value of 21.
 //(ADDI, x2, x0, 111)             // An operand value of 7.
 //(ADDI, x3, x0, 111111111100)    // An operand value of -4.
 // Execute one of each instruction, XORing subtracting (via ADDI) the expected value.
 // ---ANDI---:
 //(ANDI, x5, x1, 1011100)
 //(XORI, x5, x5, 10101)
 // ---ORI---:
 //(ORI, x6, x1, 1011100)
 //(XORI, x6, x6, 1011100)
 // ---ADDI---:
 //(ADDI, x7, x1, 111)
 //(XORI, x7, x7, 11101)
 // ---SLLI---:
 //(SLLI, x8, x1, 110)
 //(XORI, x8, x8, 10101000001)
 // ---SRLI---:
 //(SRLI, x9, x1, 10)
 //(XORI, x9, x9, 100)
 // ---AND---:
 //(AND, r10, x1, x2)
 //(XORI, x10, x10, 100)
 // ---OR---:
 //(OR, x11, x1, x2)
 //(XORI, x11, x11, 10110)
 // ---XOR---:
 //(XOR, x12, x1, x2)
 //(XORI, x12, x12, 10011)
 // ---ADD---:
 //(ADD, x13, x1, x2)
 //(XORI, x13, x13, 11101)
 // ---SUB---:
 //(SUB, x14, x1, x2)
 //(XORI, x14, x14, 1111)
 // ---SLL---:
 //(SLL, x15, x2, x2)
 //(XORI, x15, x15, 1110000001)
 // ---SRL---:
 //(SRL, x16, x1, x2)
 //(XORI, x16, x16, 1)
 // ---SLTU---:
 //(SLTU, x17, x2, x1)
 //(XORI, x17, x17, 0)
 // ---SLTIU---:
 //(SLTIU, x18, x2, 10101)
 //(XORI, x18, x18, 0)
 // ---LUI---:
 //(LUI, x19, 0)
 //(XORI, x19, x19, 1)
 // ---SRAI---:
 //(SRAI, x20, x3, 1)
 //(XORI, x20, x20, 111111111111)
 // ---SLT---:
 //(SLT, x21, x3, x1)
 //(XORI, x21, x21, 0)
 // ---SLTI---:
 //(SLTI, x22, x3, 1)
 //(XORI, x22, x22, 0)
 // ---SRA---:
 //(SRA, x23, x1, x2)
 //(XORI, x23, x23, 1)
 // ---AUIPC---:
 //(AUIPC, x4, 100)
 //(SRLI, x24, x4, 111)
 //(XORI, x24, x24, 10000000)
 // ---JAL---:
 //(JAL, x25, 10)     // x25 = PC of next instr
 //(AUIPC, x4, 0)     // x4 = PC
 //(XOR, x25, x25, x4)  # AUIPC and JAR results are the same.
 //(XORI, x25, x25, 1)
 // ---JALR---:
 //(JALR, x26, x4, 10000)
 //(SUB, x26, x26, x4)             // JALR PC+4 - AUIPC PC
 //(ADDI, x26, x26, 111111110001)  // - 4 instrs, + 1
 // ---SW & LW---:
 //(SW, x2, x1, 1)
 //(LW, x27, x2, 1)
 //(XORI, x27, x27, 10100)
 // Write 1 to remaining registers prior to x30 just to avoid concern.
 //(ADDI, x28, x0, 1)
 //(ADDI, x29, x0, 1)
 // Terminate with success condition (regardless of correctness of register values):
 //(ADDI, x30, x0, 1)
 //(JAL, x0, 0) // Done. Jump to itself (infinite loop). (Up to 20-bit signed immediate plus implicit 0 bit (unlike JALR) provides byte address; last immediate bit should also be 0)


// test program for BLT (need to comment test program above): 
// --testing positive and negative
// x2 = 7, x3 = -4
// (BLT, x3, x2, 0) ==> (x3 < x2) ==> x5 = 5
//`define READONLY_MEM(ADDR, DATA) logic [31:0] instrs [0:5-1]; assign DATA = instrs[ADDR[$clog2($size(instrs)) + 1 : 2]]; assign instrs = '{{12'b10101, 5'd0, 3'b000, 5'd1, 7'b0010011}, {12'b111, 5'd0, 3'b000, 5'd2, 7'b0010011}, {12'b111111111100, 5'd0, 3'b000, 5'd3, 7'b0010011}, {1'b0, 6'b000000, 5'd2, 5'd3, 3'b100, 4'b0000, 1'b0, 7'b1100011}, {12'b1011100, 5'd1, 3'b111, 5'd5, 7'b0010011}};
// (BLT, x2, x3, 0) ==> (x2 < x3) ==> x5 = 20
//`define READONLY_MEM(ADDR, DATA) logic [31:0] instrs [0:5-1]; assign DATA = instrs[ADDR[$clog2($size(instrs)) + 1 : 2]]; assign instrs = '{{12'b10101, 5'd0, 3'b000, 5'd1, 7'b0010011}, {12'b111, 5'd0, 3'b000, 5'd2, 7'b0010011}, {12'b111111111100, 5'd0, 3'b000, 5'd3, 7'b0010011}, {1'b0, 6'b000000, 5'd3, 5'd2, 3'b100, 4'b0000, 1'b0, 7'b1100011}, {12'b1011100, 5'd1, 3'b111, 5'd5, 7'b0010011}};
// --testing negative and negative
// x2 = -3, x3 = -4
// (BLT, x3, x2, 0) ==> (x3 < x2) ==> x5 = 5
//`define READONLY_MEM(ADDR, DATA) logic [31:0] instrs [0:5-1]; assign DATA = instrs[ADDR[$clog2($size(instrs)) + 1 : 2]]; assign instrs = '{{12'b10101, 5'd0, 3'b000, 5'd1, 7'b0010011}, {12'b111111111101, 5'd0, 3'b000, 5'd2, 7'b0010011}, {12'b111111111100, 5'd0, 3'b000, 5'd3, 7'b0010011}, {1'b0, 6'b000000, 5'd2, 5'd3, 3'b100, 4'b0000, 1'b0, 7'b1100011}, {12'b1011100, 5'd1, 3'b111, 5'd5, 7'b0010011}};
// (BLT, x2, x3, 0) ==> (x2 < x3) ==> x5 = 20
//`define READONLY_MEM(ADDR, DATA) logic [31:0] instrs [0:5-1]; assign DATA = instrs[ADDR[$clog2($size(instrs)) + 1 : 2]]; assign instrs = '{{12'b10101, 5'd0, 3'b000, 5'd1, 7'b0010011}, {12'b111111111101, 5'd0, 3'b000, 5'd2, 7'b0010011}, {12'b111111111100, 5'd0, 3'b000, 5'd3, 7'b0010011}, {1'b0, 6'b000000, 5'd3, 5'd2, 3'b100, 4'b0000, 1'b0, 7'b1100011}, {12'b1011100, 5'd1, 3'b111, 5'd5, 7'b0010011}};


  module core(
        input clk, 
        input reset, 
        output reg [7:0] dmem_result,
        output reg [32-1:0] xreg_out [31:0],   // use these 2 outputs only for Simulation, 
        output reg [32-1:0] dmem_out [31:0]    // comment them when running Implementation
   );


genvar dmem, xreg;


//
// Signals declared top-level.
//

// For $br_tgt_pc.
logic [31:0] br_tgt_pc;

// For $dec_bits.
logic [10:0] dec_bits;

// For $dmem_addr.
logic [$clog2(32)-1:0] dmem_addr;

// For $dmem_rd_en.
logic dmem_rd_en;

// For $dmem_wr_data.
logic [32-1:0] dmem_wr_data;

// For $dmem_wr_en.
logic dmem_wr_en;

// For $funct3.
logic [2:0] funct3;

// For $funct3_valid.
logic funct3_valid;

// For $funct7.
logic [6:0] funct7;

// For $imm.
logic [31:0] imm;

// For $imm_valid.
logic imm_valid;

// For $instr.
logic [31:0] instr;

// For $is_add.
logic is_add;

// For $is_addi.
logic is_addi;

// For $is_and.
logic is_and;

// For $is_andi.
logic is_andi;

// For $is_auipc.
logic is_auipc;

// For $is_b_instr.
logic is_b_instr;

// For $is_beq.
logic is_beq;

// For $is_bge.
logic is_bge;

// For $is_bgeu.
logic is_bgeu;

// For $is_blt.
logic is_blt;

// For $is_bltu.
logic is_bltu;

// For $is_bne.
logic is_bne;

// For $is_i_instr.
logic is_i_instr;

// For $is_j_instr.
logic is_j_instr;

// For $is_jal.
logic is_jal;

// For $is_jalr.
logic is_jalr;

// For $is_load.
logic is_load;

// For $is_lui.
logic is_lui;

// For $is_or.
logic is_or;

// For $is_ori.
logic is_ori;

// For $is_r_instr.
logic is_r_instr;

// For $is_s_instr.
logic is_s_instr;

// For $is_sll.
logic is_sll;

// For $is_slli.
logic is_slli;

// For $is_slt.
logic is_slt;

// For $is_slti.
logic is_slti;

// For $is_sltiu.
logic is_sltiu;

// For $is_sltu.
logic is_sltu;

// For $is_sra.
logic is_sra;

// For $is_srai.
logic is_srai;

// For $is_srl.
logic is_srl;

// For $is_srli.
logic is_srli;

// For $is_sub.
logic is_sub;

// For $is_u_instr.
logic is_u_instr;

// For $is_xor.
logic is_xor;

// For $is_xori.
logic is_xori;

// For $jalr_tgt_pc.
logic [31:0] jalr_tgt_pc;

// For $ld_data.
logic [32-1:0] ld_data;

// For $next_pc.
logic [31:0] next_pc,
             next_pc_a1;

// For $opcode.
logic [6:0] opcode;

// For $pc.
logic [31:0] pc;

// For $rd.
logic [4:0] rd;

// For $rd_valid.
logic rd_valid;

// For $reset.
logic reset_a0;

// For $result.
logic [31:0] result;

// For $rf_rd_en1.
logic rf_rd_en1;

// For $rf_rd_en2.
logic rf_rd_en2;

// For $rf_rd_index1.
logic [$clog2(32)-1:0] rf_rd_index1;

// For $rf_rd_index2.
logic [$clog2(32)-1:0] rf_rd_index2;

// For $rf_wr_data.
logic [32-1:0] rf_wr_data;

// For $rf_wr_en.
logic rf_wr_en;

// For $rf_wr_index.
logic [$clog2(32)-1:0] rf_wr_index;

// For $rs1.
logic [4:0] rs1;

// For $rs1_valid.
logic rs1_valid;

// For $rs2.
logic [4:0] rs2;

// For $rs2_valid.
logic rs2_valid;

// For $sext_src1.
logic [63:0] sext_src1;

// For $sltiu_rslt.
logic [31:0] sltiu_rslt;

// For $sltu_rslt.
logic [31:0] sltu_rslt;

// For $sra_rslt.
logic [63:0] sra_rslt;

// For $srai_rslt.
logic [63:0] srai_rslt;

// For $src1_value.
logic [32-1:0] src1_value;

// For $src2_value.
logic [32-1:0] src2_value;

// For $taken_br.
logic taken_br;

// For /dmem$value.
logic [32-1:0] Dmem_value_n1 [31:0],
               Dmem_value_a0 [31:0];

// For /xreg$value.
logic [32-1:0] Xreg_value_n1 [31:0],
               Xreg_value_a0 [31:0];




generate

   // For $next_pc.
   always_ff @(posedge clk) next_pc_a1[31:0] <= next_pc[31:0];


   //
   // Scope: /dmem[31:0]
   //
   for (dmem = 0; dmem <= 31; dmem++) begin : L1gen_Dmem
      // For $value.
      always_ff @(posedge clk) Dmem_value_a0[dmem][32-1:0] <= Dmem_value_n1[dmem][32-1:0];

   end

   //
   // Scope: /xreg[31:0]
   //
   for (xreg = 0; xreg <= 31; xreg++) begin : L1gen_Xreg
      // For $value.
      always_ff @(posedge clk) Xreg_value_a0[xreg][32-1:0] <= Xreg_value_n1[xreg][32-1:0];

   end
   


endgenerate



generate 
   
   // ---------- (1) PC -------------------------------------
   assign reset_a0 = reset;
   assign pc[31:0] = next_pc_a1;
   assign next_pc[31:0] = reset_a0 ? 32'b0 :
                          taken_br ? br_tgt_pc :
                          is_jal ? br_tgt_pc :
                          is_jalr ? jalr_tgt_pc :
                          pc + 32'd4;
   // ---------- (2) IMEM -----------------------------------
   `READONLY_MEM(pc, instr[31:0]);
   
   // ---------- (3) DECODE/INSTR_TYPE ----------------------
   assign is_u_instr = instr[6:2] == 5'b00101 ||
                       instr[6:2] == 5'b01101;
   // or: $is_u_instr = $instr[6:2] ==? 5'b0x101;             
   assign is_i_instr = instr[6:2] == 5'b00000 ||
                       instr[6:2] == 5'b00001 ||
                       instr[6:2] == 5'b00100 ||
                       instr[6:2] == 5'b00110 ||
                       instr[6:2] == 5'b11001;
   
   assign is_r_instr = instr[6:2] == 5'b01011 ||
                       instr[6:2] == 5'b01100 ||
                       instr[6:2] == 5'b01110 ||
                       instr[6:2] == 5'b10100;
       
   assign is_s_instr = instr[6:2] == 5'b01000 ||
                       instr[6:2] == 5'b01001;
   
   assign is_b_instr = instr[6:2] == 5'b11000;
   
   assign is_j_instr = instr[6:2] == 5'b11011;
   
   // extracting fields from instructions
   assign funct7[6:0] = instr[31:25];
   assign rs2[4:0] = instr[24:20];
   assign rs1[4:0] = instr[19:15];
   assign funct3[2:0] = instr[14:12];
   assign rd[4:0] = instr[11:7];
   assign opcode[6:0] = instr[6:0];
   
   assign rs2_valid = is_r_instr || is_s_instr || is_b_instr;
   assign rs1_valid = is_r_instr || is_s_instr || is_b_instr || is_i_instr;
   assign rd_valid = is_r_instr || is_i_instr || is_u_instr || is_j_instr;
   assign imm_valid = is_b_instr || is_i_instr || is_u_instr || is_j_instr || is_s_instr;
   assign funct3_valid = is_r_instr || is_i_instr || is_s_instr || is_b_instr;
   //$funct7_valid = $is_r_instr;

   
   // extracting immediate values
   assign imm[31:0] = is_i_instr ? {{21{instr[31]}}, instr[30:20]} :
                      is_s_instr ? {{21{instr[31]}}, instr[30:25], instr[11:7]} :
                      is_b_instr ? {{20{instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0} :
                      is_u_instr ? {instr[31:12], 12'b0} :
                      is_j_instr ? {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0} :
                      32'b0; // default
   
   // decoding instructions
   assign dec_bits[10:0] = {funct7[5],funct3,opcode}; // in table:
   //                       funct7|funct3|opcode
   assign is_beq  = dec_bits ==? 11'bx0001100011; // x -> $funct7 not used for BEQ instruction (look at the table)
   assign is_bne  = dec_bits ==? 11'bx0011100011;
   assign is_blt  = dec_bits ==? 11'bx1001100011;
   assign is_bge  = dec_bits ==? 11'bx1011100011;
   assign is_bltu = dec_bits ==? 11'bx1101100011;
   assign is_bgeu = dec_bits ==? 11'bx1111100011;
   assign is_addi = dec_bits ==? 11'bx0000010011;
   assign is_add  = dec_bits ==? 11'b00000110011;
   
   assign is_lui   = dec_bits ==? 11'bxxxx0110111;
   assign is_auipc = dec_bits ==? 11'bxxxx0010111;
   assign is_jal   = dec_bits ==? 11'bxxxx1101111;
   assign is_jalr  = dec_bits ==? 11'bx0001100111;
   
   assign is_slti  = dec_bits ==? 11'bx0100010011;
   assign is_sltiu = dec_bits ==? 11'bx0110010011;
   assign is_xori  = dec_bits ==? 11'bx1000010011;
   assign is_ori   = dec_bits ==? 11'bx1100010011;
   assign is_andi  = dec_bits ==? 11'bx1110010011;
   assign is_slli  = dec_bits ==? 11'b00010010011;
   assign is_srli  = dec_bits ==? 11'b01010010011;
   assign is_srai  = dec_bits ==? 11'b11010010011;
   assign is_sub   = dec_bits ==? 11'b10000110011;
   assign is_sll   = dec_bits ==? 11'b00010110011;
   assign is_slt   = dec_bits ==? 11'b00100110011;
   assign is_sltu  = dec_bits ==? 11'b00110110011;
   assign is_xor   = dec_bits ==? 11'b01000110011;
   assign is_srl   = dec_bits ==? 11'b01010110011;
   assign is_sra   = dec_bits ==? 11'b11010110011;
   assign is_or    = dec_bits ==? 11'b01100110011;
   assign is_and   = dec_bits ==? 11'b01110110011;
   
   // this implementation treats all loads and all stores the same
   assign is_load  = opcode == 7'b0000011;
   // $is_s_instr already identifies stores
   
   
   
   // ---------- (5) ALU ---------------------------------------
   
   // SLTU and SLTI (set if less than, unsigned) results
   assign sltu_rslt[31:0] = {31'b0, src1_value < src2_value};
   assign sltiu_rslt[31:0] = {31'b0, src1_value < imm};
   
   // SRA and SRAI (shift right, arithmetic) results
   //   sign-extended src1
   assign sext_src1[63:0] = { {32{src1_value[31]}}, src1_value };
   //   64-bit sign-extended results, to be truncated
   assign sra_rslt[63:0] = sext_src1 >> src2_value[4:0];
   assign srai_rslt[63:0] = sext_src1 >> imm[4:0];
   
   // exit of ALU == $result
   assign result[31:0] = is_addi ? src1_value + imm :
                         is_add ? src1_value + src2_value :
                         is_andi ? src1_value & imm :
                         is_ori ? src1_value | imm :
                         is_xori ? src1_value ^ imm :
                         is_slli ? src1_value << imm[5:0] :
                         is_srli ? src1_value >> imm[5:0] :
                         is_and ? src1_value & src2_value :
                         is_or ? src1_value | src2_value :
                         is_xor ? src1_value ^ src2_value :
                         is_sub ? src1_value - src2_value :
                         is_sll ? src1_value << src2_value[4:0] :
                         is_srl ? src1_value >> src2_value[4:0] :
                         is_sltu ? sltu_rslt :
                         is_sltiu ? sltiu_rslt :
                         is_lui ? {imm[31:12], 12'b0} :
                         is_auipc ? pc + imm :
                         is_jal ? pc + 32'd4 :
                         is_jalr ? pc + 32'd4 :
                         is_slt ? ((src1_value[31] == src2_value[31]) ? sltu_rslt : {31'b0, src1_value[31]}) :
                         is_slti ? ((src1_value[31] == imm[31]) ? sltiu_rslt : {31'b0, src1_value[31]}) :
                         is_sra ? sra_rslt[31:0] :
                         is_srai ? srai_rslt[31:0] :
                         is_load ? src1_value + imm :
                         is_s_instr ? src1_value + imm :
                         32'b0;
   // writing $result back in destination register (rd) if the instruction has a valid rd
   // --all done through (6)
   //$rf_wr_en = $rd_valid && ($rd != 5'b0);
   //$rf_wr_index[4:0] = $rd;
   //$rf_wr_data[31:0] = $result; 
   // ...

   // conditional branching logic
   assign taken_br = is_beq ? (src1_value == src2_value) :
                     is_bne ? (src1_value != src2_value) :
                     is_blt ? ((src1_value < src2_value) ^ (src1_value[31] != src2_value[31])) :
                     is_bge ? ((src1_value >= src2_value) ^ (src1_value[31] != src2_value[31])) :
                     is_bltu ? (src1_value < src2_value) :
                     is_blt ? (src1_value < src2_value) :
                     is_bgeu ? (src1_value >= src2_value) :
                     1'b0;
   
   assign br_tgt_pc[31:0] = pc + imm;
   
   // jumping
   assign jalr_tgt_pc[31:0] = src1_value + imm;
   
   // ---------- (4)(6) REGISTER FILE ------------------------------
   
      // Register File Read (4)
      assign rf_rd_en1 = rs1_valid;
      assign rf_rd_index1[$clog2(32)-1:0] = rs1;
      
      assign rf_rd_en2 = rs2_valid;
      assign rf_rd_index2[$clog2(32)-1:0] = rs2;
       
      assign src1_value[32-1:0]  =  rf_rd_en1 ? Xreg_value_a0[rf_rd_index1] : 'X;
      assign src2_value[32-1:0]  =  rf_rd_en2 ? Xreg_value_a0[rf_rd_index2] : 'X;
      
      // Register File Write (6)
      assign rf_wr_en = rd_valid && (rd != 5'b0);
      assign rf_wr_index[$clog2(32)-1:0]  = rd;
      assign rf_wr_data[32-1:0] = is_load ? ld_data : result;
          
      for (xreg = 0; xreg <= 31; xreg++) begin : L1_Xreg //_/xreg

         // For $wr.
         logic L1_wr;

         assign L1_wr = rf_wr_en && (rf_wr_index == xreg);
         assign Xreg_value_n1[xreg][32-1:0] = reset_a0 ? xreg :
                                              L1_wr ? rf_wr_data :
                                              Xreg_value_a0[xreg][32-1:0];
      end
      


   // ---------- (7) DMEM ----------------------
  
      // get address for load/store
      assign dmem_addr[$clog2(32)-1:0] = result[6:2];
      
      // Loading from DMem
      assign dmem_rd_en = is_load;
      assign ld_data[32-1:0] = dmem_rd_en ? Dmem_value_a0[dmem_addr] : 'X;
      
      // Storing into DMem
      assign dmem_wr_en = is_s_instr;     
      assign dmem_wr_data[32-1:0] = src2_value;
                 
      for (dmem = 0; dmem <= 31; dmem++) begin : L1_Dmem //_/dmem

         // For $wr.
         logic L1_wr;

         assign L1_wr = dmem_wr_en && (dmem_addr == dmem);
         assign Dmem_value_n1[dmem][32-1:0] = reset_a0 ? 0 :
                                              L1_wr ? dmem_wr_data :
                                              Dmem_value_a0[dmem][32-1:0];
      end
      
   
      
      //-------------------------------------------------------------------------
      
      // for FPGA output: Dmem[2] should have value of 'h15 ('d21)
      //
       always_ff @(posedge clk) begin
            if (Dmem_value_a0[2] == 21)
                dmem_result = 'h15;           
       end
       
       // for simulation output of all registers
       always_ff @(posedge clk) begin
           if (Xreg_value_a0[5] != 'b0)
                xreg_out = Xreg_value_a0;          
       end
       
       // for simulation output of whole Dmem
       always_ff @(posedge clk) begin
             dmem_out = Dmem_value_a0;          
       end
       


endgenerate


   endmodule
