module queue_array;
  bit [31:0]queue_1[$];
  int ivar;
  initial begin
    queue_1={0,1,2,3};
    //size method
    $display("\tQueue_1 size is %0d",queue_1.size());
    //push front method
    queue_1.push_front(22);
  $display("\tQueue_1 size after push_front is %0d",queue_1.size());
    //Push back method
    queue_1.push_back(44);
    $display("\tQueue_1 size after push_back is %0d",queue_1.size());
    //pop front method
    ivar=queue_1.pop_front();
    $display("\t queue_1.pop_front value is%0d",ivar);
    //pop back method
    ivar=queue_1.pop_back();
    $display("\t queue_1.pop_back value is%0d",ivar);  
  end
endmodule
    
