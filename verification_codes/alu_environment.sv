 //------------------------------------------------------------------------------
 // Project      : ALU 
 // File Name    : alu_environment.sv
 // Developers   : T5
 // Created Date : 2024
 // Version      : V1.0
 //------------------------------------------------------------------------------
 // Copyright    : 2024(c) Manipal Center of Excellence. All rights reserved.
 //------------------------------------------------------------------------------
 

class alu_environment extends uvm_env;
 `uvm_component_utils(alu_environment)
    
    // Components
    alu_agent agnt;
    alu_scoreboard scb;
    alu_fun_cov fc;

    // Constructor:new
    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction //new()

    //  Function: build_phase
    extern function void build_phase(uvm_phase phase);
    
    //  Function: connect_phase
    extern function void connect_phase(uvm_phase phase);

    //  Function: end_of_elaboration_phase
    extern function void end_of_elaboration_phase(uvm_phase phase);  
endclass //environment extends uvm_environment

// ********************* Implementations **********************
function void alu_environment::build_phase(uvm_phase phase);
    agnt = alu_agent::type_id::create("agnt", this);
    scb = alu_scoreboard::type_id::create("scb", this);
    fc = alu_fun_cov::type_id::create("fc", this);
endfunction: build_phase

function void alu_environment::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    agnt.mon.ap.connect(scb.ap_export);
    agnt.mon.ap.connect(fc.analysis_export);
endfunction: connect_phase

function void alu_environment::end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    scb.set_report_id_action("SCB", UVM_LOG | UVM_DISPLAY);
endfunction: end_of_elaboration_phase



