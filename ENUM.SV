module enum_datatype;
	  enum{red,green,blue,yellow,white,black} colors;
	  initial begin
	    colors=colors.first;
	    for(int i=0;i<6;i++)begin
	      $display("colours::value of%0s\t is=%0d",colors,name,colors);
	      colors=colors.next;
	    end 
	  end
	  endmodule


