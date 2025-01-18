module blinky(
    input wire clk,      // Clock input
    output reg led       // LED output
);

    reg [24:0] counter;  // 25-bit counter

    always @(posedge clk) begin
        counter <= counter + 1;
        led <= counter[24];  // Toggle LED every 2^24 clock cycles
    end

endmodule
