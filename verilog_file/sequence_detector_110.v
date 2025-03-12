// Code your design here
module sequence_detector_110(clk_i,reset_i,seq_in,detect);
  
  
  parameter S0=2'b00;
  parameter S1=2'b10;
  parameter S2=2'b01;
  parameter S3=2'b11;
  
  
  input clk_i,reset_i,seq_in;
  output reg detect;
  
  reg [1:0] current_state,next_state;
  
  always@(posedge clk_i)
    begin
      if(reset_i==1)
        current_state <= 0;
      else
        current_state <= next_state;
    end
  always@(*)
    begin
      case(current_state)
        S0:begin
          detect=0;
          if(seq_in==1)
            next_state = S1;
          else
            next_state = S0;
        end
        S1:begin
          detect=0;
          if(seq_in==1)
            next_state=S2;
          else
            next_state=S0;
          end
        S2:begin
            detect=0;
          if(seq_in==0)
            next_state =S3;
          else
            next_state=S2;
        end
        S3: begin
           detect=1;
          if(seq_in==1)
            next_state =S1;
          else 
            next_state=S0;
        end
        default:begin
            detect=0;
            next_state=S0;
        end
      endcase
               
    end
  
endmodule
