 //------------------------------------------------------------------------------
 // Project      : ALU 
 // File Name    : alu_driver.sv
 // Developers   : T5
 // Created Date : 2024
 // Version      : V1.0
 //------------------------------------------------------------------------------
 // Copyright    : 2024(c) Manipal Center of Excellence. All rights reserved.
 //------------------------------------------------------------------------------
 
class alu_driver extends uvm_driver;
    `uvm_uvm_component_utils(alu_driver)

    function new(string name = "alu_driver",uvm_component parent=null);
        super.new(name,parent);
    endfunction

    // Additional implementation details for uvm_component go here

endclass
