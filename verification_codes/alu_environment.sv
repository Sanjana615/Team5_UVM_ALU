 //------------------------------------------------------------------------------
 // Project      : ALU 
 // File Name    : alu_environment.sv
 // Developers   : T5
 // Created Date : 2024
 // Version      : V1.0
 //------------------------------------------------------------------------------
 // Copyright    : 2024(c) Manipal Center of Excellence. All rights reserved.
 //------------------------------------------------------------------------------
 
class alu_environment extends uvm_environment;
    `uvm_uvm_component_utils(alu_environment)

    function new(string name = "alu_environment",uvm_component parent=null);
        super.new(name,parent);
    endfunction

    // Additional implementation details for uvm_component go here

endclass
