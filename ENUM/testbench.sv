module enum_datatype;
  //enum {Blue,Green,Red,Yellow,Black,White}Colours;
  //enum {Blue=0,Green,Red=4,Yellow,Black=10,White}Colours;
  enum {Blue=0,Green,Red=4,Yellow,Black=5,White}Colours;
  integer i;
  initial begin
    Colours = Colours.first;
    for(i=0;i<6;i++) begin
      $display("Colours :: Value of %0s \t is = %0d", Colours.name, Colours);
      Colours = Colours.next;
  end
  end
endmodule
