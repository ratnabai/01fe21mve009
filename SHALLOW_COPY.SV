// Code your testbench here
	// or browse Examples
	class address_range;
	  bit[31:0]start_address;
	  bit[31:0]end_address;
	  function new;
	    start_adress=10;
	    end_address=50;
	  endfunction
	endclass
	//class
	class packet;
	  //class properties
	  bit[31:0]addr;
	  bit[31:0]data;
	  address_range ar;
	  //constructor
	  function new();
	    addr=32'h10;
	    dat=32'hFF;
	    ar=new();
	  endfunction
	  //method to display class properties
	  function void display();
	    $display("-----------------------------------------");
	    $display("\taddr=%0h",addr);
	    $display("\tdata=%0h",data);
	    $display("\tstart_address=%0d",ar.start_address);
	    $display("\tend_address=%0d",ar.end_address);
	    $display("----------------------------------------");
	  endfunction
	endclass
	module  shallow_copy;
	  packet pkt_1;
	  packet pkt_2;
	  initial begin
	    pkt_1=new();
	    $display("\t**** calling pkt1 display****");
	    pkt1.display();
	    pkt_2=new pkt1;
	    $display(\"t**** calling pkt2 display****");
	             pkt2.display();
	             //changing values with pkt2 handle
	             pkt2.addr=32'hAB;
	             pkt2.ar.start_address=60;
	             pkt2.ar.end_address=100;
	             //changes made with pkt2 handle will not reflect on pkt1
	    $display("\t***** calling pkt1 display****");
	                      pkt.display()
	                      $display("\t*****calling pkt2 display****");
	                      pkt2.display();
	                      end 
	                      endmodule

