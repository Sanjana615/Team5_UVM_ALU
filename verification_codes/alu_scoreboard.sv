 //------------------------------------------------------------------------------
 // Project      : ALU 
 // File Name    : alu_scoreboard.sv
 // Developers   : T5
 // Created Date : 2024
 // Version      : V1.0
 //------------------------------------------------------------------------------
 // Copyright    : 2024(c) Manipal Center of Excellence. All rights reserved.
 //------------------------------------------------------------------------------
 
class alu_scoreboard extends uvm_scoreboard;
    `uvm_uvm_component_utils(alu_scoreboard)

    function new(string name = "alu_scoreboard",uvm_component parent=null);
        super.new(name,parent);
    endfunction

    // Additional implementation details for uvm_component go here

endclass
