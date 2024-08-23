 //------------------------------------------------------------------------------
 // Project      : ALU 
 // File Name    : alu_driver.sv
 // Developers   : T5
 // Created Date : 2024
 // Version      : V1.0
 //------------------------------------------------------------------------------
 // Copyright    : 2024(c) Manipal Center of Excellence. All rights reserved.
 //-------------------------------------------------------------------------------
 

class alu_driver extends uvm_driver;
    `uvm_uvm_component_utils(alu_driver)
  
  alu_sequence_item seq_item;
  virtual alu_interface.DRV drv_if;
  
    function new(string name = "alu_driver",uvm_component parent=null);
        super.new(name,parent);
    endfunction

     function void build_phase(uvm_phase phase);
        seq_item = alu_sequence_item::type_id::create("trans");
       if(!uvm_config_db#(virtual alu_interface)::get(this, "*", "vif", drv_if))
            `uvm_fatal(get_type_name(), "Interface not found")
    endfunction
         
         task run_phase(uvm_phase phase);
        forever begin
            seq_item_port.get_next_item(trans);
            drive();
          `uvm_info(get_type_name(), $sformatf("DRIVED PACKET:: %s", seq_item.convert2string), UVM_MEDIUM);
            seq_item_port.item_done();
        end
    endtask
       
        task drive();
        @(drv_if.drv_cb) begin
            drv_if.drv_cb.OPA <= trans.OPA;
            drv_if.drv_cb.OPB <= trans.OPB;
            drv_if.drv_cb.cin <= trans.cin;
            drv_if.drv_cb.ce <= trans.ce;
            drv_if.drv_cb.mode <= trans.mode;
            drv_if.drv_cb.cmd <= trans.cmd;
            @(drv_if.drv_cb);
        end
    endtask
    

endclassclass alu_driver extends uvm_driver;
    `uvm_uvm_component_utils(alu_driver)
  
  alu_sequence_item seq_item;
  virtual alu_interface.DRV drv_if;
  
    function new(string name = "alu_driver",uvm_component parent=null);
        super.new(name,parent);
    endfunction

     function void build_phase(uvm_phase phase);
        seq_item = alu_sequence_item::type_id::create("trans");
       if(!uvm_config_db#(virtual alu_interface)::get(this, "*", "vif", drv_if))
            `uvm_fatal(get_type_name(), "Interface not found")
    endfunction
         
         task run_phase(uvm_phase phase);
        forever begin
            seq_item_port.get_next_item(trans);
            drive();
          `uvm_info(get_type_name(), $sformatf("DRIVED PACKET:: %s", seq_item.convert2string), UVM_MEDIUM);
            seq_item_port.item_done();
        end
    endtask
       
        task drive();
        @(drv_if.drv_cb) begin
            drv_if.drv_cb.OPA <= trans.OPA;
            drv_if.drv_cb.OPB <= trans.OPB;
            drv_if.drv_cb.cin <= trans.cin;
            drv_if.drv_cb.ce <= trans.ce;
            drv_if.drv_cb.mode <= trans.mode;
            drv_if.drv_cb.cmd <= trans.cmd;
            @(drv_if.drv_cb);
        end
    endtask
    

endclass
