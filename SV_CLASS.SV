class sv_class;
  int x;
 // method -1
  task set(int i);
    x=i;
  endtask
    function int get();
    return x;
  endfunction
endclass
module sv_class_ex;
  initial begin
   sv_class class_1=new();
  sv_class class_2=new();
    class_1=new();
    class_1.set(10);
    class_2.set(20);
    $display("\tclass_1::value of x=%0d",class_1.get());
    $display("\tclass_2::value of x=%0d",class_2.get());
  end 
endmodule

