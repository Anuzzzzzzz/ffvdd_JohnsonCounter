class jc_cov;
 transaction trans = new();
covergroup cov_inst;
option.per_instance = 1;

Q: coverpoint trans.q {bins q1={0,255};}
endgroup

function new();
    cov_inst = new;
endfunction

task main;
    cov_inst.sample();
endtask
endclass
