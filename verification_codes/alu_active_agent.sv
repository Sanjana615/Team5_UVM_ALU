 //------------------------------------------------------------------------------
 // Project      : ALU 
 // File Name    : alu_active_agent.sv
 // Developers   : T5
 // Created Date : 2024
 // Version      : V1.0
 //------------------------------------------------------------------------------
 // Copyright    : 2024(c) Manipal Center of Excellence. All rights reserved.
 //------------------------------------------------------------------------------
 
class alu_active_agent extends uvm_agent;
    `uvm_component_utils(alu_active_agent)

    function new(string name = "alu_active_agent",uvm_component parent=null);
        super.new(name,parent);
    endfunction

    // Additional implementation details for uvm_component go here

endclass
