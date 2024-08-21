 //------------------------------------------------------------------------------
 // Project      : ALU 
 // File Name    : alu_monitor_1.sv
 // Developers   : T5
 // Created Date : 2024
 // Version      : V1.0
 //------------------------------------------------------------------------------
// Copyright    : 2024(c) Manipal Center of Excellence. All rights reserved. 
 //------------------------------------------------------------------------------
 
class alu_monitor_1 extends uvm_monitor;
    `uvm_component_utils(alu_monitor_1)

    function new(string name = "alu_monitor_1",uvm_component parent=null);
        super.new(name,parent);
    endfunction

    // Additional implementation details for uvm_component go here

endclass
