module tb;
reg clk;
reg rst;
reg [3:0] req;
wire [3:0] grant;
code dut (
    .clk(clk),
    .rst(rst),
    .req(req),
    .grant(grant)
);
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $dumpfile("arbiter.vcd");
    $dumpvars(0, tb);

    $monitor($time, " ns | req=%b | grant=%b | state=%d", req, grant, dut.present_state);
    rst = 0; req = 4'b0000;
    #12;
    rst = 1;
    req = 4'b0001;
    #40;

    // (40 - 80ns) req[0] and req[1] active → ping-pong
    req = 4'b0011;
    #40;

    // (80 - 120ns) req[0], req[1], req[2] active → rotates 0→1→2→0→...
    req = 4'b0111;
    #40;

    // (120 - 160ns) All requesting → rotates 0→1→2→3→...
    req = 4'b1111;
    #40;

    // (160 - 200ns) Only req[3]
    req = 4'b1000;
    #40;

    // (200 - 240ns) req[1] and req[3] → alternates 1↔3
    req = 4'b1010;
    #40;

    // (240+) No one requesting → idle
    req = 4'b0000;
    #40;

    $finish;
end

endmodule