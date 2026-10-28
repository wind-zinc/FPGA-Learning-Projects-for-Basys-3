`timescale 1ns / 1ps

module vc_ctrl(
input logic ana_o,
input logic clk,
input logic btn_u18,
output logic led
    );
    
    logic rst;
    logic [30:0] count;
    parameter shift = 300000000;
    
    assign rst = ~btn_u18;
    
    assign led = (curr_state == KEEP) ? 1 : 0;
    
    typedef enum logic [1:0] {
    IDLE,
    KEEP,
    OFF
    } state_t;
    
	state_t curr_state, next_state;
		
    always_ff @(posedge clk or negedge rst) begin
        if (!rst) 
            curr_state <= IDLE;        
        else 
            curr_state <= next_state;
    end
    
	always_comb begin
        next_state = curr_state;
        case (curr_state)
            IDLE: begin
            		if (ana_o)
                    next_state = KEEP;
            end

            KEEP: begin
                if (count == shift) 
                    next_state = OFF; 
                else
                		next_state = KEEP;              	
            end

            OFF: begin
                    next_state = IDLE; 
            end
            
            default: next_state = IDLE;
        endcase
    end
    
    always_ff@(posedge clk or negedge rst) begin
    	if (~rst) begin
    		count <= 31'b0;
    	end
    	else begin
    		case (curr_state) 
    			IDLE: begin
    				count <= 31'b0;
    			end
    			
    			KEEP: begin
    				if (~ana_o) begin
    				count <= count + 1'b1;
    			end
    				else begin
    					count <= 31'b0;
    				end
    			end
    			
    			OFF: begin
    				count <= 31'b0;
    			end
    		endcase
    	end
    end
    	
endmodule
