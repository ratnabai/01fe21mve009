// Code your testbench here
	// or browse Examples
	class packet;
	  bit[31:0]addr;
	  bit[31:0]data;
	  bit write;
	  string pkt_type;
	  function new(bit[31:0]addr,data,bit write,string pkt_type);
	    addr=addr;
	    data=data;
	   write=write;
	    pkt_type=pkt_type;
	  endfunction
	  function void display();
	    $display("---------------");
	    $display("\taddr=%0h",addr);
	    $display("\tdata=%0h",data);
	    $display("\twrite=%0h",write);
	    $display("\tpkt_type=%0s",pkt_type);
	    $display("-------------------");
	             endfunction
	             endclass
	             module sv_constructor;
	               packet pkt;
	               initial begin
	                 pkt=new(32'h10,32'hFF,1,"GOOD_PKT");
	                 pkt.display();
	               end
	             endmodule

