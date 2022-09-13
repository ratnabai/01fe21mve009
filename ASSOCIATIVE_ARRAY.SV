module associative_array;
  int a_array[*];
  int index;
  initial begin
    repeat(3)begin
      a_array[index]=index*2;
              index=index+4;
              end
              $display("\t Number of entries in a_array is %0d",a_array.num());
              $display("-----Associative array a_array entries and values are---");
              foreach(a_array[i])$display("\ta_array{%0d]\t=%0d",i,a_array[i]);
              $display ("----------------------------------");
              a_array.first(index);
              $display("\firstentry is \ta_array[%0d]=%0d",index,a_array[index]);
               a_array.last(index);
              $display("\lastentry is \ta_array[%0d]=%0d",index,a_array[index]);
              end
              endmodule
              
              
