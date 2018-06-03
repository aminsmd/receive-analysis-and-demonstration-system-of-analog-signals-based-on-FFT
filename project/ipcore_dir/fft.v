////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: fft.v
// /___/   /\     Timestamp: Sun Jan 21 20:51:55 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/Users/masoud/Desktop/ggg/vga_test/fpga/ipcore_dir/tmp/_cg/fft.ngc C:/Users/masoud/Desktop/ggg/vga_test/fpga/ipcore_dir/tmp/_cg/fft.v 
// Device	: 6slx9tqg144-2
// Input file	: C:/Users/masoud/Desktop/ggg/vga_test/fpga/ipcore_dir/tmp/_cg/fft.ngc
// Output file	: C:/Users/masoud/Desktop/ggg/vga_test/fpga/ipcore_dir/tmp/_cg/fft.v
// # of Modules	: 1
// Design Name	: fft
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module fft (
  clk, ce, start, unload, fwd_inv, fwd_inv_we, scale_sch_we, rfd, busy, edone, done, dv, xn_re, xn_im, scale_sch, xn_index, xk_index, xk_re, xk_im
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  input start;
  input unload;
  input fwd_inv;
  input fwd_inv_we;
  input scale_sch_we;
  output rfd;
  output busy;
  output edone;
  output done;
  output dv;
  input [7 : 0] xn_re;
  input [7 : 0] xn_im;
  input [17 : 0] scale_sch;
  output [8 : 0] xn_index;
  output [8 : 0] xk_index;
  output [7 : 0] xk_re;
  output [7 : 0] xk_im;
  
  // synthesis translate_off
  
  wire \NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/busy_i_reg2 ;
  wire \NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/run_addr_gen/done_int2 ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/done_i_reg ;
  wire \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/dv_d ;
  wire sig00000001;
  wire sig00000002;
  wire sig00000003;
  wire sig00000004;
  wire sig00000005;
  wire sig00000006;
  wire sig00000007;
  wire sig00000008;
  wire sig00000009;
  wire sig0000000a;
  wire sig0000000b;
  wire sig0000000c;
  wire sig0000000d;
  wire sig0000000e;
  wire sig0000000f;
  wire sig00000010;
  wire sig00000011;
  wire sig00000012;
  wire sig00000013;
  wire sig00000014;
  wire sig00000015;
  wire sig00000016;
  wire sig00000017;
  wire sig00000018;
  wire sig00000019;
  wire sig0000001a;
  wire sig0000001b;
  wire sig0000001c;
  wire sig0000001d;
  wire sig0000001e;
  wire sig0000001f;
  wire sig00000020;
  wire sig00000021;
  wire sig00000022;
  wire sig00000023;
  wire sig00000024;
  wire sig00000025;
  wire sig00000026;
  wire sig00000027;
  wire sig00000028;
  wire sig00000029;
  wire sig0000002a;
  wire sig0000002b;
  wire sig0000002c;
  wire sig0000002d;
  wire sig0000002e;
  wire sig0000002f;
  wire sig00000030;
  wire sig00000031;
  wire sig00000032;
  wire sig00000033;
  wire sig00000034;
  wire sig00000035;
  wire sig00000036;
  wire sig00000037;
  wire sig00000038;
  wire sig00000039;
  wire sig0000003a;
  wire sig0000003b;
  wire sig0000003c;
  wire sig0000003d;
  wire sig0000003e;
  wire sig0000003f;
  wire sig00000040;
  wire sig00000041;
  wire sig00000042;
  wire sig00000043;
  wire sig00000044;
  wire sig00000045;
  wire sig00000046;
  wire sig00000047;
  wire sig00000048;
  wire sig00000049;
  wire sig0000004a;
  wire sig0000004b;
  wire sig0000004c;
  wire sig0000004d;
  wire sig0000004e;
  wire sig0000004f;
  wire sig00000050;
  wire sig00000051;
  wire sig00000052;
  wire sig00000053;
  wire sig00000054;
  wire sig00000055;
  wire sig00000056;
  wire sig00000057;
  wire sig00000058;
  wire sig00000059;
  wire sig0000005a;
  wire sig0000005b;
  wire sig0000005c;
  wire sig0000005d;
  wire sig0000005e;
  wire sig0000005f;
  wire sig00000060;
  wire sig00000061;
  wire sig00000062;
  wire sig00000063;
  wire sig00000064;
  wire sig00000065;
  wire sig00000066;
  wire sig00000067;
  wire sig00000068;
  wire sig00000069;
  wire sig0000006a;
  wire sig0000006b;
  wire sig0000006c;
  wire sig0000006d;
  wire sig0000006e;
  wire sig0000006f;
  wire sig00000070;
  wire sig00000071;
  wire sig00000072;
  wire sig00000073;
  wire sig00000074;
  wire sig00000075;
  wire sig00000076;
  wire sig00000077;
  wire sig00000078;
  wire sig00000079;
  wire sig0000007a;
  wire sig0000007b;
  wire sig0000007c;
  wire sig0000007d;
  wire sig0000007e;
  wire sig0000007f;
  wire sig00000080;
  wire sig00000081;
  wire sig00000082;
  wire sig00000083;
  wire sig00000084;
  wire sig00000085;
  wire sig00000086;
  wire sig00000087;
  wire sig00000088;
  wire sig00000089;
  wire sig0000008a;
  wire sig0000008b;
  wire sig0000008c;
  wire sig0000008d;
  wire sig0000008e;
  wire sig0000008f;
  wire sig00000090;
  wire sig00000091;
  wire sig00000092;
  wire sig00000093;
  wire sig00000094;
  wire sig00000095;
  wire sig00000096;
  wire sig00000097;
  wire sig00000098;
  wire sig00000099;
  wire sig0000009a;
  wire sig0000009b;
  wire sig0000009c;
  wire sig0000009d;
  wire sig0000009e;
  wire sig0000009f;
  wire sig000000a0;
  wire sig000000a1;
  wire sig000000a2;
  wire sig000000a3;
  wire sig000000a4;
  wire sig000000a5;
  wire sig000000a6;
  wire sig000000a7;
  wire sig000000a8;
  wire sig000000a9;
  wire sig000000aa;
  wire sig000000ab;
  wire sig000000ac;
  wire sig000000ad;
  wire sig000000ae;
  wire sig000000af;
  wire sig000000b0;
  wire sig000000b1;
  wire sig000000b2;
  wire sig000000b3;
  wire sig000000b4;
  wire sig000000b5;
  wire sig000000b6;
  wire sig000000b7;
  wire sig000000b8;
  wire sig000000b9;
  wire sig000000ba;
  wire sig000000bb;
  wire sig000000bc;
  wire sig000000bd;
  wire sig000000be;
  wire sig000000bf;
  wire sig000000c0;
  wire sig000000c1;
  wire sig000000c2;
  wire sig000000c3;
  wire sig000000c4;
  wire sig000000c5;
  wire sig000000c6;
  wire sig000000c7;
  wire sig000000c8;
  wire sig000000c9;
  wire sig000000ca;
  wire sig000000cb;
  wire sig000000cc;
  wire sig000000cd;
  wire sig000000ce;
  wire sig000000cf;
  wire sig000000d0;
  wire sig000000d1;
  wire sig000000d2;
  wire sig000000d3;
  wire sig000000d4;
  wire sig000000d5;
  wire sig000000d6;
  wire sig000000d7;
  wire sig000000d8;
  wire sig000000d9;
  wire sig000000da;
  wire sig000000db;
  wire sig000000dc;
  wire sig000000dd;
  wire sig000000de;
  wire sig000000df;
  wire sig000000e0;
  wire sig000000e1;
  wire sig000000e2;
  wire sig000000e3;
  wire sig000000e4;
  wire sig000000e5;
  wire sig000000e6;
  wire sig000000e7;
  wire sig000000e8;
  wire sig000000e9;
  wire sig000000ea;
  wire sig000000eb;
  wire sig000000ec;
  wire sig000000ed;
  wire sig000000ee;
  wire sig000000ef;
  wire sig000000f0;
  wire sig000000f1;
  wire sig000000f2;
  wire sig000000f3;
  wire sig000000f4;
  wire sig000000f5;
  wire sig000000f6;
  wire sig000000f7;
  wire sig000000f8;
  wire sig000000f9;
  wire sig000000fa;
  wire sig000000fb;
  wire sig000000fc;
  wire sig000000fd;
  wire sig000000fe;
  wire sig000000ff;
  wire sig00000100;
  wire sig00000101;
  wire sig00000102;
  wire sig00000103;
  wire sig00000104;
  wire sig00000105;
  wire sig00000106;
  wire sig00000107;
  wire sig00000108;
  wire sig00000109;
  wire sig0000010a;
  wire sig0000010b;
  wire sig0000010c;
  wire sig0000010d;
  wire sig0000010e;
  wire sig0000010f;
  wire sig00000110;
  wire sig00000111;
  wire sig00000112;
  wire sig00000113;
  wire sig00000114;
  wire sig00000115;
  wire sig00000116;
  wire sig00000117;
  wire sig00000118;
  wire sig00000119;
  wire sig0000011a;
  wire sig0000011b;
  wire sig0000011c;
  wire sig0000011d;
  wire sig0000011e;
  wire sig0000011f;
  wire sig00000120;
  wire sig00000121;
  wire sig00000122;
  wire sig00000123;
  wire sig00000124;
  wire sig00000125;
  wire sig00000126;
  wire sig00000127;
  wire sig00000128;
  wire sig00000129;
  wire sig0000012a;
  wire sig0000012b;
  wire sig0000012c;
  wire sig0000012d;
  wire sig0000012e;
  wire sig0000012f;
  wire sig00000130;
  wire sig00000131;
  wire sig00000132;
  wire sig00000133;
  wire sig00000134;
  wire sig00000135;
  wire sig00000136;
  wire sig00000137;
  wire sig00000138;
  wire sig00000139;
  wire sig0000013a;
  wire sig0000013b;
  wire sig0000013c;
  wire sig0000013d;
  wire sig0000013e;
  wire sig0000013f;
  wire sig00000140;
  wire sig00000141;
  wire sig00000142;
  wire sig00000143;
  wire sig00000144;
  wire sig00000145;
  wire sig00000146;
  wire sig00000147;
  wire sig00000148;
  wire sig00000149;
  wire sig0000014a;
  wire sig0000014b;
  wire sig0000014c;
  wire sig0000014d;
  wire sig0000014e;
  wire sig0000014f;
  wire sig00000150;
  wire sig00000151;
  wire sig00000152;
  wire sig00000153;
  wire sig00000154;
  wire sig00000155;
  wire sig00000156;
  wire sig00000157;
  wire sig00000158;
  wire sig00000159;
  wire sig0000015a;
  wire sig0000015b;
  wire sig0000015c;
  wire sig0000015d;
  wire sig0000015e;
  wire sig0000015f;
  wire sig00000160;
  wire sig00000161;
  wire sig00000162;
  wire sig00000163;
  wire sig00000164;
  wire sig00000165;
  wire sig00000166;
  wire sig00000167;
  wire sig00000168;
  wire sig00000169;
  wire sig0000016a;
  wire sig0000016b;
  wire sig0000016c;
  wire sig0000016d;
  wire sig0000016e;
  wire sig0000016f;
  wire sig00000170;
  wire sig00000171;
  wire sig00000172;
  wire sig00000173;
  wire sig00000174;
  wire sig00000175;
  wire sig00000176;
  wire sig00000177;
  wire sig00000178;
  wire sig00000179;
  wire sig0000017a;
  wire sig0000017b;
  wire sig0000017c;
  wire sig0000017d;
  wire sig0000017e;
  wire sig0000017f;
  wire sig00000180;
  wire sig00000181;
  wire sig00000182;
  wire sig00000183;
  wire sig00000184;
  wire sig00000185;
  wire sig00000186;
  wire sig00000187;
  wire sig00000188;
  wire sig00000189;
  wire sig0000018a;
  wire sig0000018b;
  wire sig0000018c;
  wire sig0000018d;
  wire sig0000018e;
  wire sig0000018f;
  wire sig00000190;
  wire sig00000191;
  wire sig00000192;
  wire sig00000193;
  wire sig00000194;
  wire sig00000195;
  wire sig00000196;
  wire sig00000197;
  wire sig00000198;
  wire sig00000199;
  wire sig0000019a;
  wire sig0000019b;
  wire sig0000019c;
  wire sig0000019d;
  wire sig0000019e;
  wire sig0000019f;
  wire sig000001a0;
  wire sig000001a1;
  wire sig000001a2;
  wire sig000001a3;
  wire sig000001a4;
  wire sig000001a5;
  wire sig000001a6;
  wire sig000001a7;
  wire sig000001a8;
  wire sig000001a9;
  wire sig000001aa;
  wire sig000001ab;
  wire sig000001ac;
  wire sig000001ad;
  wire sig000001ae;
  wire sig000001af;
  wire sig000001b0;
  wire sig000001b1;
  wire sig000001b2;
  wire sig000001b3;
  wire sig000001b4;
  wire sig000001b5;
  wire sig000001b6;
  wire sig000001b7;
  wire sig000001b8;
  wire sig000001b9;
  wire sig000001ba;
  wire sig000001bb;
  wire sig000001bc;
  wire sig000001bd;
  wire sig000001be;
  wire sig000001bf;
  wire sig000001c0;
  wire sig000001c1;
  wire sig000001c2;
  wire sig000001c3;
  wire sig000001c4;
  wire sig000001c5;
  wire sig000001c6;
  wire sig000001c7;
  wire sig000001c8;
  wire sig000001c9;
  wire sig000001ca;
  wire sig000001cb;
  wire sig000001cc;
  wire sig000001cd;
  wire sig000001ce;
  wire sig000001cf;
  wire sig000001d0;
  wire sig000001d1;
  wire sig000001d2;
  wire sig000001d3;
  wire sig000001d4;
  wire sig000001d5;
  wire sig000001d6;
  wire sig000001d7;
  wire sig000001d8;
  wire sig000001d9;
  wire sig000001da;
  wire sig000001db;
  wire sig000001dc;
  wire sig000001dd;
  wire sig000001de;
  wire sig000001df;
  wire sig000001e0;
  wire sig000001e1;
  wire sig000001e2;
  wire sig000001e3;
  wire sig000001e4;
  wire sig000001e5;
  wire sig000001e6;
  wire sig000001e7;
  wire sig000001e8;
  wire sig000001e9;
  wire sig000001ea;
  wire sig000001eb;
  wire sig000001ec;
  wire sig000001ed;
  wire sig000001ee;
  wire sig000001ef;
  wire sig000001f0;
  wire sig000001f1;
  wire sig000001f2;
  wire sig000001f3;
  wire sig000001f4;
  wire sig000001f5;
  wire sig000001f6;
  wire sig000001f7;
  wire sig000001f8;
  wire sig000001f9;
  wire sig000001fa;
  wire sig000001fb;
  wire sig000001fc;
  wire sig000001fd;
  wire sig000001fe;
  wire sig000001ff;
  wire sig00000200;
  wire sig00000201;
  wire sig00000202;
  wire sig00000203;
  wire sig00000204;
  wire sig00000205;
  wire sig00000206;
  wire sig00000207;
  wire sig00000208;
  wire sig00000209;
  wire sig0000020a;
  wire sig0000020b;
  wire sig0000020c;
  wire sig0000020d;
  wire sig0000020e;
  wire sig0000020f;
  wire sig00000210;
  wire sig00000211;
  wire sig00000212;
  wire sig00000213;
  wire sig00000214;
  wire sig00000215;
  wire sig00000216;
  wire sig00000217;
  wire sig00000218;
  wire sig00000219;
  wire sig0000021a;
  wire sig0000021b;
  wire sig0000021c;
  wire sig0000021d;
  wire sig0000021e;
  wire sig0000021f;
  wire sig00000220;
  wire sig00000221;
  wire sig00000222;
  wire sig00000223;
  wire sig00000224;
  wire sig00000225;
  wire sig00000226;
  wire sig00000227;
  wire sig00000228;
  wire sig00000229;
  wire sig0000022a;
  wire sig0000022b;
  wire sig0000022c;
  wire sig0000022d;
  wire sig0000022e;
  wire sig0000022f;
  wire sig00000230;
  wire sig00000231;
  wire sig00000232;
  wire sig00000233;
  wire sig00000234;
  wire sig00000235;
  wire sig00000236;
  wire sig00000237;
  wire sig00000238;
  wire sig00000239;
  wire sig0000023a;
  wire sig0000023b;
  wire sig0000023c;
  wire sig0000023d;
  wire sig0000023e;
  wire sig0000023f;
  wire sig00000240;
  wire sig00000241;
  wire sig00000242;
  wire sig00000243;
  wire sig00000244;
  wire sig00000245;
  wire sig00000246;
  wire sig00000247;
  wire sig00000248;
  wire sig00000249;
  wire sig0000024a;
  wire sig0000024b;
  wire sig0000024c;
  wire sig0000024d;
  wire sig0000024e;
  wire sig0000024f;
  wire sig00000250;
  wire sig00000251;
  wire sig00000252;
  wire sig00000253;
  wire sig00000254;
  wire sig00000255;
  wire sig00000256;
  wire sig00000257;
  wire sig00000258;
  wire sig00000259;
  wire sig0000025a;
  wire sig0000025b;
  wire sig0000025c;
  wire sig0000025d;
  wire sig0000025e;
  wire sig0000025f;
  wire sig00000260;
  wire sig00000261;
  wire sig00000262;
  wire sig00000263;
  wire sig00000264;
  wire sig00000265;
  wire sig00000266;
  wire sig00000267;
  wire sig00000268;
  wire sig00000269;
  wire sig0000026a;
  wire sig0000026b;
  wire sig0000026c;
  wire sig0000026d;
  wire sig0000026e;
  wire sig0000026f;
  wire sig00000270;
  wire sig00000271;
  wire sig00000272;
  wire sig00000273;
  wire sig00000274;
  wire sig00000275;
  wire sig00000276;
  wire sig00000277;
  wire sig00000278;
  wire sig00000279;
  wire sig0000027a;
  wire sig0000027b;
  wire sig0000027c;
  wire sig0000027d;
  wire sig0000027e;
  wire sig0000027f;
  wire sig00000280;
  wire sig00000281;
  wire sig00000282;
  wire sig00000283;
  wire sig00000284;
  wire sig00000285;
  wire sig00000286;
  wire sig00000287;
  wire sig00000288;
  wire sig00000289;
  wire sig0000028a;
  wire sig0000028b;
  wire sig0000028c;
  wire sig0000028d;
  wire sig0000028e;
  wire sig0000028f;
  wire sig00000290;
  wire sig00000291;
  wire sig00000292;
  wire sig00000293;
  wire sig00000294;
  wire sig00000295;
  wire sig00000296;
  wire sig00000297;
  wire sig00000298;
  wire sig00000299;
  wire sig0000029a;
  wire sig0000029b;
  wire sig0000029c;
  wire sig0000029d;
  wire sig0000029e;
  wire sig0000029f;
  wire sig000002a0;
  wire sig000002a1;
  wire sig000002a2;
  wire sig000002a3;
  wire sig000002a4;
  wire sig000002a5;
  wire sig000002a6;
  wire sig000002a7;
  wire sig000002a8;
  wire sig000002a9;
  wire sig000002aa;
  wire sig000002ab;
  wire sig000002ac;
  wire sig000002ad;
  wire sig000002ae;
  wire sig000002af;
  wire sig000002b0;
  wire sig000002b1;
  wire sig000002b2;
  wire sig000002b3;
  wire sig000002b4;
  wire sig000002b5;
  wire sig000002b6;
  wire sig000002b7;
  wire sig000002b8;
  wire sig000002b9;
  wire sig000002ba;
  wire sig000002bb;
  wire sig000002bc;
  wire sig000002bd;
  wire sig000002be;
  wire sig000002bf;
  wire sig000002c0;
  wire sig000002c1;
  wire sig000002c2;
  wire sig000002c3;
  wire sig000002c4;
  wire sig000002c5;
  wire sig000002c6;
  wire sig000002c7;
  wire sig000002c8;
  wire sig000002c9;
  wire sig000002ca;
  wire sig000002cb;
  wire sig000002cc;
  wire sig000002cd;
  wire sig000002ce;
  wire sig000002cf;
  wire sig000002d0;
  wire sig000002d1;
  wire sig000002d2;
  wire sig000002d3;
  wire sig000002d4;
  wire sig000002d5;
  wire sig000002d6;
  wire sig000002d7;
  wire sig000002d8;
  wire sig000002d9;
  wire sig000002da;
  wire sig000002db;
  wire sig000002dc;
  wire sig000002dd;
  wire sig000002de;
  wire sig000002df;
  wire sig000002e0;
  wire sig000002e1;
  wire sig000002e2;
  wire sig000002e3;
  wire sig000002e4;
  wire sig000002e5;
  wire sig000002e6;
  wire sig000002e7;
  wire sig000002e8;
  wire sig000002e9;
  wire sig000002ea;
  wire sig000002eb;
  wire sig000002ec;
  wire sig000002ed;
  wire sig000002ee;
  wire sig000002ef;
  wire sig000002f0;
  wire sig000002f1;
  wire sig000002f2;
  wire sig000002f3;
  wire sig000002f4;
  wire sig000002f5;
  wire sig000002f6;
  wire sig000002f7;
  wire sig000002f8;
  wire sig000002f9;
  wire sig000002fa;
  wire sig000002fb;
  wire sig000002fc;
  wire sig000002fd;
  wire sig000002fe;
  wire sig000002ff;
  wire sig00000300;
  wire sig00000301;
  wire sig00000302;
  wire sig00000303;
  wire sig00000304;
  wire sig00000305;
  wire sig00000306;
  wire sig00000307;
  wire sig00000308;
  wire sig00000309;
  wire sig0000030a;
  wire sig0000030b;
  wire sig0000030c;
  wire sig0000030d;
  wire sig0000030e;
  wire sig0000030f;
  wire sig00000310;
  wire sig00000311;
  wire sig00000312;
  wire sig00000313;
  wire sig00000314;
  wire sig00000315;
  wire sig00000316;
  wire sig00000317;
  wire sig00000318;
  wire sig00000319;
  wire sig0000031a;
  wire sig0000031b;
  wire sig0000031c;
  wire sig0000031d;
  wire sig0000031e;
  wire sig0000031f;
  wire sig00000320;
  wire sig00000321;
  wire sig00000322;
  wire sig00000323;
  wire sig00000324;
  wire sig00000325;
  wire sig00000326;
  wire sig00000327;
  wire sig00000328;
  wire sig00000329;
  wire sig0000032a;
  wire sig0000032b;
  wire sig0000032c;
  wire sig0000032d;
  wire sig0000032e;
  wire sig0000032f;
  wire sig00000330;
  wire sig00000331;
  wire sig00000332;
  wire sig00000333;
  wire sig00000334;
  wire sig00000335;
  wire sig00000336;
  wire sig00000337;
  wire sig00000338;
  wire sig00000339;
  wire sig0000033a;
  wire sig0000033b;
  wire sig0000033c;
  wire sig0000033d;
  wire sig0000033e;
  wire sig0000033f;
  wire sig00000340;
  wire sig00000341;
  wire sig00000342;
  wire sig00000343;
  wire sig00000344;
  wire sig00000345;
  wire sig00000346;
  wire sig00000347;
  wire sig00000348;
  wire sig00000349;
  wire sig0000034a;
  wire sig0000034b;
  wire sig0000034c;
  wire sig0000034d;
  wire sig0000034e;
  wire sig0000034f;
  wire sig00000350;
  wire sig00000351;
  wire sig00000352;
  wire sig00000353;
  wire sig00000354;
  wire sig00000355;
  wire sig00000356;
  wire sig00000357;
  wire sig00000358;
  wire sig00000359;
  wire sig0000035a;
  wire sig0000035b;
  wire sig0000035c;
  wire sig0000035d;
  wire sig0000035e;
  wire sig0000035f;
  wire sig00000360;
  wire sig00000361;
  wire sig00000362;
  wire sig00000363;
  wire sig00000364;
  wire sig00000365;
  wire sig00000366;
  wire sig00000367;
  wire sig00000368;
  wire sig00000369;
  wire sig0000036a;
  wire sig0000036b;
  wire sig0000036c;
  wire sig0000036d;
  wire sig0000036e;
  wire sig0000036f;
  wire sig00000370;
  wire sig00000371;
  wire sig00000372;
  wire sig00000373;
  wire sig00000374;
  wire sig00000375;
  wire sig00000376;
  wire sig00000377;
  wire sig00000378;
  wire sig00000379;
  wire sig0000037a;
  wire sig0000037b;
  wire sig0000037c;
  wire sig0000037d;
  wire sig0000037e;
  wire sig0000037f;
  wire sig00000380;
  wire sig00000381;
  wire sig00000382;
  wire sig00000383;
  wire sig00000384;
  wire sig00000385;
  wire sig00000386;
  wire sig00000387;
  wire sig00000388;
  wire sig00000389;
  wire sig0000038a;
  wire sig0000038b;
  wire sig0000038c;
  wire sig0000038d;
  wire sig0000038e;
  wire sig0000038f;
  wire sig00000390;
  wire sig00000391;
  wire sig00000392;
  wire sig00000393;
  wire sig00000394;
  wire sig00000395;
  wire sig00000396;
  wire sig00000397;
  wire sig00000398;
  wire sig00000399;
  wire sig0000039a;
  wire sig0000039b;
  wire sig0000039c;
  wire sig0000039d;
  wire sig0000039e;
  wire sig0000039f;
  wire sig000003a0;
  wire sig000003a1;
  wire sig000003a2;
  wire sig000003a3;
  wire sig000003a4;
  wire sig000003a5;
  wire sig000003a6;
  wire sig000003a7;
  wire sig000003a8;
  wire sig000003a9;
  wire sig000003aa;
  wire sig000003ab;
  wire sig000003ac;
  wire sig000003ad;
  wire sig000003ae;
  wire sig000003af;
  wire sig000003b0;
  wire sig000003b1;
  wire sig000003b2;
  wire sig000003b3;
  wire sig000003b4;
  wire sig000003b5;
  wire \blk000000e4/sig000003fc ;
  wire \blk000000e4/sig000003eb ;
  wire \blk000000e4/sig000003ea ;
  wire \blk000000e4/sig000003e9 ;
  wire \blk000000e4/sig000003e8 ;
  wire \blk000000e4/sig000003e7 ;
  wire \blk000000e4/sig000003e6 ;
  wire \blk000000e4/sig000003e5 ;
  wire \blk000000e4/sig000003e4 ;
  wire \blk000000e4/sig000003e3 ;
  wire \blk000000e4/sig000003e2 ;
  wire \blk000000e4/sig000003e1 ;
  wire \blk000000e4/sig000003e0 ;
  wire \blk000000e4/sig000003df ;
  wire \blk000000e4/sig000003de ;
  wire \blk000000e4/sig000003dd ;
  wire \blk000000e4/sig000003dc ;
  wire \blk00000117/blk00000118/sig00000408 ;
  wire \blk00000117/blk00000118/sig00000407 ;
  wire \blk00000117/blk00000118/sig00000406 ;
  wire \blk0000013d/blk0000013e/sig00000413 ;
  wire \blk0000013d/blk0000013e/sig00000412 ;
  wire \blk0000013d/blk0000013e/sig00000411 ;
  wire \blk00000143/sig00000462 ;
  wire \blk00000143/sig00000461 ;
  wire \blk00000143/sig00000460 ;
  wire \blk00000143/sig0000045f ;
  wire \blk00000143/sig0000045e ;
  wire \blk00000143/sig0000045d ;
  wire \blk00000143/sig0000045c ;
  wire \blk00000143/sig0000045b ;
  wire \blk00000143/sig0000045a ;
  wire \blk00000143/sig00000459 ;
  wire \blk00000143/sig00000458 ;
  wire \blk00000143/sig00000457 ;
  wire \blk00000143/sig00000456 ;
  wire \blk00000143/sig00000455 ;
  wire \blk00000143/sig00000454 ;
  wire \blk00000143/sig00000453 ;
  wire \blk00000143/sig00000452 ;
  wire \blk00000143/sig00000451 ;
  wire \blk00000143/sig00000450 ;
  wire \blk00000143/sig0000044f ;
  wire \blk00000143/sig0000044e ;
  wire \blk00000143/sig0000044d ;
  wire \blk00000143/sig0000044c ;
  wire \blk00000143/sig0000044b ;
  wire \blk00000143/sig0000044a ;
  wire \blk00000143/sig00000449 ;
  wire \blk00000143/sig00000448 ;
  wire \blk00000143/sig00000447 ;
  wire \blk00000143/sig00000446 ;
  wire \blk00000143/sig00000445 ;
  wire \blk00000143/sig00000444 ;
  wire \blk00000143/sig00000443 ;
  wire \blk00000143/sig00000442 ;
  wire \blk00000143/sig00000441 ;
  wire \blk00000143/sig00000440 ;
  wire \blk00000143/sig0000043f ;
  wire \blk00000143/sig0000043e ;
  wire \blk00000143/sig0000043d ;
  wire \blk00000143/sig0000043c ;
  wire \blk00000178/sig000004b1 ;
  wire \blk00000178/sig000004b0 ;
  wire \blk00000178/sig000004af ;
  wire \blk00000178/sig000004ae ;
  wire \blk00000178/sig000004ad ;
  wire \blk00000178/sig000004ac ;
  wire \blk00000178/sig000004ab ;
  wire \blk00000178/sig000004aa ;
  wire \blk00000178/sig000004a9 ;
  wire \blk00000178/sig000004a8 ;
  wire \blk00000178/sig000004a7 ;
  wire \blk00000178/sig000004a6 ;
  wire \blk00000178/sig000004a5 ;
  wire \blk00000178/sig000004a4 ;
  wire \blk00000178/sig000004a3 ;
  wire \blk00000178/sig000004a2 ;
  wire \blk00000178/sig000004a1 ;
  wire \blk00000178/sig000004a0 ;
  wire \blk00000178/sig0000049f ;
  wire \blk00000178/sig0000049e ;
  wire \blk00000178/sig0000049d ;
  wire \blk00000178/sig0000049c ;
  wire \blk00000178/sig0000049b ;
  wire \blk00000178/sig0000049a ;
  wire \blk00000178/sig00000499 ;
  wire \blk00000178/sig00000498 ;
  wire \blk00000178/sig00000497 ;
  wire \blk00000178/sig00000496 ;
  wire \blk00000178/sig00000495 ;
  wire \blk00000178/sig00000494 ;
  wire \blk00000178/sig00000493 ;
  wire \blk00000178/sig00000492 ;
  wire \blk00000178/sig00000491 ;
  wire \blk00000178/sig00000490 ;
  wire \blk00000178/sig0000048f ;
  wire \blk00000178/sig0000048e ;
  wire \blk00000178/sig0000048d ;
  wire \blk00000178/sig0000048c ;
  wire \blk00000178/sig0000048b ;
  wire \blk000001ad/sig000004e3 ;
  wire \blk000001ad/sig000004e2 ;
  wire \blk000001ad/sig000004e1 ;
  wire \blk000001ad/sig000004e0 ;
  wire \blk000001ad/sig000004df ;
  wire \blk000001ad/sig000004de ;
  wire \blk000001ad/sig000004dd ;
  wire \blk000001ad/sig000004dc ;
  wire \blk000001ad/sig000004db ;
  wire \blk000001ad/sig000004da ;
  wire \blk000001ad/sig000004d9 ;
  wire \blk000001ad/sig000004d8 ;
  wire \blk000001ad/sig000004d7 ;
  wire \blk000001ad/sig000004d6 ;
  wire \blk000001ad/sig000004d5 ;
  wire \blk000001ad/sig000004d4 ;
  wire \blk000001ad/sig000004d3 ;
  wire \blk000001ad/sig000004d2 ;
  wire \blk000001ad/sig000004d1 ;
  wire \blk000001ad/sig000004d0 ;
  wire \blk000001ad/sig000004cf ;
  wire \blk000001ad/sig000004ce ;
  wire \blk000001ad/sig000004cd ;
  wire \blk000001ad/sig000004cc ;
  wire \blk000001ad/sig000004cb ;
  wire \blk000001d4/sig00000515 ;
  wire \blk000001d4/sig00000514 ;
  wire \blk000001d4/sig00000513 ;
  wire \blk000001d4/sig00000512 ;
  wire \blk000001d4/sig00000511 ;
  wire \blk000001d4/sig00000510 ;
  wire \blk000001d4/sig0000050f ;
  wire \blk000001d4/sig0000050e ;
  wire \blk000001d4/sig0000050d ;
  wire \blk000001d4/sig0000050c ;
  wire \blk000001d4/sig0000050b ;
  wire \blk000001d4/sig0000050a ;
  wire \blk000001d4/sig00000509 ;
  wire \blk000001d4/sig00000508 ;
  wire \blk000001d4/sig00000507 ;
  wire \blk000001d4/sig00000506 ;
  wire \blk000001d4/sig00000505 ;
  wire \blk000001d4/sig00000504 ;
  wire \blk000001d4/sig00000503 ;
  wire \blk000001d4/sig00000502 ;
  wire \blk000001d4/sig00000501 ;
  wire \blk000001d4/sig00000500 ;
  wire \blk000001d4/sig000004ff ;
  wire \blk000001d4/sig000004fe ;
  wire \blk000001d4/sig000004fd ;
  wire \blk000002ab/blk000002ac/sig00000521 ;
  wire \blk000002ab/blk000002ac/sig00000520 ;
  wire \blk000002ab/blk000002ac/sig0000051f ;
  wire \blk000002dc/sig00000545 ;
  wire \blk000002dc/sig00000544 ;
  wire \blk000002dc/sig00000543 ;
  wire \blk000002dc/sig00000542 ;
  wire \blk000002dc/sig00000541 ;
  wire \blk000002dc/sig00000540 ;
  wire \blk000002dc/sig0000053f ;
  wire \blk000002dc/sig0000053e ;
  wire \blk000002dc/sig0000053d ;
  wire \blk000002dc/sig0000053c ;
  wire \blk000002dc/sig0000053b ;
  wire \blk000002dc/sig0000053a ;
  wire \blk000002dc/sig00000539 ;
  wire \blk000002dc/sig00000538 ;
  wire \blk000002dc/sig00000537 ;
  wire \blk000002dc/sig00000536 ;
  wire \blk000002dc/sig00000535 ;
  wire \blk000002dc/sig00000534 ;
  wire \blk0000035b/blk0000035c/sig00000550 ;
  wire \blk0000035b/blk0000035c/sig0000054f ;
  wire \blk0000035b/blk0000035c/sig0000054e ;
  wire \blk00000361/sig00000560 ;
  wire \blk00000361/sig0000055f ;
  wire \blk00000361/sig0000055e ;
  wire \blk00000361/sig0000055d ;
  wire \blk00000361/sig0000055c ;
  wire \blk00000361/sig0000055b ;
  wire \blk00000361/sig0000055a ;
  wire \blk00000361/sig00000559 ;
  wire \blk0000036e/blk0000036f/sig0000056c ;
  wire \blk0000036e/blk0000036f/sig0000056b ;
  wire \blk0000036e/blk0000036f/sig0000056a ;
  wire \blk00000374/blk00000375/sig00000578 ;
  wire \blk00000374/blk00000375/sig00000577 ;
  wire \blk00000374/blk00000375/sig00000576 ;
  wire \blk0000037a/blk0000037b/sig00000584 ;
  wire \blk0000037a/blk0000037b/sig00000583 ;
  wire \blk0000037a/blk0000037b/sig00000582 ;
  wire \blk00000380/blk00000381/sig00000590 ;
  wire \blk00000380/blk00000381/sig0000058f ;
  wire \blk00000380/blk00000381/sig0000058e ;
  wire \blk000003a3/sig000005c0 ;
  wire \blk000003a3/sig000005bf ;
  wire \blk000003a3/sig000005be ;
  wire \blk000003a3/sig000005bd ;
  wire \blk000003a3/sig000005bc ;
  wire \blk000003a3/sig000005bb ;
  wire \blk000003a3/sig000005ba ;
  wire \blk000003a3/sig000005b9 ;
  wire \blk000003a3/sig000005b8 ;
  wire \blk000003a3/sig000005b7 ;
  wire \blk000003a3/sig000005b6 ;
  wire \blk000003a3/sig000005b5 ;
  wire \blk000003a3/sig000005b4 ;
  wire \blk000003a3/sig000005b3 ;
  wire \blk000003a3/sig000005b2 ;
  wire \blk000003a3/sig000005b1 ;
  wire \blk000003a3/sig000005b0 ;
  wire \blk000003a3/sig000005af ;
  wire \blk000003a3/sig000005ae ;
  wire \blk000003a3/sig000005ad ;
  wire \blk000003a3/sig000005ac ;
  wire \blk000003a3/sig000005ab ;
  wire \blk000003a3/sig000005aa ;
  wire \blk000003a3/sig000005a9 ;
  wire \blk000003a3/sig000005a8 ;
  wire \blk000003a3/sig000005a7 ;
  wire \blk000003a3/sig000005a6 ;
  wire NLW_blk0000008b_CARRYOUTF_UNCONNECTED;
  wire NLW_blk0000008b_CARRYOUT_UNCONNECTED;
  wire \NLW_blk0000008b_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk0000008b_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<47>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<46>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<45>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<44>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<43>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<42>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<41>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<40>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<39>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<38>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<37>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<36>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<35>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<34>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<33>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<32>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<31>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<30>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<29>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<28>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<27>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<26>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<25>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<24>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<23>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<22>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<21>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<20>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<19>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<18>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<17>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<16>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<15>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<14>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<13>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<12>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<11>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<10>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<9>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<8>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<7>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<6>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<5>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<4>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<3>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<2>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<1>_UNCONNECTED ;
  wire \NLW_blk0000008b_P<0>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<35>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<34>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<33>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<32>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<31>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<30>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<29>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<28>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<27>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<26>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<25>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<24>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<23>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<22>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<21>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<20>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<19>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<18>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<17>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<16>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<15>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<14>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<13>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<12>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<11>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<10>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<9>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<8>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<7>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<6>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<5>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<4>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<3>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<2>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<1>_UNCONNECTED ;
  wire \NLW_blk0000008b_M<0>_UNCONNECTED ;
  wire NLW_blk0000008c_CARRYOUTF_UNCONNECTED;
  wire NLW_blk0000008c_CARRYOUT_UNCONNECTED;
  wire \NLW_blk0000008c_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk0000008c_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<47>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<46>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<45>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<44>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<43>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<42>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<41>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<40>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<39>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<38>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<37>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<36>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<35>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<34>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<33>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<32>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<31>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<30>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<29>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<28>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<27>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<26>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<25>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<24>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<23>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<22>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<21>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<20>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<19>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<18>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<17>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<16>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<3>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<2>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<1>_UNCONNECTED ;
  wire \NLW_blk0000008c_P<0>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk0000008c_PCOUT<0>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<35>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<34>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<33>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<32>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<31>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<30>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<29>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<28>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<27>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<26>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<25>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<24>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<23>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<22>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<21>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<20>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<19>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<18>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<17>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<16>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<15>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<14>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<13>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<12>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<11>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<10>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<9>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<8>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<7>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<6>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<5>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<4>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<3>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<2>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<1>_UNCONNECTED ;
  wire \NLW_blk0000008c_M<0>_UNCONNECTED ;
  wire NLW_blk0000020b_Q_UNCONNECTED;
  wire NLW_blk0000020c_Q_UNCONNECTED;
  wire NLW_blk0000020d_Q_UNCONNECTED;
  wire NLW_blk0000020e_Q_UNCONNECTED;
  wire NLW_blk0000020f_Q_UNCONNECTED;
  wire NLW_blk00000210_Q_UNCONNECTED;
  wire NLW_blk00000219_Q_UNCONNECTED;
  wire NLW_blk0000021a_Q_UNCONNECTED;
  wire NLW_blk0000022b_Q_UNCONNECTED;
  wire NLW_blk0000022c_Q_UNCONNECTED;
  wire NLW_blk0000022d_Q_UNCONNECTED;
  wire NLW_blk0000022e_Q_UNCONNECTED;
  wire NLW_blk0000022f_Q_UNCONNECTED;
  wire NLW_blk00000230_Q_UNCONNECTED;
  wire NLW_blk00000239_Q_UNCONNECTED;
  wire NLW_blk0000023a_Q_UNCONNECTED;
  wire \NLW_blk0000047b_DOADO<15>_UNCONNECTED ;
  wire \NLW_blk0000047b_DOADO<14>_UNCONNECTED ;
  wire \NLW_blk0000047b_DOADO<13>_UNCONNECTED ;
  wire \NLW_blk0000047b_DOADO<12>_UNCONNECTED ;
  wire \NLW_blk0000047b_DOADO<11>_UNCONNECTED ;
  wire \NLW_blk0000047b_DOADO<10>_UNCONNECTED ;
  wire \NLW_blk0000047b_DOADO<9>_UNCONNECTED ;
  wire \NLW_blk0000047b_DOADO<8>_UNCONNECTED ;
  wire \NLW_blk0000047b_DOPADOP<1>_UNCONNECTED ;
  wire \NLW_blk0000047b_DOPBDOP<1>_UNCONNECTED ;
  wire \NLW_blk0000047b_ADDRAWRADDR<2>_UNCONNECTED ;
  wire \NLW_blk0000047b_ADDRAWRADDR<1>_UNCONNECTED ;
  wire \NLW_blk0000047b_ADDRAWRADDR<0>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIPBDIP<1>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIPBDIP<0>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIBDI<15>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIBDI<14>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIBDI<13>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIBDI<12>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIBDI<11>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIBDI<10>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIBDI<9>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIBDI<8>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIBDI<7>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIBDI<6>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIBDI<5>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIBDI<4>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIBDI<3>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIBDI<2>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIBDI<1>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIBDI<0>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIADI<15>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIADI<14>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIADI<13>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIADI<12>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIADI<11>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIADI<10>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIADI<9>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIADI<8>_UNCONNECTED ;
  wire \NLW_blk0000047b_ADDRBRDADDR<2>_UNCONNECTED ;
  wire \NLW_blk0000047b_ADDRBRDADDR<1>_UNCONNECTED ;
  wire \NLW_blk0000047b_ADDRBRDADDR<0>_UNCONNECTED ;
  wire \NLW_blk0000047b_DOBDO<15>_UNCONNECTED ;
  wire \NLW_blk0000047b_DOBDO<14>_UNCONNECTED ;
  wire \NLW_blk0000047b_DOBDO<13>_UNCONNECTED ;
  wire \NLW_blk0000047b_DOBDO<12>_UNCONNECTED ;
  wire \NLW_blk0000047b_DOBDO<11>_UNCONNECTED ;
  wire \NLW_blk0000047b_DOBDO<10>_UNCONNECTED ;
  wire \NLW_blk0000047b_DOBDO<9>_UNCONNECTED ;
  wire \NLW_blk0000047b_DOBDO<8>_UNCONNECTED ;
  wire \NLW_blk0000047b_DIPADIP<1>_UNCONNECTED ;
  wire NLW_blk0000047c_Q15_UNCONNECTED;
  wire NLW_blk0000047e_Q15_UNCONNECTED;
  wire NLW_blk00000480_Q15_UNCONNECTED;
  wire NLW_blk00000482_Q15_UNCONNECTED;
  wire NLW_blk00000484_Q15_UNCONNECTED;
  wire NLW_blk00000486_Q15_UNCONNECTED;
  wire NLW_blk00000488_Q15_UNCONNECTED;
  wire NLW_blk0000048a_Q15_UNCONNECTED;
  wire NLW_blk0000048c_Q15_UNCONNECTED;
  wire NLW_blk0000048e_Q15_UNCONNECTED;
  wire NLW_blk00000490_Q15_UNCONNECTED;
  wire NLW_blk00000492_Q15_UNCONNECTED;
  wire \NLW_blk000000e4/blk000000f6_DOADO<15>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<14>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<13>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<12>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<11>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<10>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<9>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<8>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<7>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<6>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<5>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<4>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<3>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<2>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<1>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOADO<0>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOPADOP<1>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOPADOP<0>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOPBDOP<1>_UNCONNECTED ;
  wire \NLW_blk000000e4/blk000000f6_DOBDO<15>_UNCONNECTED ;
  wire \NLW_blk00000117/blk00000118/blk0000011b_Q15_UNCONNECTED ;
  wire \NLW_blk0000013d/blk0000013e/blk00000141_Q15_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001c5_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b9_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b8_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b7_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b6_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b5_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b4_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b3_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b2_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b1_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001b0_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001af_O_UNCONNECTED ;
  wire \NLW_blk000001ad/blk000001ae_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001ec_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001e0_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001df_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001de_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001dd_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001dc_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001db_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001da_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001d9_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001d8_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001d7_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001d6_O_UNCONNECTED ;
  wire \NLW_blk000001d4/blk000001d5_O_UNCONNECTED ;
  wire \NLW_blk000002ab/blk000002ac/blk000002af_Q15_UNCONNECTED ;
  wire \NLW_blk0000035b/blk0000035c/blk0000035f_Q15_UNCONNECTED ;
  wire \NLW_blk0000036e/blk0000036f/blk00000372_Q15_UNCONNECTED ;
  wire \NLW_blk00000374/blk00000375/blk00000378_Q15_UNCONNECTED ;
  wire \NLW_blk0000037a/blk0000037b/blk0000037e_Q15_UNCONNECTED ;
  wire \NLW_blk00000380/blk00000381/blk00000384_Q15_UNCONNECTED ;
  wire [8 : 0] NlwRenamedSig_OI_xn_index;
  wire [8 : 0] \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i ;
  wire [7 : 0] \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q ;
  wire [7 : 0] \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q ;
  assign
    xn_index[8] = NlwRenamedSig_OI_xn_index[8],
    xn_index[7] = NlwRenamedSig_OI_xn_index[7],
    xn_index[6] = NlwRenamedSig_OI_xn_index[6],
    xn_index[5] = NlwRenamedSig_OI_xn_index[5],
    xn_index[4] = NlwRenamedSig_OI_xn_index[4],
    xn_index[3] = NlwRenamedSig_OI_xn_index[3],
    xn_index[2] = NlwRenamedSig_OI_xn_index[2],
    xn_index[1] = NlwRenamedSig_OI_xn_index[1],
    xn_index[0] = NlwRenamedSig_OI_xn_index[0],
    xk_index[8] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [8],
    xk_index[7] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [7],
    xk_index[6] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [6],
    xk_index[5] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [5],
    xk_index[4] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [4],
    xk_index[3] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [3],
    xk_index[2] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [2],
    xk_index[1] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [1],
    xk_index[0] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [0],
    xk_re[7] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [7],
    xk_re[6] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [6],
    xk_re[5] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [5],
    xk_re[4] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [4],
    xk_re[3] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [3],
    xk_re[2] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [2],
    xk_re[1] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [1],
    xk_re[0] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [0],
    xk_im[7] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [7],
    xk_im[6] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [6],
    xk_im[5] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [5],
    xk_im[4] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [4],
    xk_im[3] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [3],
    xk_im[2] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [2],
    xk_im[1] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [1],
    xk_im[0] = \U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [0],
    rfd = \NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ,
    busy = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/busy_i_reg2 ,
    edone = \NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/run_addr_gen/done_int2 ,
    done = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/done_i_reg ,
    dv = \U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/dv_d ;
  VCC   blk00000001 (
    .P(sig00000001)
  );
  GND   blk00000002 (
    .G(sig00000002)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000003 (
    .C(clk),
    .CE(ce),
    .D(sig00000032),
    .R(sig00000002),
    .Q(sig00000031)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000004 (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000da),
    .Q(sig0000006c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000005 (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000d9),
    .Q(sig0000006b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000006 (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000d8),
    .Q(sig0000006a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000007 (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000d7),
    .Q(sig00000069)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000008 (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000d6),
    .Q(sig00000068)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000009 (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000d5),
    .Q(sig00000067)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000a (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000d4),
    .Q(sig00000066)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000b (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000d3),
    .Q(sig00000065)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000c (
    .C(clk),
    .CE(ce),
    .D(sig000000ea),
    .Q(sig0000007c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000d (
    .C(clk),
    .CE(ce),
    .D(sig000000e9),
    .Q(sig0000007b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000e (
    .C(clk),
    .CE(ce),
    .D(sig000000e8),
    .Q(sig0000007a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000f (
    .C(clk),
    .CE(ce),
    .D(sig000000e7),
    .Q(sig00000079)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000010 (
    .C(clk),
    .CE(ce),
    .D(sig000000e6),
    .Q(sig00000078)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000011 (
    .C(clk),
    .CE(ce),
    .D(sig000000e5),
    .Q(sig00000077)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000012 (
    .C(clk),
    .CE(ce),
    .D(sig000000e4),
    .Q(sig00000076)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000013 (
    .C(clk),
    .CE(ce),
    .D(sig000000e3),
    .Q(sig00000075)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000014 (
    .C(clk),
    .CE(ce),
    .D(sig000000e2),
    .Q(sig00000074)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000015 (
    .C(clk),
    .CE(ce),
    .D(sig000000e1),
    .Q(sig00000073)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000016 (
    .C(clk),
    .CE(ce),
    .D(sig000000e0),
    .Q(sig00000072)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000017 (
    .C(clk),
    .CE(ce),
    .D(sig000000df),
    .Q(sig00000071)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000018 (
    .C(clk),
    .CE(ce),
    .D(sig000000de),
    .Q(sig00000070)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000019 (
    .C(clk),
    .CE(ce),
    .D(sig000000dd),
    .Q(sig0000006f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000001a (
    .C(clk),
    .CE(ce),
    .D(sig000000dc),
    .Q(sig0000006e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000001b (
    .C(clk),
    .CE(ce),
    .D(sig000000db),
    .Q(sig0000006d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000001c (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000045),
    .Q(sig0000008e)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk0000001d (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000044),
    .Q(sig0000008d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000001e (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000043),
    .Q(sig0000008c)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk0000001f (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000042),
    .Q(sig0000008b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000020 (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000041),
    .Q(sig0000008a)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk00000021 (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000040),
    .Q(sig00000089)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000022 (
    .C(clk),
    .CE(sig00000033),
    .D(sig0000003f),
    .Q(sig00000088)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk00000023 (
    .C(clk),
    .CE(sig00000033),
    .D(sig0000003e),
    .Q(sig00000087)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000024 (
    .C(clk),
    .CE(sig00000033),
    .D(sig0000003d),
    .Q(sig00000086)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk00000025 (
    .C(clk),
    .CE(sig00000033),
    .D(sig0000003c),
    .Q(sig00000085)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000026 (
    .C(clk),
    .CE(sig00000033),
    .D(sig0000003b),
    .Q(sig00000084)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk00000027 (
    .C(clk),
    .CE(sig00000033),
    .D(sig0000003a),
    .Q(sig00000083)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000028 (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000039),
    .Q(sig00000082)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk00000029 (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000038),
    .Q(sig00000081)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002a (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000037),
    .Q(sig00000080)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk0000002b (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000036),
    .Q(sig0000007f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002c (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000035),
    .Q(sig0000007e)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk0000002d (
    .C(clk),
    .CE(sig00000033),
    .D(sig00000034),
    .Q(sig0000007d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002e (
    .C(clk),
    .CE(ce),
    .D(sig000000ca),
    .Q(sig0000004c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002f (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000d2),
    .Q(sig00000054)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000030 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000d1),
    .Q(sig00000053)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000031 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000d0),
    .Q(sig00000052)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000032 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000cf),
    .Q(sig00000051)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000033 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000ce),
    .Q(sig00000050)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000034 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000cd),
    .Q(sig0000004f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000035 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000cc),
    .Q(sig0000004e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000036 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000cb),
    .Q(sig0000004d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000037 (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000d2),
    .Q(sig00000064)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000038 (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000d1),
    .Q(sig00000063)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000039 (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000d0),
    .Q(sig00000062)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003a (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000cf),
    .Q(sig00000061)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003b (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000ce),
    .Q(sig00000060)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003c (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000cd),
    .Q(sig0000005f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003d (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000cc),
    .Q(sig0000005e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003e (
    .C(clk),
    .CE(sig00000047),
    .D(sig000000cb),
    .Q(sig0000005d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003f (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000da),
    .Q(sig0000005c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000040 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000d9),
    .Q(sig0000005b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000041 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000d8),
    .Q(sig0000005a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000042 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000d7),
    .Q(sig00000059)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000043 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000d6),
    .Q(sig00000058)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000044 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000d5),
    .Q(sig00000057)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000045 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000d4),
    .Q(sig00000056)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000046 (
    .C(clk),
    .CE(sig00000046),
    .D(sig000000d3),
    .Q(sig00000055)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000047 (
    .C(clk),
    .CE(ce),
    .D(sig00000026),
    .Q(sig0000010b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000048 (
    .C(clk),
    .CE(ce),
    .D(sig00000025),
    .Q(sig0000010a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000049 (
    .C(clk),
    .CE(ce),
    .D(sig00000024),
    .Q(sig00000109)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004a (
    .C(clk),
    .CE(ce),
    .D(sig00000023),
    .Q(sig00000108)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004b (
    .C(clk),
    .CE(ce),
    .D(sig00000022),
    .Q(sig00000107)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004c (
    .C(clk),
    .CE(ce),
    .D(sig00000021),
    .Q(sig00000106)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004d (
    .C(clk),
    .CE(ce),
    .D(sig00000020),
    .Q(sig00000105)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004e (
    .C(clk),
    .CE(ce),
    .D(sig0000001f),
    .Q(sig00000104)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000004f (
    .C(clk),
    .CE(ce),
    .D(sig0000001e),
    .Q(sig00000103)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000050 (
    .C(clk),
    .CE(ce),
    .D(sig0000002f),
    .Q(sig00000114)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000051 (
    .C(clk),
    .CE(ce),
    .D(sig0000002e),
    .Q(sig00000113)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000052 (
    .C(clk),
    .CE(ce),
    .D(sig0000002d),
    .Q(sig00000112)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000053 (
    .C(clk),
    .CE(ce),
    .D(sig0000002c),
    .Q(sig00000111)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000054 (
    .C(clk),
    .CE(ce),
    .D(sig0000002b),
    .Q(sig00000110)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000055 (
    .C(clk),
    .CE(ce),
    .D(sig0000002a),
    .Q(sig0000010f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000056 (
    .C(clk),
    .CE(ce),
    .D(sig00000029),
    .Q(sig0000010e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000057 (
    .C(clk),
    .CE(ce),
    .D(sig00000028),
    .Q(sig0000010d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000058 (
    .C(clk),
    .CE(ce),
    .D(sig00000027),
    .Q(sig0000010c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000059 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[17]),
    .R(sig00000002),
    .Q(sig00000126)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk0000005a (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[16]),
    .S(sig00000002),
    .Q(sig00000125)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000005b (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[15]),
    .R(sig00000002),
    .Q(sig00000124)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk0000005c (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[14]),
    .S(sig00000002),
    .Q(sig00000123)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000005d (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[13]),
    .R(sig00000002),
    .Q(sig00000122)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk0000005e (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[12]),
    .S(sig00000002),
    .Q(sig00000121)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000005f (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[11]),
    .R(sig00000002),
    .Q(sig00000120)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk00000060 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[10]),
    .S(sig00000002),
    .Q(sig0000011f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000061 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[9]),
    .R(sig00000002),
    .Q(sig0000011e)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk00000062 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[8]),
    .S(sig00000002),
    .Q(sig0000011d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000063 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[7]),
    .R(sig00000002),
    .Q(sig0000011c)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk00000064 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[6]),
    .S(sig00000002),
    .Q(sig0000011b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000065 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[5]),
    .R(sig00000002),
    .Q(sig0000011a)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk00000066 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[4]),
    .S(sig00000002),
    .Q(sig00000119)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000067 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[3]),
    .R(sig00000002),
    .Q(sig00000118)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk00000068 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[2]),
    .S(sig00000002),
    .Q(sig00000117)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000069 (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[1]),
    .R(sig00000002),
    .Q(sig00000116)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk0000006a (
    .C(clk),
    .CE(sig00000048),
    .D(scale_sch[0]),
    .S(sig00000002),
    .Q(sig00000115)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000006b (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_im[7]),
    .Q(sig00000137)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000006c (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_im[6]),
    .Q(sig00000138)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000006d (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_im[5]),
    .Q(sig00000139)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000006e (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_im[4]),
    .Q(sig0000013a)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000006f (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_im[3]),
    .Q(sig0000013b)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000070 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_im[2]),
    .Q(sig0000013c)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000071 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_im[1]),
    .Q(sig0000013d)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000072 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_im[0]),
    .Q(sig0000013e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000073 (
    .C(clk),
    .CE(ce),
    .D(sig00000137),
    .R(sig00000002),
    .Q(sig0000012e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000074 (
    .C(clk),
    .CE(ce),
    .D(sig00000138),
    .R(sig00000002),
    .Q(sig0000012d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000075 (
    .C(clk),
    .CE(ce),
    .D(sig00000139),
    .R(sig00000002),
    .Q(sig0000012c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000076 (
    .C(clk),
    .CE(ce),
    .D(sig0000013a),
    .R(sig00000002),
    .Q(sig0000012b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000077 (
    .C(clk),
    .CE(ce),
    .D(sig0000013b),
    .R(sig00000002),
    .Q(sig0000012a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000078 (
    .C(clk),
    .CE(ce),
    .D(sig0000013c),
    .R(sig00000002),
    .Q(sig00000129)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000079 (
    .C(clk),
    .CE(ce),
    .D(sig0000013d),
    .R(sig00000002),
    .Q(sig00000128)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000007a (
    .C(clk),
    .CE(ce),
    .D(sig0000013e),
    .R(sig00000002),
    .Q(sig00000127)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000007b (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_re[7]),
    .Q(sig0000013f)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000007c (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_re[6]),
    .Q(sig00000140)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000007d (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_re[5]),
    .Q(sig00000141)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000007e (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_re[4]),
    .Q(sig00000142)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000007f (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_re[3]),
    .Q(sig00000143)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000080 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_re[2]),
    .Q(sig00000144)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000081 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_re[1]),
    .Q(sig00000145)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000082 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(xn_re[0]),
    .Q(sig00000146)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000083 (
    .C(clk),
    .CE(ce),
    .D(sig0000013f),
    .R(sig00000002),
    .Q(sig00000136)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000084 (
    .C(clk),
    .CE(ce),
    .D(sig00000140),
    .R(sig00000002),
    .Q(sig00000135)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000085 (
    .C(clk),
    .CE(ce),
    .D(sig00000141),
    .R(sig00000002),
    .Q(sig00000134)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000086 (
    .C(clk),
    .CE(ce),
    .D(sig00000142),
    .R(sig00000002),
    .Q(sig00000133)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000087 (
    .C(clk),
    .CE(ce),
    .D(sig00000143),
    .R(sig00000002),
    .Q(sig00000132)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000088 (
    .C(clk),
    .CE(ce),
    .D(sig00000144),
    .R(sig00000002),
    .Q(sig00000131)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000089 (
    .C(clk),
    .CE(ce),
    .D(sig00000145),
    .R(sig00000002),
    .Q(sig00000130)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000008a (
    .C(clk),
    .CE(ce),
    .D(sig00000146),
    .R(sig00000002),
    .Q(sig0000012f)
  );
  DSP48A1 #(
    .A0REG ( 0 ),
    .A1REG ( 1 ),
    .B0REG ( 0 ),
    .B1REG ( 1 ),
    .CARRYINREG ( 1 ),
    .CARRYINSEL ( "OPMODE5" ),
    .CREG ( 0 ),
    .DREG ( 0 ),
    .MREG ( 1 ),
    .OPMODEREG ( 1 ),
    .PREG ( 1 ),
    .RSTTYPE ( "SYNC" ),
    .CARRYOUTREG ( 0 ))
  blk0000008b (
    .CECARRYIN(sig00000002),
    .RSTC(sig00000002),
    .RSTCARRYIN(sig00000002),
    .CED(sig00000002),
    .RSTD(sig00000002),
    .CEOPMODE(ce),
    .CEC(sig00000002),
    .CARRYOUTF(NLW_blk0000008b_CARRYOUTF_UNCONNECTED),
    .RSTOPMODE(sig00000002),
    .RSTM(sig00000002),
    .CLK(clk),
    .RSTB(sig00000002),
    .CEM(ce),
    .CEB(ce),
    .CARRYIN(sig00000002),
    .CEP(ce),
    .CEA(ce),
    .CARRYOUT(NLW_blk0000008b_CARRYOUT_UNCONNECTED),
    .RSTA(sig00000002),
    .RSTP(sig00000002),
    .B({sig00000189, sig00000189, sig00000189, sig00000189, sig00000189, sig00000189, sig00000189, sig00000189, sig00000189, sig00000189, sig00000189
, sig00000188, sig00000187, sig00000186, sig00000185, sig00000184, sig00000183, sig00000182}),
    .BCOUT({\NLW_blk0000008b_BCOUT<17>_UNCONNECTED , \NLW_blk0000008b_BCOUT<16>_UNCONNECTED , \NLW_blk0000008b_BCOUT<15>_UNCONNECTED , 
\NLW_blk0000008b_BCOUT<14>_UNCONNECTED , \NLW_blk0000008b_BCOUT<13>_UNCONNECTED , \NLW_blk0000008b_BCOUT<12>_UNCONNECTED , 
\NLW_blk0000008b_BCOUT<11>_UNCONNECTED , \NLW_blk0000008b_BCOUT<10>_UNCONNECTED , \NLW_blk0000008b_BCOUT<9>_UNCONNECTED , 
\NLW_blk0000008b_BCOUT<8>_UNCONNECTED , \NLW_blk0000008b_BCOUT<7>_UNCONNECTED , \NLW_blk0000008b_BCOUT<6>_UNCONNECTED , 
\NLW_blk0000008b_BCOUT<5>_UNCONNECTED , \NLW_blk0000008b_BCOUT<4>_UNCONNECTED , \NLW_blk0000008b_BCOUT<3>_UNCONNECTED , 
\NLW_blk0000008b_BCOUT<2>_UNCONNECTED , \NLW_blk0000008b_BCOUT<1>_UNCONNECTED , \NLW_blk0000008b_BCOUT<0>_UNCONNECTED }),
    .PCIN({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .C({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000001, sig00000001, sig00000001}),
    .P({\NLW_blk0000008b_P<47>_UNCONNECTED , \NLW_blk0000008b_P<46>_UNCONNECTED , \NLW_blk0000008b_P<45>_UNCONNECTED , 
\NLW_blk0000008b_P<44>_UNCONNECTED , \NLW_blk0000008b_P<43>_UNCONNECTED , \NLW_blk0000008b_P<42>_UNCONNECTED , \NLW_blk0000008b_P<41>_UNCONNECTED , 
\NLW_blk0000008b_P<40>_UNCONNECTED , \NLW_blk0000008b_P<39>_UNCONNECTED , \NLW_blk0000008b_P<38>_UNCONNECTED , \NLW_blk0000008b_P<37>_UNCONNECTED , 
\NLW_blk0000008b_P<36>_UNCONNECTED , \NLW_blk0000008b_P<35>_UNCONNECTED , \NLW_blk0000008b_P<34>_UNCONNECTED , \NLW_blk0000008b_P<33>_UNCONNECTED , 
\NLW_blk0000008b_P<32>_UNCONNECTED , \NLW_blk0000008b_P<31>_UNCONNECTED , \NLW_blk0000008b_P<30>_UNCONNECTED , \NLW_blk0000008b_P<29>_UNCONNECTED , 
\NLW_blk0000008b_P<28>_UNCONNECTED , \NLW_blk0000008b_P<27>_UNCONNECTED , \NLW_blk0000008b_P<26>_UNCONNECTED , \NLW_blk0000008b_P<25>_UNCONNECTED , 
\NLW_blk0000008b_P<24>_UNCONNECTED , \NLW_blk0000008b_P<23>_UNCONNECTED , \NLW_blk0000008b_P<22>_UNCONNECTED , \NLW_blk0000008b_P<21>_UNCONNECTED , 
\NLW_blk0000008b_P<20>_UNCONNECTED , \NLW_blk0000008b_P<19>_UNCONNECTED , \NLW_blk0000008b_P<18>_UNCONNECTED , \NLW_blk0000008b_P<17>_UNCONNECTED , 
\NLW_blk0000008b_P<16>_UNCONNECTED , \NLW_blk0000008b_P<15>_UNCONNECTED , \NLW_blk0000008b_P<14>_UNCONNECTED , \NLW_blk0000008b_P<13>_UNCONNECTED , 
\NLW_blk0000008b_P<12>_UNCONNECTED , \NLW_blk0000008b_P<11>_UNCONNECTED , \NLW_blk0000008b_P<10>_UNCONNECTED , \NLW_blk0000008b_P<9>_UNCONNECTED , 
\NLW_blk0000008b_P<8>_UNCONNECTED , \NLW_blk0000008b_P<7>_UNCONNECTED , \NLW_blk0000008b_P<6>_UNCONNECTED , \NLW_blk0000008b_P<5>_UNCONNECTED , 
\NLW_blk0000008b_P<4>_UNCONNECTED , \NLW_blk0000008b_P<3>_UNCONNECTED , \NLW_blk0000008b_P<2>_UNCONNECTED , \NLW_blk0000008b_P<1>_UNCONNECTED , 
\NLW_blk0000008b_P<0>_UNCONNECTED }),
    .OPMODE({sig00000002, sig00000002, sig00000002, sig00000002, sig00000001, sig00000001, sig00000002, sig00000001}),
    .D({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .PCOUT({sig00000148, sig00000149, sig0000014a, sig0000014b, sig0000014c, sig0000014d, sig0000014e, sig0000014f, sig00000150, sig00000151, 
sig00000152, sig00000153, sig00000154, sig00000155, sig00000156, sig00000157, sig00000158, sig00000159, sig0000015a, sig0000015b, sig0000015c, 
sig0000015d, sig0000015e, sig0000015f, sig00000160, sig00000161, sig00000162, sig00000163, sig00000164, sig00000165, sig00000166, sig00000167, 
sig00000168, sig00000169, sig0000016a, sig0000016b, sig0000016c, sig0000016d, sig0000016e, sig0000016f, sig00000170, sig00000171, sig00000172, 
sig00000173, sig00000174, sig00000175, sig00000176, sig00000177}),
    .A({sig000001a7, sig000001a7, sig000001a7, sig000001a7, sig000001a7, sig000001a7, sig000001a7, sig000001a7, sig000001a7, sig000001a7, sig000001a6
, sig000001a5, sig000001a4, sig000001a3, sig000001a2, sig000001a1, sig000001a0, sig0000019f}),
    .M({\NLW_blk0000008b_M<35>_UNCONNECTED , \NLW_blk0000008b_M<34>_UNCONNECTED , \NLW_blk0000008b_M<33>_UNCONNECTED , 
\NLW_blk0000008b_M<32>_UNCONNECTED , \NLW_blk0000008b_M<31>_UNCONNECTED , \NLW_blk0000008b_M<30>_UNCONNECTED , \NLW_blk0000008b_M<29>_UNCONNECTED , 
\NLW_blk0000008b_M<28>_UNCONNECTED , \NLW_blk0000008b_M<27>_UNCONNECTED , \NLW_blk0000008b_M<26>_UNCONNECTED , \NLW_blk0000008b_M<25>_UNCONNECTED , 
\NLW_blk0000008b_M<24>_UNCONNECTED , \NLW_blk0000008b_M<23>_UNCONNECTED , \NLW_blk0000008b_M<22>_UNCONNECTED , \NLW_blk0000008b_M<21>_UNCONNECTED , 
\NLW_blk0000008b_M<20>_UNCONNECTED , \NLW_blk0000008b_M<19>_UNCONNECTED , \NLW_blk0000008b_M<18>_UNCONNECTED , \NLW_blk0000008b_M<17>_UNCONNECTED , 
\NLW_blk0000008b_M<16>_UNCONNECTED , \NLW_blk0000008b_M<15>_UNCONNECTED , \NLW_blk0000008b_M<14>_UNCONNECTED , \NLW_blk0000008b_M<13>_UNCONNECTED , 
\NLW_blk0000008b_M<12>_UNCONNECTED , \NLW_blk0000008b_M<11>_UNCONNECTED , \NLW_blk0000008b_M<10>_UNCONNECTED , \NLW_blk0000008b_M<9>_UNCONNECTED , 
\NLW_blk0000008b_M<8>_UNCONNECTED , \NLW_blk0000008b_M<7>_UNCONNECTED , \NLW_blk0000008b_M<6>_UNCONNECTED , \NLW_blk0000008b_M<5>_UNCONNECTED , 
\NLW_blk0000008b_M<4>_UNCONNECTED , \NLW_blk0000008b_M<3>_UNCONNECTED , \NLW_blk0000008b_M<2>_UNCONNECTED , \NLW_blk0000008b_M<1>_UNCONNECTED , 
\NLW_blk0000008b_M<0>_UNCONNECTED })
  );
  DSP48A1 #(
    .A0REG ( 1 ),
    .A1REG ( 1 ),
    .B0REG ( 1 ),
    .B1REG ( 1 ),
    .CARRYINREG ( 0 ),
    .CARRYINSEL ( "OPMODE5" ),
    .CREG ( 0 ),
    .DREG ( 0 ),
    .MREG ( 1 ),
    .OPMODEREG ( 1 ),
    .PREG ( 1 ),
    .RSTTYPE ( "SYNC" ),
    .CARRYOUTREG ( 0 ))
  blk0000008c (
    .CECARRYIN(sig00000002),
    .RSTC(sig00000002),
    .RSTCARRYIN(sig00000002),
    .CED(sig00000002),
    .RSTD(sig00000002),
    .CEOPMODE(ce),
    .CEC(sig00000002),
    .CARRYOUTF(NLW_blk0000008c_CARRYOUTF_UNCONNECTED),
    .RSTOPMODE(sig00000002),
    .RSTM(sig00000002),
    .CLK(clk),
    .RSTB(sig00000002),
    .CEM(ce),
    .CEB(ce),
    .CARRYIN(sig00000002),
    .CEP(ce),
    .CEA(ce),
    .CARRYOUT(NLW_blk0000008c_CARRYOUT_UNCONNECTED),
    .RSTA(sig00000002),
    .RSTP(sig00000002),
    .B({sig00000181, sig00000181, sig00000181, sig00000181, sig00000181, sig00000181, sig00000181, sig00000181, sig00000181, sig00000181, sig00000181
, sig00000180, sig0000017f, sig0000017e, sig0000017d, sig0000017c, sig0000017b, sig0000017a}),
    .BCOUT({\NLW_blk0000008c_BCOUT<17>_UNCONNECTED , \NLW_blk0000008c_BCOUT<16>_UNCONNECTED , \NLW_blk0000008c_BCOUT<15>_UNCONNECTED , 
\NLW_blk0000008c_BCOUT<14>_UNCONNECTED , \NLW_blk0000008c_BCOUT<13>_UNCONNECTED , \NLW_blk0000008c_BCOUT<12>_UNCONNECTED , 
\NLW_blk0000008c_BCOUT<11>_UNCONNECTED , \NLW_blk0000008c_BCOUT<10>_UNCONNECTED , \NLW_blk0000008c_BCOUT<9>_UNCONNECTED , 
\NLW_blk0000008c_BCOUT<8>_UNCONNECTED , \NLW_blk0000008c_BCOUT<7>_UNCONNECTED , \NLW_blk0000008c_BCOUT<6>_UNCONNECTED , 
\NLW_blk0000008c_BCOUT<5>_UNCONNECTED , \NLW_blk0000008c_BCOUT<4>_UNCONNECTED , \NLW_blk0000008c_BCOUT<3>_UNCONNECTED , 
\NLW_blk0000008c_BCOUT<2>_UNCONNECTED , \NLW_blk0000008c_BCOUT<1>_UNCONNECTED , \NLW_blk0000008c_BCOUT<0>_UNCONNECTED }),
    .PCIN({sig00000148, sig00000149, sig0000014a, sig0000014b, sig0000014c, sig0000014d, sig0000014e, sig0000014f, sig00000150, sig00000151, 
sig00000152, sig00000153, sig00000154, sig00000155, sig00000156, sig00000157, sig00000158, sig00000159, sig0000015a, sig0000015b, sig0000015c, 
sig0000015d, sig0000015e, sig0000015f, sig00000160, sig00000161, sig00000162, sig00000163, sig00000164, sig00000165, sig00000166, sig00000167, 
sig00000168, sig00000169, sig0000016a, sig0000016b, sig0000016c, sig0000016d, sig0000016e, sig0000016f, sig00000170, sig00000171, sig00000172, 
sig00000173, sig00000174, sig00000175, sig00000176, sig00000177}),
    .C({sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001
, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, 
sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, 
sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, 
sig00000001, sig00000001, sig00000001, sig00000001}),
    .P({\NLW_blk0000008c_P<47>_UNCONNECTED , \NLW_blk0000008c_P<46>_UNCONNECTED , \NLW_blk0000008c_P<45>_UNCONNECTED , 
\NLW_blk0000008c_P<44>_UNCONNECTED , \NLW_blk0000008c_P<43>_UNCONNECTED , \NLW_blk0000008c_P<42>_UNCONNECTED , \NLW_blk0000008c_P<41>_UNCONNECTED , 
\NLW_blk0000008c_P<40>_UNCONNECTED , \NLW_blk0000008c_P<39>_UNCONNECTED , \NLW_blk0000008c_P<38>_UNCONNECTED , \NLW_blk0000008c_P<37>_UNCONNECTED , 
\NLW_blk0000008c_P<36>_UNCONNECTED , \NLW_blk0000008c_P<35>_UNCONNECTED , \NLW_blk0000008c_P<34>_UNCONNECTED , \NLW_blk0000008c_P<33>_UNCONNECTED , 
\NLW_blk0000008c_P<32>_UNCONNECTED , \NLW_blk0000008c_P<31>_UNCONNECTED , \NLW_blk0000008c_P<30>_UNCONNECTED , \NLW_blk0000008c_P<29>_UNCONNECTED , 
\NLW_blk0000008c_P<28>_UNCONNECTED , \NLW_blk0000008c_P<27>_UNCONNECTED , \NLW_blk0000008c_P<26>_UNCONNECTED , \NLW_blk0000008c_P<25>_UNCONNECTED , 
\NLW_blk0000008c_P<24>_UNCONNECTED , \NLW_blk0000008c_P<23>_UNCONNECTED , \NLW_blk0000008c_P<22>_UNCONNECTED , \NLW_blk0000008c_P<21>_UNCONNECTED , 
\NLW_blk0000008c_P<20>_UNCONNECTED , \NLW_blk0000008c_P<19>_UNCONNECTED , \NLW_blk0000008c_P<18>_UNCONNECTED , \NLW_blk0000008c_P<17>_UNCONNECTED , 
\NLW_blk0000008c_P<16>_UNCONNECTED , sig00000195, sig00000194, sig00000193, sig00000192, sig00000191, sig00000190, sig0000018f, sig0000018e, 
sig0000018d, sig0000018c, sig0000018b, sig0000018a, \NLW_blk0000008c_P<3>_UNCONNECTED , \NLW_blk0000008c_P<2>_UNCONNECTED , 
\NLW_blk0000008c_P<1>_UNCONNECTED , \NLW_blk0000008c_P<0>_UNCONNECTED }),
    .OPMODE({sig00000147, sig00000002, sig00000002, sig00000002, sig00000002, sig00000001, sig00000002, sig00000001}),
    .D({sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002
, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, sig00000002}),
    .PCOUT({\NLW_blk0000008c_PCOUT<47>_UNCONNECTED , \NLW_blk0000008c_PCOUT<46>_UNCONNECTED , \NLW_blk0000008c_PCOUT<45>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<44>_UNCONNECTED , \NLW_blk0000008c_PCOUT<43>_UNCONNECTED , \NLW_blk0000008c_PCOUT<42>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<41>_UNCONNECTED , \NLW_blk0000008c_PCOUT<40>_UNCONNECTED , \NLW_blk0000008c_PCOUT<39>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<38>_UNCONNECTED , \NLW_blk0000008c_PCOUT<37>_UNCONNECTED , \NLW_blk0000008c_PCOUT<36>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<35>_UNCONNECTED , \NLW_blk0000008c_PCOUT<34>_UNCONNECTED , \NLW_blk0000008c_PCOUT<33>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<32>_UNCONNECTED , \NLW_blk0000008c_PCOUT<31>_UNCONNECTED , \NLW_blk0000008c_PCOUT<30>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<29>_UNCONNECTED , \NLW_blk0000008c_PCOUT<28>_UNCONNECTED , \NLW_blk0000008c_PCOUT<27>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<26>_UNCONNECTED , \NLW_blk0000008c_PCOUT<25>_UNCONNECTED , \NLW_blk0000008c_PCOUT<24>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<23>_UNCONNECTED , \NLW_blk0000008c_PCOUT<22>_UNCONNECTED , \NLW_blk0000008c_PCOUT<21>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<20>_UNCONNECTED , \NLW_blk0000008c_PCOUT<19>_UNCONNECTED , \NLW_blk0000008c_PCOUT<18>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<17>_UNCONNECTED , \NLW_blk0000008c_PCOUT<16>_UNCONNECTED , \NLW_blk0000008c_PCOUT<15>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<14>_UNCONNECTED , \NLW_blk0000008c_PCOUT<13>_UNCONNECTED , \NLW_blk0000008c_PCOUT<12>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<11>_UNCONNECTED , \NLW_blk0000008c_PCOUT<10>_UNCONNECTED , \NLW_blk0000008c_PCOUT<9>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<8>_UNCONNECTED , \NLW_blk0000008c_PCOUT<7>_UNCONNECTED , \NLW_blk0000008c_PCOUT<6>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<5>_UNCONNECTED , \NLW_blk0000008c_PCOUT<4>_UNCONNECTED , \NLW_blk0000008c_PCOUT<3>_UNCONNECTED , 
\NLW_blk0000008c_PCOUT<2>_UNCONNECTED , \NLW_blk0000008c_PCOUT<1>_UNCONNECTED , \NLW_blk0000008c_PCOUT<0>_UNCONNECTED }),
    .A({sig0000019e, sig0000019e, sig0000019e, sig0000019e, sig0000019e, sig0000019e, sig0000019e, sig0000019e, sig0000019e, sig0000019e, sig0000019d
, sig0000019c, sig0000019b, sig0000019a, sig00000199, sig00000198, sig00000197, sig00000196}),
    .M({\NLW_blk0000008c_M<35>_UNCONNECTED , \NLW_blk0000008c_M<34>_UNCONNECTED , \NLW_blk0000008c_M<33>_UNCONNECTED , 
\NLW_blk0000008c_M<32>_UNCONNECTED , \NLW_blk0000008c_M<31>_UNCONNECTED , \NLW_blk0000008c_M<30>_UNCONNECTED , \NLW_blk0000008c_M<29>_UNCONNECTED , 
\NLW_blk0000008c_M<28>_UNCONNECTED , \NLW_blk0000008c_M<27>_UNCONNECTED , \NLW_blk0000008c_M<26>_UNCONNECTED , \NLW_blk0000008c_M<25>_UNCONNECTED , 
\NLW_blk0000008c_M<24>_UNCONNECTED , \NLW_blk0000008c_M<23>_UNCONNECTED , \NLW_blk0000008c_M<22>_UNCONNECTED , \NLW_blk0000008c_M<21>_UNCONNECTED , 
\NLW_blk0000008c_M<20>_UNCONNECTED , \NLW_blk0000008c_M<19>_UNCONNECTED , \NLW_blk0000008c_M<18>_UNCONNECTED , \NLW_blk0000008c_M<17>_UNCONNECTED , 
\NLW_blk0000008c_M<16>_UNCONNECTED , \NLW_blk0000008c_M<15>_UNCONNECTED , \NLW_blk0000008c_M<14>_UNCONNECTED , \NLW_blk0000008c_M<13>_UNCONNECTED , 
\NLW_blk0000008c_M<12>_UNCONNECTED , \NLW_blk0000008c_M<11>_UNCONNECTED , \NLW_blk0000008c_M<10>_UNCONNECTED , \NLW_blk0000008c_M<9>_UNCONNECTED , 
\NLW_blk0000008c_M<8>_UNCONNECTED , \NLW_blk0000008c_M<7>_UNCONNECTED , \NLW_blk0000008c_M<6>_UNCONNECTED , \NLW_blk0000008c_M<5>_UNCONNECTED , 
\NLW_blk0000008c_M<4>_UNCONNECTED , \NLW_blk0000008c_M<3>_UNCONNECTED , \NLW_blk0000008c_M<2>_UNCONNECTED , \NLW_blk0000008c_M<1>_UNCONNECTED , 
\NLW_blk0000008c_M<0>_UNCONNECTED })
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008d (
    .C(clk),
    .CE(ce),
    .D(sig000001b7),
    .Q(sig00000181)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008e (
    .C(clk),
    .CE(ce),
    .D(sig000001b6),
    .Q(sig00000180)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008f (
    .C(clk),
    .CE(ce),
    .D(sig000001b5),
    .Q(sig0000017f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000090 (
    .C(clk),
    .CE(ce),
    .D(sig000001b4),
    .Q(sig0000017e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000091 (
    .C(clk),
    .CE(ce),
    .D(sig000001b3),
    .Q(sig0000017d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000092 (
    .C(clk),
    .CE(ce),
    .D(sig000001b2),
    .Q(sig0000017c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000093 (
    .C(clk),
    .CE(ce),
    .D(sig000001b1),
    .Q(sig0000017b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000094 (
    .C(clk),
    .CE(ce),
    .D(sig000001b0),
    .Q(sig0000017a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000095 (
    .C(clk),
    .CE(ce),
    .D(sig000001af),
    .Q(sig00000189)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000096 (
    .C(clk),
    .CE(ce),
    .D(sig000001ae),
    .Q(sig00000188)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000097 (
    .C(clk),
    .CE(ce),
    .D(sig000001ad),
    .Q(sig00000187)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000098 (
    .C(clk),
    .CE(ce),
    .D(sig000001ac),
    .Q(sig00000186)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000099 (
    .C(clk),
    .CE(ce),
    .D(sig000001ab),
    .Q(sig00000185)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009a (
    .C(clk),
    .CE(ce),
    .D(sig000001aa),
    .Q(sig00000184)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009b (
    .C(clk),
    .CE(ce),
    .D(sig000001a9),
    .Q(sig00000183)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009c (
    .C(clk),
    .CE(ce),
    .D(sig000001a8),
    .Q(sig00000182)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009d (
    .C(clk),
    .CE(ce),
    .D(sig00000178),
    .Q(sig00000179)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009e (
    .C(clk),
    .CE(ce),
    .D(sig00000014),
    .Q(sig0000019e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000009f (
    .C(clk),
    .CE(ce),
    .D(sig00000013),
    .Q(sig0000019d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a0 (
    .C(clk),
    .CE(ce),
    .D(sig00000012),
    .Q(sig0000019c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a1 (
    .C(clk),
    .CE(ce),
    .D(sig00000011),
    .Q(sig0000019b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a2 (
    .C(clk),
    .CE(ce),
    .D(sig00000010),
    .Q(sig0000019a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a3 (
    .C(clk),
    .CE(ce),
    .D(sig0000000f),
    .Q(sig00000199)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a4 (
    .C(clk),
    .CE(ce),
    .D(sig0000000e),
    .Q(sig00000198)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a5 (
    .C(clk),
    .CE(ce),
    .D(sig0000000d),
    .Q(sig00000197)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a6 (
    .C(clk),
    .CE(ce),
    .D(sig0000000c),
    .Q(sig00000196)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a7 (
    .C(clk),
    .CE(ce),
    .D(sig0000001d),
    .Q(sig000001a7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a8 (
    .C(clk),
    .CE(ce),
    .D(sig0000001c),
    .Q(sig000001a6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000a9 (
    .C(clk),
    .CE(ce),
    .D(sig0000001b),
    .Q(sig000001a5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000aa (
    .C(clk),
    .CE(ce),
    .D(sig0000001a),
    .Q(sig000001a4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ab (
    .C(clk),
    .CE(ce),
    .D(sig00000019),
    .Q(sig000001a3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ac (
    .C(clk),
    .CE(ce),
    .D(sig00000018),
    .Q(sig000001a2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ad (
    .C(clk),
    .CE(ce),
    .D(sig00000017),
    .Q(sig000001a1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ae (
    .C(clk),
    .CE(ce),
    .D(sig00000016),
    .Q(sig000001a0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000af (
    .C(clk),
    .CE(ce),
    .D(sig00000015),
    .Q(sig0000019f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b0 (
    .C(clk),
    .CE(sig000001b8),
    .D(sig000001c5),
    .Q(sig00000102)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b1 (
    .C(clk),
    .CE(sig000001b8),
    .D(sig000001c4),
    .Q(sig00000101)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b2 (
    .C(clk),
    .CE(sig000001b8),
    .D(sig000001c3),
    .Q(sig00000100)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b3 (
    .C(clk),
    .CE(sig000001b8),
    .D(sig000001c2),
    .Q(sig000000ff)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b4 (
    .C(clk),
    .CE(sig000001b8),
    .D(sig000001c1),
    .Q(sig000000fe)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b5 (
    .C(clk),
    .CE(sig000001b8),
    .D(sig000001c0),
    .Q(sig000000fd)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b6 (
    .C(clk),
    .CE(sig000001b8),
    .D(sig000001bf),
    .Q(sig000000fc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b7 (
    .C(clk),
    .CE(sig000001b8),
    .D(sig000001be),
    .Q(sig000000fb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b8 (
    .C(clk),
    .CE(sig000001b8),
    .D(sig000001bd),
    .Q(sig000000fa)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b9 (
    .C(clk),
    .CE(sig000001b8),
    .D(sig000001bc),
    .Q(sig000000f9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ba (
    .C(clk),
    .CE(sig000001b8),
    .D(sig000001bb),
    .Q(sig000000f8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bb (
    .C(clk),
    .CE(sig000001b8),
    .D(sig000001ba),
    .Q(sig000000f7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bc (
    .C(clk),
    .CE(ce),
    .D(sig00000195),
    .Q(sig000001c5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bd (
    .C(clk),
    .CE(ce),
    .D(sig00000194),
    .Q(sig000001c4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000be (
    .C(clk),
    .CE(ce),
    .D(sig00000193),
    .Q(sig000001c3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000bf (
    .C(clk),
    .CE(ce),
    .D(sig00000192),
    .Q(sig000001c2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c0 (
    .C(clk),
    .CE(ce),
    .D(sig00000191),
    .Q(sig000001c1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c1 (
    .C(clk),
    .CE(ce),
    .D(sig00000190),
    .Q(sig000001c0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c2 (
    .C(clk),
    .CE(ce),
    .D(sig0000018f),
    .Q(sig000001bf)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c3 (
    .C(clk),
    .CE(ce),
    .D(sig0000018e),
    .Q(sig000001be)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c4 (
    .C(clk),
    .CE(ce),
    .D(sig0000018d),
    .Q(sig000001bd)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c5 (
    .C(clk),
    .CE(ce),
    .D(sig0000018c),
    .Q(sig000001bc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c6 (
    .C(clk),
    .CE(ce),
    .D(sig0000018b),
    .Q(sig000001bb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c7 (
    .C(clk),
    .CE(ce),
    .D(sig0000018a),
    .Q(sig000001ba)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c8 (
    .C(clk),
    .CE(sig000001b8),
    .D(sig00000195),
    .Q(sig000000f6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000c9 (
    .C(clk),
    .CE(sig000001b8),
    .D(sig00000194),
    .Q(sig000000f5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ca (
    .C(clk),
    .CE(sig000001b8),
    .D(sig00000193),
    .Q(sig000000f4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000cb (
    .C(clk),
    .CE(sig000001b8),
    .D(sig00000192),
    .Q(sig000000f3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000cc (
    .C(clk),
    .CE(sig000001b8),
    .D(sig00000191),
    .Q(sig000000f2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000cd (
    .C(clk),
    .CE(sig000001b8),
    .D(sig00000190),
    .Q(sig000000f1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ce (
    .C(clk),
    .CE(sig000001b8),
    .D(sig0000018f),
    .Q(sig000000f0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000cf (
    .C(clk),
    .CE(sig000001b8),
    .D(sig0000018e),
    .Q(sig000000ef)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d0 (
    .C(clk),
    .CE(sig000001b8),
    .D(sig0000018d),
    .Q(sig000000ee)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d1 (
    .C(clk),
    .CE(sig000001b8),
    .D(sig0000018c),
    .Q(sig000000ed)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d2 (
    .C(clk),
    .CE(sig000001b8),
    .D(sig0000018b),
    .Q(sig000000ec)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000d3 (
    .C(clk),
    .CE(sig000001b8),
    .D(sig0000018a),
    .Q(sig000000eb)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000d4 (
    .I0(sig00000096),
    .I1(sig0000012e),
    .I2(sig00000005),
    .O(sig000000e2)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000d5 (
    .I0(sig00000095),
    .I1(sig0000012d),
    .I2(sig00000005),
    .O(sig000000e1)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000d6 (
    .I0(sig00000094),
    .I1(sig0000012c),
    .I2(sig00000005),
    .O(sig000000e0)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000d7 (
    .I0(sig00000093),
    .I1(sig0000012b),
    .I2(sig00000005),
    .O(sig000000df)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000d8 (
    .I0(sig00000092),
    .I1(sig0000012a),
    .I2(sig00000005),
    .O(sig000000de)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000d9 (
    .I0(sig00000091),
    .I1(sig00000129),
    .I2(sig00000005),
    .O(sig000000dd)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000da (
    .I0(sig00000090),
    .I1(sig00000128),
    .I2(sig00000005),
    .O(sig000000dc)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000db (
    .I0(sig0000008f),
    .I1(sig00000127),
    .I2(sig00000005),
    .O(sig000000db)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000dc (
    .I0(sig0000009e),
    .I1(sig00000136),
    .I2(sig00000005),
    .O(sig000000ea)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000dd (
    .I0(sig0000009d),
    .I1(sig00000135),
    .I2(sig00000005),
    .O(sig000000e9)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000de (
    .I0(sig0000009c),
    .I1(sig00000134),
    .I2(sig00000005),
    .O(sig000000e8)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000df (
    .I0(sig0000009b),
    .I1(sig00000133),
    .I2(sig00000005),
    .O(sig000000e7)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000e0 (
    .I0(sig0000009a),
    .I1(sig00000132),
    .I2(sig00000005),
    .O(sig000000e6)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000e1 (
    .I0(sig00000099),
    .I1(sig00000131),
    .I2(sig00000005),
    .O(sig000000e5)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000e2 (
    .I0(sig00000098),
    .I1(sig00000130),
    .I2(sig00000005),
    .O(sig000000e4)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000e3 (
    .I0(sig00000097),
    .I1(sig0000012f),
    .I2(sig00000005),
    .O(sig000000e3)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000f7 (
    .I0(sig00000002),
    .I1(sig000000d2),
    .I2(sig00000007),
    .O(sig000001c6)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000f8 (
    .I0(sig00000002),
    .I1(sig000000d1),
    .I2(sig00000007),
    .O(sig000001c7)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000f9 (
    .I0(sig00000002),
    .I1(sig000000d0),
    .I2(sig00000007),
    .O(sig000001c8)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000fa (
    .I0(sig00000002),
    .I1(sig000000cf),
    .I2(sig00000007),
    .O(sig000001c9)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000fb (
    .I0(sig00000002),
    .I1(sig000000ce),
    .I2(sig00000007),
    .O(sig000001ca)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000fc (
    .I0(sig00000002),
    .I1(sig000000cd),
    .I2(sig00000007),
    .O(sig000001cb)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000fd (
    .I0(sig00000002),
    .I1(sig000000cc),
    .I2(sig00000007),
    .O(sig000001cc)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000000fe (
    .I0(sig00000002),
    .I1(sig000000cb),
    .I2(sig00000007),
    .O(sig000001cd)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000000ff (
    .C(clk),
    .CE(ce),
    .D(sig000001c6),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000100 (
    .C(clk),
    .CE(ce),
    .D(sig000001c7),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000101 (
    .C(clk),
    .CE(ce),
    .D(sig000001c8),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000102 (
    .C(clk),
    .CE(ce),
    .D(sig000001c9),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000103 (
    .C(clk),
    .CE(ce),
    .D(sig000001ca),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000104 (
    .C(clk),
    .CE(ce),
    .D(sig000001cb),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000105 (
    .C(clk),
    .CE(ce),
    .D(sig000001cc),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000106 (
    .C(clk),
    .CE(ce),
    .D(sig000001cd),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_im_mux/Q [0])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000107 (
    .I0(sig00000002),
    .I1(sig000000da),
    .I2(sig00000007),
    .O(sig000001ce)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000108 (
    .I0(sig00000002),
    .I1(sig000000d9),
    .I2(sig00000007),
    .O(sig000001cf)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk00000109 (
    .I0(sig00000002),
    .I1(sig000000d8),
    .I2(sig00000007),
    .O(sig000001d0)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000010a (
    .I0(sig00000002),
    .I1(sig000000d7),
    .I2(sig00000007),
    .O(sig000001d1)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000010b (
    .I0(sig00000002),
    .I1(sig000000d6),
    .I2(sig00000007),
    .O(sig000001d2)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000010c (
    .I0(sig00000002),
    .I1(sig000000d5),
    .I2(sig00000007),
    .O(sig000001d3)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000010d (
    .I0(sig00000002),
    .I1(sig000000d4),
    .I2(sig00000007),
    .O(sig000001d4)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk0000010e (
    .I0(sig00000002),
    .I1(sig000000d3),
    .I2(sig00000007),
    .O(sig000001d5)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000010f (
    .C(clk),
    .CE(ce),
    .D(sig000001ce),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000110 (
    .C(clk),
    .CE(ce),
    .D(sig000001cf),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000111 (
    .C(clk),
    .CE(ce),
    .D(sig000001d0),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000112 (
    .C(clk),
    .CE(ce),
    .D(sig000001d1),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000113 (
    .C(clk),
    .CE(ce),
    .D(sig000001d2),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000114 (
    .C(clk),
    .CE(ce),
    .D(sig000001d3),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000115 (
    .C(clk),
    .CE(ce),
    .D(sig000001d4),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000116 (
    .C(clk),
    .CE(ce),
    .D(sig000001d5),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/single_channel.datapath/xk_re_mux/Q [0])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000011d (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000054),
    .Q(sig000001d6)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000011e (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000053),
    .Q(sig000001d7)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000011f (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000052),
    .Q(sig000001d8)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000120 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000051),
    .Q(sig000001d9)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000121 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000050),
    .Q(sig000001da)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000122 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000004f),
    .Q(sig000001db)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000123 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000004e),
    .Q(sig000001dc)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000124 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000004d),
    .Q(sig000001dd)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000125 (
    .C(clk),
    .CE(ce),
    .D(sig000001d6),
    .R(sig00000002),
    .Q(sig000000c1)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000126 (
    .C(clk),
    .CE(ce),
    .D(sig000001d7),
    .R(sig00000002),
    .Q(sig000000c0)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000127 (
    .C(clk),
    .CE(ce),
    .D(sig000001d8),
    .R(sig00000002),
    .Q(sig000000bf)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000128 (
    .C(clk),
    .CE(ce),
    .D(sig000001d9),
    .R(sig00000002),
    .Q(sig000000be)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000129 (
    .C(clk),
    .CE(ce),
    .D(sig000001da),
    .R(sig00000002),
    .Q(sig000000bd)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000012a (
    .C(clk),
    .CE(ce),
    .D(sig000001db),
    .R(sig00000002),
    .Q(sig000000bc)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000012b (
    .C(clk),
    .CE(ce),
    .D(sig000001dc),
    .R(sig00000002),
    .Q(sig000000bb)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000012c (
    .C(clk),
    .CE(ce),
    .D(sig000001dd),
    .R(sig00000002),
    .Q(sig000000ba)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000012d (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000005c),
    .Q(sig000001de)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000012e (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000005b),
    .Q(sig000001df)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000012f (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000005a),
    .Q(sig000001e0)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000130 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000059),
    .Q(sig000001e1)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000131 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000058),
    .Q(sig000001e2)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000132 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000057),
    .Q(sig000001e3)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000133 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000056),
    .Q(sig000001e4)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000134 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000055),
    .Q(sig000001e5)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000135 (
    .C(clk),
    .CE(ce),
    .D(sig000001de),
    .R(sig00000002),
    .Q(sig000000c9)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000136 (
    .C(clk),
    .CE(ce),
    .D(sig000001df),
    .R(sig00000002),
    .Q(sig000000c8)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000137 (
    .C(clk),
    .CE(ce),
    .D(sig000001e0),
    .R(sig00000002),
    .Q(sig000000c7)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000138 (
    .C(clk),
    .CE(ce),
    .D(sig000001e1),
    .R(sig00000002),
    .Q(sig000000c6)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000139 (
    .C(clk),
    .CE(ce),
    .D(sig000001e2),
    .R(sig00000002),
    .Q(sig000000c5)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000013a (
    .C(clk),
    .CE(ce),
    .D(sig000001e3),
    .R(sig00000002),
    .Q(sig000000c4)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000013b (
    .C(clk),
    .CE(ce),
    .D(sig000001e4),
    .R(sig00000002),
    .Q(sig000000c3)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000013c (
    .C(clk),
    .CE(ce),
    .D(sig000001e5),
    .R(sig00000002),
    .Q(sig000000c2)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000001fb (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig000000ac),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001e6)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000001fc (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig000000ac),
    .I3(sig000000ad),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001e7)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000001fd (
    .I0(sig00000002),
    .I1(sig000000ac),
    .I2(sig000000ad),
    .I3(sig000000ae),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001e8)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000001fe (
    .I0(sig000000ac),
    .I1(sig000000ad),
    .I2(sig000000ae),
    .I3(sig000000af),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001e9)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk000001ff (
    .I0(sig000000ad),
    .I1(sig000000ae),
    .I2(sig000000af),
    .I3(sig000000b0),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001ea)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000200 (
    .I0(sig000000ae),
    .I1(sig000000af),
    .I2(sig000000b0),
    .I3(sig000000b1),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001eb)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000201 (
    .I0(sig000000af),
    .I1(sig000000b0),
    .I2(sig000000b1),
    .I3(sig000000b2),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001ec)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000202 (
    .I0(sig000000b0),
    .I1(sig000000b1),
    .I2(sig000000b2),
    .I3(sig000000b3),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001ed)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000203 (
    .I0(sig000000b1),
    .I1(sig000000b2),
    .I2(sig000000b3),
    .I3(sig000000b4),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001ee)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000204 (
    .I0(sig000000b2),
    .I1(sig000000b3),
    .I2(sig000000b4),
    .I3(sig000000b5),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001ef)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000205 (
    .I0(sig000000b3),
    .I1(sig000000b4),
    .I2(sig000000b5),
    .I3(sig000000b6),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001f0)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000206 (
    .I0(sig000000b4),
    .I1(sig000000b5),
    .I2(sig000000b6),
    .I3(sig000000b7),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001f1)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000207 (
    .I0(sig000000b5),
    .I1(sig000000b6),
    .I2(sig000000b7),
    .I3(sig000000b8),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001f2)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000208 (
    .I0(sig000000b6),
    .I1(sig000000b7),
    .I2(sig000000b8),
    .I3(sig000000b8),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001f3)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000209 (
    .I0(sig000000b7),
    .I1(sig000000b8),
    .I2(sig000000b8),
    .I3(sig000000b8),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001f4)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000020a (
    .I0(sig000000b8),
    .I1(sig000000b8),
    .I2(sig000000b8),
    .I3(sig000000b8),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001f5)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000020b (
    .C(clk),
    .CE(ce),
    .D(sig000001e6),
    .R(sig00000002),
    .Q(NLW_blk0000020b_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000020c (
    .C(clk),
    .CE(ce),
    .D(sig000001e7),
    .R(sig00000002),
    .Q(NLW_blk0000020c_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000020d (
    .C(clk),
    .CE(ce),
    .D(sig000001e8),
    .R(sig00000002),
    .Q(NLW_blk0000020d_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000020e (
    .C(clk),
    .CE(ce),
    .D(sig000001e9),
    .R(sig00000002),
    .Q(NLW_blk0000020e_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000020f (
    .C(clk),
    .CE(ce),
    .D(sig000001ea),
    .R(sig00000002),
    .Q(NLW_blk0000020f_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000210 (
    .C(clk),
    .CE(ce),
    .D(sig000001eb),
    .R(sig00000002),
    .Q(NLW_blk00000210_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000211 (
    .C(clk),
    .CE(ce),
    .D(sig000001ec),
    .R(sig00000002),
    .Q(sig00000097)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000212 (
    .C(clk),
    .CE(ce),
    .D(sig000001ed),
    .R(sig00000002),
    .Q(sig00000098)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000213 (
    .C(clk),
    .CE(ce),
    .D(sig000001ee),
    .R(sig00000002),
    .Q(sig00000099)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000214 (
    .C(clk),
    .CE(ce),
    .D(sig000001ef),
    .R(sig00000002),
    .Q(sig0000009a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000215 (
    .C(clk),
    .CE(ce),
    .D(sig000001f0),
    .R(sig00000002),
    .Q(sig0000009b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000216 (
    .C(clk),
    .CE(ce),
    .D(sig000001f1),
    .R(sig00000002),
    .Q(sig0000009c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000217 (
    .C(clk),
    .CE(ce),
    .D(sig000001f2),
    .R(sig00000002),
    .Q(sig0000009d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000218 (
    .C(clk),
    .CE(ce),
    .D(sig000001f3),
    .R(sig00000002),
    .Q(sig0000009e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000219 (
    .C(clk),
    .CE(ce),
    .D(sig000001f4),
    .R(sig00000002),
    .Q(NLW_blk00000219_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000021a (
    .C(clk),
    .CE(ce),
    .D(sig000001f5),
    .R(sig00000002),
    .Q(NLW_blk0000021a_Q_UNCONNECTED)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000021b (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig0000009f),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001f6)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000021c (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig0000009f),
    .I3(sig000000a0),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001f7)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000021d (
    .I0(sig00000002),
    .I1(sig0000009f),
    .I2(sig000000a0),
    .I3(sig000000a1),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001f8)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000021e (
    .I0(sig0000009f),
    .I1(sig000000a0),
    .I2(sig000000a1),
    .I3(sig000000a2),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001f9)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000021f (
    .I0(sig000000a0),
    .I1(sig000000a1),
    .I2(sig000000a2),
    .I3(sig000000a3),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001fa)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000220 (
    .I0(sig000000a1),
    .I1(sig000000a2),
    .I2(sig000000a3),
    .I3(sig000000a4),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001fb)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000221 (
    .I0(sig000000a2),
    .I1(sig000000a3),
    .I2(sig000000a4),
    .I3(sig000000a5),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001fc)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000222 (
    .I0(sig000000a3),
    .I1(sig000000a4),
    .I2(sig000000a5),
    .I3(sig000000a6),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001fd)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000223 (
    .I0(sig000000a4),
    .I1(sig000000a5),
    .I2(sig000000a6),
    .I3(sig000000a7),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001fe)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000224 (
    .I0(sig000000a5),
    .I1(sig000000a6),
    .I2(sig000000a7),
    .I3(sig000000a8),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig000001ff)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000225 (
    .I0(sig000000a6),
    .I1(sig000000a7),
    .I2(sig000000a8),
    .I3(sig000000a9),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000200)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000226 (
    .I0(sig000000a7),
    .I1(sig000000a8),
    .I2(sig000000a9),
    .I3(sig000000aa),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000201)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000227 (
    .I0(sig000000a8),
    .I1(sig000000a9),
    .I2(sig000000aa),
    .I3(sig000000ab),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000202)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000228 (
    .I0(sig000000a9),
    .I1(sig000000aa),
    .I2(sig000000ab),
    .I3(sig000000ab),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000203)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000229 (
    .I0(sig000000aa),
    .I1(sig000000ab),
    .I2(sig000000ab),
    .I3(sig000000ab),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000204)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000022a (
    .I0(sig000000ab),
    .I1(sig000000ab),
    .I2(sig000000ab),
    .I3(sig000000ab),
    .I4(sig0000007d),
    .I5(sig0000007e),
    .O(sig00000205)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000022b (
    .C(clk),
    .CE(ce),
    .D(sig000001f6),
    .R(sig00000002),
    .Q(NLW_blk0000022b_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000022c (
    .C(clk),
    .CE(ce),
    .D(sig000001f7),
    .R(sig00000002),
    .Q(NLW_blk0000022c_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000022d (
    .C(clk),
    .CE(ce),
    .D(sig000001f8),
    .R(sig00000002),
    .Q(NLW_blk0000022d_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000022e (
    .C(clk),
    .CE(ce),
    .D(sig000001f9),
    .R(sig00000002),
    .Q(NLW_blk0000022e_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000022f (
    .C(clk),
    .CE(ce),
    .D(sig000001fa),
    .R(sig00000002),
    .Q(NLW_blk0000022f_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000230 (
    .C(clk),
    .CE(ce),
    .D(sig000001fb),
    .R(sig00000002),
    .Q(NLW_blk00000230_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000231 (
    .C(clk),
    .CE(ce),
    .D(sig000001fc),
    .R(sig00000002),
    .Q(sig0000008f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000232 (
    .C(clk),
    .CE(ce),
    .D(sig000001fd),
    .R(sig00000002),
    .Q(sig00000090)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000233 (
    .C(clk),
    .CE(ce),
    .D(sig000001fe),
    .R(sig00000002),
    .Q(sig00000091)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000234 (
    .C(clk),
    .CE(ce),
    .D(sig000001ff),
    .R(sig00000002),
    .Q(sig00000092)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000235 (
    .C(clk),
    .CE(ce),
    .D(sig00000200),
    .R(sig00000002),
    .Q(sig00000093)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000236 (
    .C(clk),
    .CE(ce),
    .D(sig00000201),
    .R(sig00000002),
    .Q(sig00000094)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000237 (
    .C(clk),
    .CE(ce),
    .D(sig00000202),
    .R(sig00000002),
    .Q(sig00000095)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000238 (
    .C(clk),
    .CE(ce),
    .D(sig00000203),
    .R(sig00000002),
    .Q(sig00000096)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000239 (
    .C(clk),
    .CE(ce),
    .D(sig00000204),
    .R(sig00000002),
    .Q(NLW_blk00000239_Q_UNCONNECTED)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000023a (
    .C(clk),
    .CE(ce),
    .D(sig00000205),
    .R(sig00000002),
    .Q(NLW_blk0000023a_Q_UNCONNECTED)
  );
  LUT1 #(
    .INIT ( 2'h1 ))
  blk0000023b (
    .I0(sig00000002),
    .O(sig00000262)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk0000023c (
    .I0(sig00000291),
    .I1(sig00000240),
    .O(sig00000263)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk0000023d (
    .I0(sig000002ce),
    .I1(sig000002a5),
    .I2(sig00000258),
    .I3(sig00000238),
    .O(sig00000266)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk0000023e (
    .I0(sig000002cd),
    .I1(sig000002a5),
    .I2(sig00000258),
    .I3(sig00000239),
    .O(sig00000267)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk0000023f (
    .I0(sig000002cc),
    .I1(sig000002a5),
    .I2(sig00000258),
    .I3(sig0000023a),
    .O(sig00000268)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk00000240 (
    .I0(sig000002cb),
    .I1(sig000002a5),
    .I2(sig00000258),
    .I3(sig0000023b),
    .O(sig00000269)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk00000241 (
    .I0(sig000002ca),
    .I1(sig000002a5),
    .I2(sig00000258),
    .I3(sig0000023c),
    .O(sig0000026a)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk00000242 (
    .I0(sig000002c9),
    .I1(sig000002a5),
    .I2(sig00000258),
    .I3(sig0000023d),
    .O(sig0000026b)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk00000243 (
    .I0(sig000002c8),
    .I1(sig000002a5),
    .I2(sig00000258),
    .I3(sig0000023e),
    .O(sig0000026c)
  );
  LUT4 #(
    .INIT ( 16'h2E22 ))
  blk00000244 (
    .I0(sig000002c7),
    .I1(sig000002a5),
    .I2(sig00000258),
    .I3(sig0000023f),
    .O(sig0000026d)
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  blk00000245 (
    .I0(sig000002a6),
    .I1(sig0000024d),
    .I2(sig0000024c),
    .O(sig0000026e)
  );
  MUXCY   blk00000246 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig00000259),
    .O(sig00000270)
  );
  MUXCY   blk00000247 (
    .CI(sig00000270),
    .DI(sig00000002),
    .S(sig0000025a),
    .O(sig00000271)
  );
  MUXCY   blk00000248 (
    .CI(sig00000271),
    .DI(sig00000002),
    .S(sig0000025b),
    .O(sig00000272)
  );
  MUXCY   blk00000249 (
    .CI(sig00000272),
    .DI(sig00000002),
    .S(sig0000025c),
    .O(sig00000273)
  );
  MUXCY   blk0000024a (
    .CI(sig00000273),
    .DI(sig00000002),
    .S(sig0000025d),
    .O(sig00000274)
  );
  MUXCY   blk0000024b (
    .CI(sig00000274),
    .DI(sig00000002),
    .S(sig0000025e),
    .O(sig00000275)
  );
  MUXCY   blk0000024c (
    .CI(sig00000275),
    .DI(sig00000002),
    .S(sig0000025f),
    .O(sig00000276)
  );
  MUXCY   blk0000024d (
    .CI(sig00000276),
    .DI(sig00000002),
    .S(sig00000260),
    .O(sig00000277)
  );
  MUXCY   blk0000024e (
    .CI(sig00000277),
    .DI(sig00000002),
    .S(sig00000261),
    .O(sig00000278)
  );
  MUXCY   blk0000024f (
    .CI(sig00000278),
    .DI(sig00000002),
    .S(sig00000262),
    .O(sig0000027d)
  );
  MUXCY   blk00000250 (
    .CI(sig00000286),
    .DI(sig00000002),
    .S(sig00000265),
    .O(sig0000027f)
  );
  XORCY   blk00000251 (
    .CI(sig0000027d),
    .LI(sig00000002),
    .O(sig00000285)
  );
  MUXCY   blk00000252 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig00000280),
    .O(sig00000286)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000253 (
    .C(clk),
    .CE(sig0000026f),
    .D(sig00000281),
    .Q(sig00000229)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000254 (
    .C(clk),
    .CE(sig0000026f),
    .D(sig00000282),
    .Q(sig0000022a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000255 (
    .C(clk),
    .CE(sig0000026f),
    .D(sig00000283),
    .Q(sig0000022b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000256 (
    .C(clk),
    .CE(sig0000026f),
    .D(sig00000284),
    .Q(sig0000022c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000257 (
    .C(clk),
    .CE(ce),
    .D(sig00000264),
    .R(sig00000002),
    .Q(sig0000022d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000258 (
    .C(clk),
    .CE(ce),
    .D(sig00000206),
    .R(sig00000002),
    .Q(sig0000022e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000259 (
    .C(clk),
    .CE(ce),
    .D(sig00000207),
    .R(sig00000002),
    .Q(sig0000022f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000025a (
    .C(clk),
    .CE(ce),
    .D(sig00000208),
    .R(sig00000002),
    .Q(sig00000230)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000025b (
    .C(clk),
    .CE(ce),
    .D(sig00000209),
    .R(sig00000002),
    .Q(sig00000231)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000025c (
    .C(clk),
    .CE(ce),
    .D(sig0000020a),
    .R(sig00000002),
    .Q(sig00000232)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000025d (
    .C(clk),
    .CE(ce),
    .D(sig0000020b),
    .R(sig00000002),
    .Q(sig00000233)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000025e (
    .C(clk),
    .CE(ce),
    .D(sig0000020c),
    .R(sig00000002),
    .Q(sig00000234)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000025f (
    .C(clk),
    .CE(ce),
    .D(sig0000020d),
    .R(sig00000002),
    .Q(sig00000235)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000260 (
    .C(clk),
    .CE(ce),
    .D(sig00000002),
    .R(sig00000002),
    .Q(sig00000236)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000261 (
    .C(clk),
    .CE(ce),
    .D(sig00000287),
    .R(sig00000002),
    .Q(sig00000243)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000262 (
    .C(clk),
    .CE(ce),
    .D(sig00000288),
    .R(sig00000002),
    .Q(sig00000244)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000263 (
    .C(clk),
    .CE(ce),
    .D(sig00000289),
    .R(sig00000002),
    .Q(sig00000245)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000264 (
    .C(clk),
    .CE(ce),
    .D(sig0000028a),
    .R(sig00000002),
    .Q(sig00000246)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000265 (
    .C(clk),
    .CE(ce),
    .D(sig0000028b),
    .R(sig00000002),
    .Q(sig00000247)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000266 (
    .C(clk),
    .CE(ce),
    .D(sig0000028c),
    .R(sig00000002),
    .Q(sig00000248)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000267 (
    .C(clk),
    .CE(ce),
    .D(sig0000028d),
    .R(sig00000002),
    .Q(sig00000249)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000268 (
    .C(clk),
    .CE(ce),
    .D(sig0000028e),
    .R(sig00000002),
    .Q(sig0000024a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000269 (
    .C(clk),
    .CE(ce),
    .D(sig0000028f),
    .R(sig00000002),
    .Q(sig00000237)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000026a (
    .C(clk),
    .CE(ce),
    .D(sig00000285),
    .Q(sig000002a5)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000026b (
    .C(clk),
    .CE(ce),
    .D(sig00000243),
    .R(sig00000002),
    .Q(sig00000238)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000026c (
    .C(clk),
    .CE(ce),
    .D(sig00000244),
    .R(sig00000002),
    .Q(sig00000239)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000026d (
    .C(clk),
    .CE(ce),
    .D(sig00000245),
    .R(sig00000002),
    .Q(sig0000023a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000026e (
    .C(clk),
    .CE(ce),
    .D(sig00000246),
    .R(sig00000002),
    .Q(sig0000023b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000026f (
    .C(clk),
    .CE(ce),
    .D(sig00000247),
    .R(sig00000002),
    .Q(sig0000023c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000270 (
    .C(clk),
    .CE(ce),
    .D(sig00000248),
    .R(sig00000002),
    .Q(sig0000023d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000271 (
    .C(clk),
    .CE(ce),
    .D(sig00000249),
    .R(sig00000002),
    .Q(sig0000023e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000272 (
    .C(clk),
    .CE(ce),
    .D(sig0000024a),
    .R(sig00000002),
    .Q(sig0000023f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000273 (
    .C(clk),
    .CE(ce),
    .D(sig0000027f),
    .R(sig00000002),
    .Q(sig00000240)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000274 (
    .C(clk),
    .CE(ce),
    .D(sig00000263),
    .R(sig00000002),
    .Q(sig00000241)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000275 (
    .C(clk),
    .CE(sig000002b0),
    .D(sig00000217),
    .Q(sig000002c3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000276 (
    .C(clk),
    .CE(sig000002b0),
    .D(sig00000218),
    .Q(sig000002c2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000277 (
    .C(clk),
    .CE(sig000002b0),
    .D(sig00000219),
    .Q(sig000002c1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000278 (
    .C(clk),
    .CE(sig000002b0),
    .D(sig0000021a),
    .Q(sig000002c0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000279 (
    .C(clk),
    .CE(sig000002b0),
    .D(sig0000021b),
    .Q(sig000002bf)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000027a (
    .C(clk),
    .CE(sig000002b0),
    .D(sig0000021c),
    .Q(sig000002be)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000027b (
    .C(clk),
    .CE(sig000002b0),
    .D(sig0000021d),
    .Q(sig000002bd)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000027c (
    .C(clk),
    .CE(sig000002b0),
    .D(sig0000021e),
    .Q(sig000002bc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000027d (
    .C(clk),
    .CE(sig000002b0),
    .D(sig0000021f),
    .Q(sig000002bb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000027e (
    .C(clk),
    .CE(sig000002b0),
    .D(sig00000220),
    .Q(sig000002ba)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000027f (
    .C(clk),
    .CE(sig000002b0),
    .D(sig00000221),
    .Q(sig000002b9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000280 (
    .C(clk),
    .CE(sig000002b0),
    .D(sig00000222),
    .Q(sig000002b8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000281 (
    .C(clk),
    .CE(sig000002b0),
    .D(sig00000223),
    .Q(sig000002b7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000282 (
    .C(clk),
    .CE(sig000002b0),
    .D(sig00000224),
    .Q(sig000002b6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000283 (
    .C(clk),
    .CE(sig000002b0),
    .D(sig00000225),
    .Q(sig000002b5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000284 (
    .C(clk),
    .CE(sig000002b0),
    .D(sig00000226),
    .Q(sig000002b4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000285 (
    .C(clk),
    .CE(sig000002b0),
    .D(sig00000227),
    .Q(sig000002b3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000286 (
    .C(clk),
    .CE(sig000002b0),
    .D(sig00000228),
    .Q(sig000002b2)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000287 (
    .C(clk),
    .CE(ce),
    .D(sig00000266),
    .R(sig00000002),
    .Q(sig000002ce)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000288 (
    .C(clk),
    .CE(ce),
    .D(sig00000267),
    .R(sig00000002),
    .Q(sig000002cd)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000289 (
    .C(clk),
    .CE(ce),
    .D(sig00000268),
    .R(sig00000002),
    .Q(sig000002cc)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000028a (
    .C(clk),
    .CE(ce),
    .D(sig00000269),
    .R(sig00000002),
    .Q(sig000002cb)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000028b (
    .C(clk),
    .CE(ce),
    .D(sig0000026a),
    .R(sig00000002),
    .Q(sig000002ca)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000028c (
    .C(clk),
    .CE(ce),
    .D(sig0000026b),
    .R(sig00000002),
    .Q(sig000002c9)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000028d (
    .C(clk),
    .CE(ce),
    .D(sig0000026c),
    .R(sig00000002),
    .Q(sig000002c8)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000028e (
    .C(clk),
    .CE(ce),
    .D(sig0000026d),
    .R(sig00000002),
    .Q(sig000002c7)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000028f (
    .C(clk),
    .CE(ce),
    .D(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/run_addr_gen/done_int2 ),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/done_i_reg )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000290 (
    .C(clk),
    .CE(ce),
    .D(sig00000257),
    .R(sig00000002),
    .Q(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/run_addr_gen/done_int2 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000291 (
    .C(clk),
    .CE(ce),
    .D(sig00000251),
    .R(sig00000002),
    .Q(sig00000257)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000292 (
    .C(clk),
    .CE(ce),
    .D(sig00000250),
    .R(sig00000002),
    .Q(sig00000251)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000293 (
    .C(clk),
    .CE(ce),
    .D(sig00000258),
    .R(sig00000002),
    .Q(sig00000255)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000294 (
    .C(clk),
    .CE(ce),
    .D(sig0000020e),
    .R(sig00000002),
    .Q(sig00000293)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000295 (
    .C(clk),
    .CE(ce),
    .D(sig0000020f),
    .R(sig00000002),
    .Q(sig00000294)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000296 (
    .C(clk),
    .CE(ce),
    .D(sig00000210),
    .R(sig00000002),
    .Q(sig00000295)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000297 (
    .C(clk),
    .CE(ce),
    .D(sig00000211),
    .R(sig00000002),
    .Q(sig00000296)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000298 (
    .C(clk),
    .CE(ce),
    .D(sig00000212),
    .R(sig00000002),
    .Q(sig00000297)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000299 (
    .C(clk),
    .CE(ce),
    .D(sig00000213),
    .R(sig00000002),
    .Q(sig00000298)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000029a (
    .C(clk),
    .CE(ce),
    .D(sig00000214),
    .R(sig00000002),
    .Q(sig00000299)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000029b (
    .C(clk),
    .CE(ce),
    .D(sig00000215),
    .R(sig00000002),
    .Q(sig0000029a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000029c (
    .C(clk),
    .CE(ce),
    .D(sig00000216),
    .R(sig00000002),
    .Q(sig0000029b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000029d (
    .C(clk),
    .CE(ce),
    .D(sig0000026e),
    .R(sig00000002),
    .Q(sig00000250)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000029e (
    .C(clk),
    .CE(ce),
    .D(sig0000024d),
    .R(sig00000002),
    .Q(sig0000024e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000029f (
    .C(clk),
    .CE(ce),
    .D(sig0000024c),
    .R(sig00000002),
    .Q(sig0000024d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002a0 (
    .C(clk),
    .CE(ce),
    .D(sig000002b1),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/busy_i_reg2 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002a1 (
    .C(clk),
    .CE(ce),
    .D(sig00000253),
    .R(sig00000002),
    .Q(sig00000006)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002a2 (
    .C(clk),
    .CE(ce),
    .D(sig00000254),
    .R(sig00000002),
    .Q(sig00000009)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002a3 (
    .C(clk),
    .CE(ce),
    .D(sig000002c6),
    .R(sig00000002),
    .Q(sig000002b1)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002a4 (
    .C(clk),
    .CE(ce),
    .D(sig0000024f),
    .R(sig00000002),
    .Q(sig00000253)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002a5 (
    .C(clk),
    .CE(ce),
    .D(sig00000252),
    .R(sig00000002),
    .Q(sig000002c6)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002a6 (
    .C(clk),
    .CE(ce),
    .D(sig0000022d),
    .R(sig00000002),
    .Q(sig00000254)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002a7 (
    .C(clk),
    .CE(ce),
    .D(sig00000256),
    .R(sig00000002),
    .Q(sig00000008)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002a8 (
    .C(clk),
    .CE(ce),
    .D(sig000002a6),
    .R(sig00000002),
    .Q(sig0000024b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002a9 (
    .C(clk),
    .CE(ce),
    .D(sig0000024e),
    .R(sig00000002),
    .Q(sig0000024f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002aa (
    .C(clk),
    .CE(ce),
    .D(sig0000027e),
    .R(sig00000002),
    .Q(sig00000256)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002b1 (
    .C(clk),
    .CE(ce),
    .D(sig000002d8),
    .R(sig00000002),
    .Q(sig000002cf)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002b2 (
    .C(clk),
    .CE(ce),
    .D(sig000002dc),
    .R(sig00000002),
    .Q(sig000002d3)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002b3 (
    .C(clk),
    .CE(ce),
    .D(sig000002d9),
    .R(sig00000002),
    .Q(sig000002d0)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002b4 (
    .C(clk),
    .CE(ce),
    .D(sig000002db),
    .R(sig00000002),
    .Q(sig0000000a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002b5 (
    .C(clk),
    .CE(ce),
    .D(sig000002da),
    .R(sig00000002),
    .Q(sig000002d1)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002b6 (
    .C(clk),
    .CE(ce),
    .D(sig000002dd),
    .R(sig00000002),
    .Q(sig000002d2)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk000002b7 (
    .C(clk),
    .CE(ce),
    .D(sig000002d7),
    .S(sig00000002),
    .Q(sig00000003)
  );
  XORCY   blk000002b8 (
    .CI(sig000002f9),
    .LI(sig00000002),
    .O(sig000002e7)
  );
  XORCY   blk000002b9 (
    .CI(sig000002fa),
    .LI(sig00000002),
    .O(sig000002e8)
  );
  XORCY   blk000002ba (
    .CI(sig000002fb),
    .LI(sig00000002),
    .O(sig000002e9)
  );
  MUXCY   blk000002bb (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig000002ff),
    .O(sig000002ea)
  );
  MUXCY   blk000002bc (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig00000300),
    .O(sig000002eb)
  );
  MUXCY   blk000002bd (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig00000301),
    .O(sig000002ec)
  );
  MUXCY   blk000002be (
    .CI(sig000002ea),
    .DI(sig00000002),
    .S(sig00000302),
    .O(sig000002ed)
  );
  MUXCY   blk000002bf (
    .CI(sig000002eb),
    .DI(sig00000002),
    .S(sig00000303),
    .O(sig000002ee)
  );
  MUXCY   blk000002c0 (
    .CI(sig000002ec),
    .DI(sig00000002),
    .S(sig00000304),
    .O(sig000002ef)
  );
  MUXCY   blk000002c1 (
    .CI(sig000002fc),
    .DI(sig00000002),
    .S(sig00000305),
    .O(sig000002f9)
  );
  MUXCY   blk000002c2 (
    .CI(sig000002fd),
    .DI(sig00000002),
    .S(sig00000306),
    .O(sig000002fa)
  );
  MUXCY   blk000002c3 (
    .CI(sig000002fe),
    .DI(sig00000002),
    .S(sig00000307),
    .O(sig000002fb)
  );
  MUXCY   blk000002c4 (
    .CI(sig000002ed),
    .DI(sig00000292),
    .S(sig00000309),
    .O(sig000002fc)
  );
  MUXCY   blk000002c5 (
    .CI(sig000002ee),
    .DI(sig00000291),
    .S(sig0000030a),
    .O(sig000002fd)
  );
  MUXCY   blk000002c6 (
    .CI(sig000002ef),
    .DI(sig00000290),
    .S(sig0000030b),
    .O(sig000002fe)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk000002c7 (
    .I0(sig00000289),
    .I1(sig00000288),
    .I2(sig00000287),
    .O(sig00000302)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk000002c8 (
    .I0(sig00000289),
    .I1(sig00000288),
    .I2(sig00000287),
    .O(sig00000303)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk000002c9 (
    .I0(sig00000289),
    .I1(sig00000288),
    .I2(sig00000287),
    .O(sig00000304)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk000002ca (
    .I0(sig000002d2),
    .I1(sig0000000a),
    .I2(sig000002d3),
    .I3(sig00000003),
    .O(sig00000305)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk000002cb (
    .I0(sig000002d2),
    .I1(sig0000000a),
    .I2(sig000002d3),
    .I3(sig00000003),
    .O(sig00000306)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk000002cc (
    .I0(sig000002d2),
    .I1(sig0000000a),
    .I2(sig000002d3),
    .I3(sig00000003),
    .O(sig00000307)
  );
  LUT3 #(
    .INIT ( 8'h8A ))
  blk000002cd (
    .I0(ce),
    .I1(sig00000001),
    .I2(sig00000290),
    .O(sig00000309)
  );
  LUT3 #(
    .INIT ( 8'h8A ))
  blk000002ce (
    .I0(ce),
    .I1(sig00000001),
    .I2(sig00000290),
    .O(sig0000030a)
  );
  LUT3 #(
    .INIT ( 8'h8A ))
  blk000002cf (
    .I0(ce),
    .I1(sig00000001),
    .I2(sig00000290),
    .O(sig0000030b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000002d0 (
    .C(clk),
    .D(sig000002e7),
    .Q(sig00000292)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000002d1 (
    .C(clk),
    .D(sig000002e8),
    .Q(sig00000291)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000002d2 (
    .C(clk),
    .D(sig000002e9),
    .Q(sig00000290)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002d3 (
    .C(clk),
    .CE(sig00000308),
    .D(sig000002de),
    .R(sig00000003),
    .Q(sig0000028f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002d4 (
    .C(clk),
    .CE(sig00000308),
    .D(sig000002df),
    .R(sig00000003),
    .Q(sig0000028e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002d5 (
    .C(clk),
    .CE(sig00000308),
    .D(sig000002e0),
    .R(sig00000003),
    .Q(sig0000028d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002d6 (
    .C(clk),
    .CE(sig00000308),
    .D(sig000002e1),
    .R(sig00000003),
    .Q(sig0000028c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002d7 (
    .C(clk),
    .CE(sig00000308),
    .D(sig000002e2),
    .R(sig00000003),
    .Q(sig0000028b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002d8 (
    .C(clk),
    .CE(sig00000308),
    .D(sig000002e3),
    .R(sig00000003),
    .Q(sig0000028a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002d9 (
    .C(clk),
    .CE(sig00000308),
    .D(sig000002e4),
    .R(sig00000003),
    .Q(sig00000289)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002da (
    .C(clk),
    .CE(sig00000308),
    .D(sig000002e5),
    .R(sig00000003),
    .Q(sig00000288)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000002db (
    .C(clk),
    .CE(sig00000308),
    .D(sig000002e6),
    .R(sig00000003),
    .Q(sig00000287)
  );
  MUXF8   blk000002f8 (
    .I0(sig00000316),
    .I1(sig00000315),
    .S(sig00000229),
    .O(sig0000030c)
  );
  MUXF8   blk000002f9 (
    .I0(sig00000318),
    .I1(sig00000317),
    .S(sig00000229),
    .O(sig0000030d)
  );
  MUXF8   blk000002fa (
    .I0(sig0000031a),
    .I1(sig00000319),
    .S(sig00000229),
    .O(sig0000030e)
  );
  MUXF8   blk000002fb (
    .I0(sig0000031c),
    .I1(sig0000031b),
    .S(sig00000229),
    .O(sig0000030f)
  );
  MUXF8   blk000002fc (
    .I0(sig0000031e),
    .I1(sig0000031d),
    .S(sig00000229),
    .O(sig00000310)
  );
  MUXF8   blk000002fd (
    .I0(sig00000320),
    .I1(sig0000031f),
    .S(sig00000229),
    .O(sig00000311)
  );
  MUXF8   blk000002fe (
    .I0(sig00000322),
    .I1(sig00000321),
    .S(sig00000229),
    .O(sig00000312)
  );
  MUXF8   blk000002ff (
    .I0(sig00000324),
    .I1(sig00000323),
    .S(sig00000229),
    .O(sig00000313)
  );
  MUXF8   blk00000300 (
    .I0(sig00000326),
    .I1(sig00000325),
    .S(sig00000229),
    .O(sig00000314)
  );
  MUXF7   blk00000301 (
    .I0(sig00000330),
    .I1(sig00000327),
    .S(sig0000022a),
    .O(sig00000315)
  );
  MUXF7   blk00000302 (
    .I0(sig00000342),
    .I1(sig00000339),
    .S(sig0000022a),
    .O(sig00000316)
  );
  MUXF7   blk00000303 (
    .I0(sig00000331),
    .I1(sig00000328),
    .S(sig0000022a),
    .O(sig00000317)
  );
  MUXF7   blk00000304 (
    .I0(sig00000343),
    .I1(sig0000033a),
    .S(sig0000022a),
    .O(sig00000318)
  );
  MUXF7   blk00000305 (
    .I0(sig00000332),
    .I1(sig00000329),
    .S(sig0000022a),
    .O(sig00000319)
  );
  MUXF7   blk00000306 (
    .I0(sig00000344),
    .I1(sig0000033b),
    .S(sig0000022a),
    .O(sig0000031a)
  );
  MUXF7   blk00000307 (
    .I0(sig00000333),
    .I1(sig0000032a),
    .S(sig0000022a),
    .O(sig0000031b)
  );
  MUXF7   blk00000308 (
    .I0(sig00000345),
    .I1(sig0000033c),
    .S(sig0000022a),
    .O(sig0000031c)
  );
  MUXF7   blk00000309 (
    .I0(sig00000334),
    .I1(sig0000032b),
    .S(sig0000022a),
    .O(sig0000031d)
  );
  MUXF7   blk0000030a (
    .I0(sig00000346),
    .I1(sig0000033d),
    .S(sig0000022a),
    .O(sig0000031e)
  );
  MUXF7   blk0000030b (
    .I0(sig00000335),
    .I1(sig0000032c),
    .S(sig0000022a),
    .O(sig0000031f)
  );
  MUXF7   blk0000030c (
    .I0(sig00000347),
    .I1(sig0000033e),
    .S(sig0000022a),
    .O(sig00000320)
  );
  MUXF7   blk0000030d (
    .I0(sig00000336),
    .I1(sig0000032d),
    .S(sig0000022a),
    .O(sig00000321)
  );
  MUXF7   blk0000030e (
    .I0(sig00000348),
    .I1(sig0000033f),
    .S(sig0000022a),
    .O(sig00000322)
  );
  MUXF7   blk0000030f (
    .I0(sig00000337),
    .I1(sig0000032e),
    .S(sig0000022a),
    .O(sig00000323)
  );
  MUXF7   blk00000310 (
    .I0(sig00000349),
    .I1(sig00000340),
    .S(sig0000022a),
    .O(sig00000324)
  );
  MUXF7   blk00000311 (
    .I0(sig00000338),
    .I1(sig0000032f),
    .S(sig0000022a),
    .O(sig00000325)
  );
  MUXF7   blk00000312 (
    .I0(sig0000034a),
    .I1(sig00000341),
    .S(sig0000022a),
    .O(sig00000326)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000313 (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000327)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000314 (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000328)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000315 (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000329)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000316 (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig0000032a)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000317 (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig0000032b)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000318 (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig0000032c)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000319 (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig0000032d)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000031a (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig0000032e)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000031b (
    .I0(sig00000002),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig0000032f)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000031c (
    .I0(sig0000028e),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000330)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000031d (
    .I0(sig0000028d),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000331)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000031e (
    .I0(sig0000028c),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000332)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000031f (
    .I0(sig0000028b),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000333)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000320 (
    .I0(sig0000028a),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000334)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000321 (
    .I0(sig00000289),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000335)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000322 (
    .I0(sig00000288),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000336)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000323 (
    .I0(sig00000287),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000337)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000324 (
    .I0(sig00000264),
    .I1(sig00000002),
    .I2(sig00000002),
    .I3(sig00000002),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000338)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000325 (
    .I0(sig0000028a),
    .I1(sig0000028b),
    .I2(sig0000028c),
    .I3(sig0000028d),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000339)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000326 (
    .I0(sig00000289),
    .I1(sig0000028a),
    .I2(sig0000028b),
    .I3(sig0000028c),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig0000033a)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000327 (
    .I0(sig00000288),
    .I1(sig00000289),
    .I2(sig0000028a),
    .I3(sig0000028b),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig0000033b)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000328 (
    .I0(sig00000287),
    .I1(sig00000288),
    .I2(sig00000289),
    .I3(sig0000028a),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig0000033c)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000329 (
    .I0(sig00000264),
    .I1(sig00000287),
    .I2(sig00000288),
    .I3(sig00000289),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig0000033d)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000032a (
    .I0(sig0000028e),
    .I1(sig00000264),
    .I2(sig00000287),
    .I3(sig00000288),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig0000033e)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000032b (
    .I0(sig0000028d),
    .I1(sig0000028e),
    .I2(sig00000264),
    .I3(sig00000287),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig0000033f)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000032c (
    .I0(sig0000028c),
    .I1(sig0000028d),
    .I2(sig0000028e),
    .I3(sig00000264),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000340)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000032d (
    .I0(sig0000028b),
    .I1(sig0000028c),
    .I2(sig0000028d),
    .I3(sig0000028e),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000341)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000032e (
    .I0(sig00000264),
    .I1(sig00000287),
    .I2(sig00000288),
    .I3(sig00000289),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000342)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk0000032f (
    .I0(sig0000028e),
    .I1(sig00000264),
    .I2(sig00000287),
    .I3(sig00000288),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000343)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000330 (
    .I0(sig0000028d),
    .I1(sig0000028e),
    .I2(sig00000264),
    .I3(sig00000287),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000344)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000331 (
    .I0(sig0000028c),
    .I1(sig0000028d),
    .I2(sig0000028e),
    .I3(sig00000264),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000345)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000332 (
    .I0(sig0000028b),
    .I1(sig0000028c),
    .I2(sig0000028d),
    .I3(sig0000028e),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000346)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000333 (
    .I0(sig0000028a),
    .I1(sig0000028b),
    .I2(sig0000028c),
    .I3(sig0000028d),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000347)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000334 (
    .I0(sig00000289),
    .I1(sig0000028a),
    .I2(sig0000028b),
    .I3(sig0000028c),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000348)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000335 (
    .I0(sig00000288),
    .I1(sig00000289),
    .I2(sig0000028a),
    .I3(sig0000028b),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig00000349)
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  blk00000336 (
    .I0(sig00000287),
    .I1(sig00000288),
    .I2(sig00000289),
    .I3(sig0000028a),
    .I4(sig0000022c),
    .I5(sig0000022b),
    .O(sig0000034a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000337 (
    .C(clk),
    .CE(ce),
    .D(sig0000034b),
    .R(sig00000002),
    .Q(sig00000216)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000338 (
    .C(clk),
    .CE(ce),
    .D(sig0000030c),
    .R(sig00000002),
    .Q(sig0000034b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000339 (
    .C(clk),
    .CE(ce),
    .D(sig0000034c),
    .R(sig00000002),
    .Q(sig00000215)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000033a (
    .C(clk),
    .CE(ce),
    .D(sig0000030d),
    .R(sig00000002),
    .Q(sig0000034c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000033b (
    .C(clk),
    .CE(ce),
    .D(sig0000034d),
    .R(sig00000002),
    .Q(sig00000214)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000033c (
    .C(clk),
    .CE(ce),
    .D(sig0000030e),
    .R(sig00000002),
    .Q(sig0000034d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000033d (
    .C(clk),
    .CE(ce),
    .D(sig0000034e),
    .R(sig00000002),
    .Q(sig00000213)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000033e (
    .C(clk),
    .CE(ce),
    .D(sig0000030f),
    .R(sig00000002),
    .Q(sig0000034e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000033f (
    .C(clk),
    .CE(ce),
    .D(sig0000034f),
    .R(sig00000002),
    .Q(sig00000212)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000340 (
    .C(clk),
    .CE(ce),
    .D(sig00000310),
    .R(sig00000002),
    .Q(sig0000034f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000341 (
    .C(clk),
    .CE(ce),
    .D(sig00000350),
    .R(sig00000002),
    .Q(sig00000211)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000342 (
    .C(clk),
    .CE(ce),
    .D(sig00000311),
    .R(sig00000002),
    .Q(sig00000350)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000343 (
    .C(clk),
    .CE(ce),
    .D(sig00000351),
    .R(sig00000002),
    .Q(sig00000210)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000344 (
    .C(clk),
    .CE(ce),
    .D(sig00000312),
    .R(sig00000002),
    .Q(sig00000351)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000345 (
    .C(clk),
    .CE(ce),
    .D(sig00000352),
    .R(sig00000002),
    .Q(sig0000020f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000346 (
    .C(clk),
    .CE(ce),
    .D(sig00000313),
    .R(sig00000002),
    .Q(sig00000352)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000347 (
    .C(clk),
    .CE(ce),
    .D(sig00000353),
    .R(sig00000002),
    .Q(sig0000020e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000348 (
    .C(clk),
    .CE(ce),
    .D(sig00000314),
    .R(sig00000002),
    .Q(sig00000353)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000349 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(ce),
    .CLK(clk),
    .D(sig0000020e),
    .Q(sig00000354)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000034a (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(ce),
    .CLK(clk),
    .D(sig0000020f),
    .Q(sig00000355)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000034b (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(ce),
    .CLK(clk),
    .D(sig00000210),
    .Q(sig00000356)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000034c (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(ce),
    .CLK(clk),
    .D(sig00000211),
    .Q(sig00000357)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000034d (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(ce),
    .CLK(clk),
    .D(sig00000212),
    .Q(sig00000358)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000034e (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(ce),
    .CLK(clk),
    .D(sig00000213),
    .Q(sig00000359)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk0000034f (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(ce),
    .CLK(clk),
    .D(sig00000214),
    .Q(sig0000035a)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000350 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(ce),
    .CLK(clk),
    .D(sig00000215),
    .Q(sig0000035b)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000351 (
    .A0(sig00000001),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000001),
    .CE(ce),
    .CLK(clk),
    .D(sig00000216),
    .Q(sig0000035c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000352 (
    .C(clk),
    .CE(ce),
    .D(sig00000354),
    .R(sig00000002),
    .Q(sig0000029c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000353 (
    .C(clk),
    .CE(ce),
    .D(sig00000355),
    .R(sig00000002),
    .Q(sig0000029d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000354 (
    .C(clk),
    .CE(ce),
    .D(sig00000356),
    .R(sig00000002),
    .Q(sig0000029e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000355 (
    .C(clk),
    .CE(ce),
    .D(sig00000357),
    .R(sig00000002),
    .Q(sig0000029f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000356 (
    .C(clk),
    .CE(ce),
    .D(sig00000358),
    .R(sig00000002),
    .Q(sig000002a0)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000357 (
    .C(clk),
    .CE(ce),
    .D(sig00000359),
    .R(sig00000002),
    .Q(sig000002a1)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000358 (
    .C(clk),
    .CE(ce),
    .D(sig0000035a),
    .R(sig00000002),
    .Q(sig000002a2)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000359 (
    .C(clk),
    .CE(ce),
    .D(sig0000035b),
    .R(sig00000002),
    .Q(sig000002a3)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000035a (
    .C(clk),
    .CE(ce),
    .D(sig0000035c),
    .R(sig00000002),
    .Q(sig000002a4)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000386 (
    .C(clk),
    .CE(ce),
    .D(sig00000375),
    .R(sig0000035d),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [8])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000387 (
    .C(clk),
    .CE(ce),
    .D(sig00000374),
    .R(sig0000035d),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000388 (
    .C(clk),
    .CE(ce),
    .D(sig00000373),
    .R(sig0000035d),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000389 (
    .C(clk),
    .CE(ce),
    .D(sig00000372),
    .R(sig0000035d),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000038a (
    .C(clk),
    .CE(ce),
    .D(sig00000371),
    .R(sig0000035d),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000038b (
    .C(clk),
    .CE(ce),
    .D(sig00000370),
    .R(sig0000035d),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000038c (
    .C(clk),
    .CE(ce),
    .D(sig0000036f),
    .R(sig0000035d),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000038d (
    .C(clk),
    .CE(ce),
    .D(sig0000036e),
    .R(sig0000035d),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000038e (
    .C(clk),
    .CE(ce),
    .D(sig0000036d),
    .R(sig0000035d),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/xk_index_i [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000038f (
    .C(clk),
    .CE(ce),
    .D(sig00000007),
    .R(sig00000002),
    .Q(\U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/dv_d )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000390 (
    .C(clk),
    .CE(ce),
    .D(sig00000367),
    .R(sig00000002),
    .Q(sig0000036a)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000391 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000287),
    .Q(sig00000376)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000392 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000288),
    .Q(sig00000377)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000393 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000289),
    .Q(sig00000378)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000394 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000028a),
    .Q(sig00000379)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000395 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000028b),
    .Q(sig0000037a)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000396 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000028c),
    .Q(sig0000037b)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000397 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000028d),
    .Q(sig0000037c)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000398 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000028e),
    .Q(sig0000037d)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk00000399 (
    .A0(sig00000002),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000028f),
    .Q(sig0000037e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000039a (
    .C(clk),
    .CE(ce),
    .D(sig00000376),
    .R(sig00000002),
    .Q(sig00000375)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000039b (
    .C(clk),
    .CE(ce),
    .D(sig00000377),
    .R(sig00000002),
    .Q(sig00000374)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000039c (
    .C(clk),
    .CE(ce),
    .D(sig00000378),
    .R(sig00000002),
    .Q(sig00000373)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000039d (
    .C(clk),
    .CE(ce),
    .D(sig00000379),
    .R(sig00000002),
    .Q(sig00000372)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000039e (
    .C(clk),
    .CE(ce),
    .D(sig0000037a),
    .R(sig00000002),
    .Q(sig00000371)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000039f (
    .C(clk),
    .CE(ce),
    .D(sig0000037b),
    .R(sig00000002),
    .Q(sig00000370)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003a0 (
    .C(clk),
    .CE(ce),
    .D(sig0000037c),
    .R(sig00000002),
    .Q(sig0000036f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003a1 (
    .C(clk),
    .CE(ce),
    .D(sig0000037d),
    .R(sig00000002),
    .Q(sig0000036e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003a2 (
    .C(clk),
    .CE(ce),
    .D(sig0000037e),
    .R(sig00000002),
    .Q(sig0000036d)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003c8 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000002c3),
    .Q(sig0000037f)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003c9 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000002c2),
    .Q(sig00000380)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003ca (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000002c1),
    .Q(sig00000381)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003cb (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000002c0),
    .Q(sig00000382)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003cc (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000002bf),
    .Q(sig00000383)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003cd (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000002be),
    .Q(sig00000384)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003ce (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000002bd),
    .Q(sig00000385)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003cf (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000002bc),
    .Q(sig00000386)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003d0 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000002bb),
    .Q(sig00000387)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d1 (
    .C(clk),
    .CE(ce),
    .D(sig0000037f),
    .R(sig00000002),
    .Q(sig00000014)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d2 (
    .C(clk),
    .CE(ce),
    .D(sig00000380),
    .R(sig00000002),
    .Q(sig00000013)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d3 (
    .C(clk),
    .CE(ce),
    .D(sig00000381),
    .R(sig00000002),
    .Q(sig00000012)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d4 (
    .C(clk),
    .CE(ce),
    .D(sig00000382),
    .R(sig00000002),
    .Q(sig00000011)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d5 (
    .C(clk),
    .CE(ce),
    .D(sig00000383),
    .R(sig00000002),
    .Q(sig00000010)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d6 (
    .C(clk),
    .CE(ce),
    .D(sig00000384),
    .R(sig00000002),
    .Q(sig0000000f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d7 (
    .C(clk),
    .CE(ce),
    .D(sig00000385),
    .R(sig00000002),
    .Q(sig0000000e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d8 (
    .C(clk),
    .CE(ce),
    .D(sig00000386),
    .R(sig00000002),
    .Q(sig0000000d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003d9 (
    .C(clk),
    .CE(ce),
    .D(sig00000387),
    .R(sig00000002),
    .Q(sig0000000c)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003da (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000002ba),
    .Q(sig00000388)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003db (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000002b9),
    .Q(sig00000389)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003dc (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000002b8),
    .Q(sig0000038a)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003dd (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000002b7),
    .Q(sig0000038b)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003de (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000002b6),
    .Q(sig0000038c)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003df (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000002b5),
    .Q(sig0000038d)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003e0 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000002b4),
    .Q(sig0000038e)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003e1 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000002b3),
    .Q(sig0000038f)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  blk000003e2 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig000002b2),
    .Q(sig00000390)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e3 (
    .C(clk),
    .CE(ce),
    .D(sig00000388),
    .R(sig00000002),
    .Q(sig0000001d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e4 (
    .C(clk),
    .CE(ce),
    .D(sig00000389),
    .R(sig00000002),
    .Q(sig0000001c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e5 (
    .C(clk),
    .CE(ce),
    .D(sig0000038a),
    .R(sig00000002),
    .Q(sig0000001b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e6 (
    .C(clk),
    .CE(ce),
    .D(sig0000038b),
    .R(sig00000002),
    .Q(sig0000001a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e7 (
    .C(clk),
    .CE(ce),
    .D(sig0000038c),
    .R(sig00000002),
    .Q(sig00000019)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e8 (
    .C(clk),
    .CE(ce),
    .D(sig0000038d),
    .R(sig00000002),
    .Q(sig00000018)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003e9 (
    .C(clk),
    .CE(ce),
    .D(sig0000038e),
    .R(sig00000002),
    .Q(sig00000017)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003ea (
    .C(clk),
    .CE(ce),
    .D(sig0000038f),
    .R(sig00000002),
    .Q(sig00000016)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000003eb (
    .C(clk),
    .CE(ce),
    .D(sig00000390),
    .R(sig00000002),
    .Q(sig00000015)
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  blk000003ec (
    .I0(ce),
    .I1(sig00000008),
    .I2(sig0000004b),
    .I3(sig0000000b),
    .O(sig00000033)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000003ed (
    .I0(sig0000000b),
    .I1(sig0000007f),
    .I2(sig00000115),
    .O(sig00000034)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000003ee (
    .I0(sig0000000b),
    .I1(sig00000089),
    .I2(sig0000011f),
    .O(sig0000003e)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000003ef (
    .I0(sig0000000b),
    .I1(sig0000008a),
    .I2(sig00000120),
    .O(sig0000003f)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000003f0 (
    .I0(sig0000000b),
    .I1(sig0000008b),
    .I2(sig00000121),
    .O(sig00000040)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000003f1 (
    .I0(sig0000000b),
    .I1(sig0000008c),
    .I2(sig00000122),
    .O(sig00000041)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000003f2 (
    .I0(sig0000000b),
    .I1(sig0000008d),
    .I2(sig00000123),
    .O(sig00000042)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000003f3 (
    .I0(sig0000000b),
    .I1(sig0000008e),
    .I2(sig00000124),
    .O(sig00000043)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk000003f4 (
    .I0(sig00000125),
    .I1(sig0000000b),
    .O(sig00000044)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  blk000003f5 (
    .I0(sig00000126),
    .I1(sig0000000b),
    .O(sig00000045)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000003f6 (
    .I0(sig0000000b),
    .I1(sig00000080),
    .I2(sig00000116),
    .O(sig00000035)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000003f7 (
    .I0(sig0000000b),
    .I1(sig00000081),
    .I2(sig00000117),
    .O(sig00000036)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000003f8 (
    .I0(sig0000000b),
    .I1(sig00000082),
    .I2(sig00000118),
    .O(sig00000037)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000003f9 (
    .I0(sig0000000b),
    .I1(sig00000083),
    .I2(sig00000119),
    .O(sig00000038)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000003fa (
    .I0(sig0000000b),
    .I1(sig00000084),
    .I2(sig0000011a),
    .O(sig00000039)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000003fb (
    .I0(sig0000000b),
    .I1(sig00000085),
    .I2(sig0000011b),
    .O(sig0000003a)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000003fc (
    .I0(sig0000000b),
    .I1(sig00000086),
    .I2(sig0000011c),
    .O(sig0000003b)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000003fd (
    .I0(sig0000000b),
    .I1(sig00000087),
    .I2(sig0000011d),
    .O(sig0000003c)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk000003fe (
    .I0(sig0000000b),
    .I1(sig00000088),
    .I2(sig0000011e),
    .O(sig0000003d)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000003ff (
    .I0(sig00000005),
    .I1(sig00000006),
    .O(sig00000032)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk00000400 (
    .I0(ce),
    .I1(sig000000ca),
    .O(sig00000046)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000401 (
    .I0(ce),
    .I1(sig000000ca),
    .O(sig00000047)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000402 (
    .I0(ce),
    .I1(scale_sch_we),
    .O(sig00000048)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000403 (
    .I0(sig0000004a),
    .I1(sig0000004c),
    .O(sig00000178)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000404 (
    .I0(sig0000004c),
    .I1(sig0000005d),
    .I2(sig00000065),
    .O(sig000001a8)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000405 (
    .I0(sig0000004c),
    .I1(sig0000005e),
    .I2(sig00000066),
    .O(sig000001a9)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000406 (
    .I0(sig0000004c),
    .I1(sig0000005f),
    .I2(sig00000067),
    .O(sig000001aa)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000407 (
    .I0(sig0000004c),
    .I1(sig00000060),
    .I2(sig00000068),
    .O(sig000001ab)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000408 (
    .I0(sig0000004c),
    .I1(sig00000061),
    .I2(sig00000069),
    .O(sig000001ac)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000409 (
    .I0(sig0000004c),
    .I1(sig00000062),
    .I2(sig0000006a),
    .O(sig000001ad)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000040a (
    .I0(sig0000004c),
    .I1(sig00000063),
    .I2(sig0000006b),
    .O(sig000001ae)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000040b (
    .I0(sig0000004c),
    .I1(sig00000064),
    .I2(sig0000006c),
    .O(sig000001af)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000040c (
    .I0(sig0000004c),
    .I1(sig00000065),
    .I2(sig0000005d),
    .O(sig000001b0)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000040d (
    .I0(sig0000004c),
    .I1(sig00000066),
    .I2(sig0000005e),
    .O(sig000001b1)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000040e (
    .I0(sig0000004c),
    .I1(sig00000067),
    .I2(sig0000005f),
    .O(sig000001b2)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000040f (
    .I0(sig0000004c),
    .I1(sig00000068),
    .I2(sig00000060),
    .O(sig000001b3)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000410 (
    .I0(sig0000004c),
    .I1(sig00000069),
    .I2(sig00000061),
    .O(sig000001b4)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000411 (
    .I0(sig0000004c),
    .I1(sig0000006a),
    .I2(sig00000062),
    .O(sig000001b5)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000412 (
    .I0(sig0000004c),
    .I1(sig0000006b),
    .I2(sig00000063),
    .O(sig000001b6)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000413 (
    .I0(sig0000004c),
    .I1(sig0000006c),
    .I2(sig00000064),
    .O(sig000001b7)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000414 (
    .I0(ce),
    .I1(sig000001b9),
    .O(sig000001b8)
  );
  LUT4 #(
    .INIT ( 16'h4446 ))
  blk00000415 (
    .I0(sig00000229),
    .I1(sig0000022a),
    .I2(sig0000022b),
    .I3(sig0000022c),
    .O(sig00000209)
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  blk00000416 (
    .I0(sig00000229),
    .I1(sig0000022b),
    .I2(sig0000022c),
    .I3(sig0000022a),
    .O(sig0000020d)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000417 (
    .I0(sig00000229),
    .I1(sig0000022b),
    .I2(sig0000022c),
    .I3(sig0000022a),
    .O(sig0000027e)
  );
  LUT4 #(
    .INIT ( 16'h2224 ))
  blk00000418 (
    .I0(sig0000022a),
    .I1(sig00000229),
    .I2(sig0000022b),
    .I3(sig0000022c),
    .O(sig0000020a)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000419 (
    .I0(ce),
    .I1(sig00000237),
    .I2(sig00000236),
    .O(sig00000259)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk0000041a (
    .I0(ce),
    .I1(sig0000024a),
    .I2(sig00000235),
    .O(sig0000025a)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk0000041b (
    .I0(ce),
    .I1(sig00000249),
    .I2(sig00000234),
    .O(sig0000025b)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk0000041c (
    .I0(ce),
    .I1(sig00000248),
    .I2(sig00000233),
    .O(sig0000025c)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk0000041d (
    .I0(ce),
    .I1(sig00000247),
    .I2(sig00000232),
    .O(sig0000025d)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk0000041e (
    .I0(ce),
    .I1(sig00000246),
    .I2(sig00000231),
    .O(sig0000025e)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk0000041f (
    .I0(ce),
    .I1(sig00000245),
    .I2(sig00000230),
    .O(sig0000025f)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000420 (
    .I0(ce),
    .I1(sig00000244),
    .I2(sig0000022f),
    .O(sig00000260)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  blk00000421 (
    .I0(ce),
    .I1(sig00000243),
    .I2(sig0000022e),
    .O(sig00000261)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  blk00000422 (
    .I0(ce),
    .I1(sig00000290),
    .I2(sig0000000a),
    .O(sig0000026f)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk00000423 (
    .I0(sig0000000a),
    .I1(sig0000022c),
    .O(sig0000027c)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk00000424 (
    .I0(sig0000000a),
    .I1(sig0000022b),
    .O(sig0000027b)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk00000425 (
    .I0(sig0000022a),
    .I1(sig0000000a),
    .O(sig0000027a)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk00000426 (
    .I0(sig0000000a),
    .I1(sig00000229),
    .O(sig00000279)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk00000427 (
    .I0(sig00000229),
    .I1(sig0000022a),
    .O(sig00000265)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk00000428 (
    .I0(sig0000022b),
    .I1(sig0000022c),
    .O(sig00000280)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000429 (
    .I0(ce),
    .I1(sig000002c6),
    .O(sig000002b0)
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  blk0000042a (
    .I0(sig000002d0),
    .I1(sig000002b1),
    .I2(unload),
    .I3(sig0000000a),
    .O(sig000002d9)
  );
  LUT4 #(
    .INIT ( 16'h000E ))
  blk0000042b (
    .I0(sig000002d0),
    .I1(sig000002d3),
    .I2(sig000002d1),
    .I3(sig0000000a),
    .O(sig000002d6)
  );
  LUT5 #(
    .INIT ( 32'h00000004 ))
  blk0000042c (
    .I0(sig000002d0),
    .I1(sig000002cf),
    .I2(sig000002d3),
    .I3(sig000002d1),
    .I4(sig0000000a),
    .O(sig000002d5)
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  blk0000042d (
    .I0(sig000002c4),
    .I1(sig000002cf),
    .I2(sig00000003),
    .I3(start),
    .O(sig000002d7)
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  blk0000042e (
    .I0(sig000002cf),
    .I1(sig000002c4),
    .I2(sig000002d3),
    .O(sig000002d8)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk0000042f (
    .I0(sig000002d1),
    .I1(sig0000000a),
    .O(sig000002d4)
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  blk00000430 (
    .I0(sig000002d1),
    .I1(sig000002c5),
    .I2(sig000002d2),
    .O(sig000002da)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000431 (
    .I0(sig000002d1),
    .I1(sig000002c5),
    .O(sig000002db)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  blk00000432 (
    .I0(sig000002b1),
    .I1(sig000002d0),
    .I2(unload),
    .O(sig000002dc)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000433 (
    .I0(sig00000003),
    .I1(start),
    .O(sig000002dd)
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  blk00000434 (
    .I0(sig0000028d),
    .I1(sig0000028f),
    .I2(sig0000028e),
    .I3(sig0000028b),
    .I4(sig0000028a),
    .I5(sig0000028c),
    .O(sig000002ff)
  );
  LUT6 #(
    .INIT ( 64'h2000000000000000 ))
  blk00000435 (
    .I0(sig0000028d),
    .I1(sig0000028f),
    .I2(sig0000028e),
    .I3(sig0000028b),
    .I4(sig0000028a),
    .I5(sig0000028c),
    .O(sig00000301)
  );
  LUT6 #(
    .INIT ( 64'h2000000000000000 ))
  blk00000436 (
    .I0(sig0000028f),
    .I1(sig0000028e),
    .I2(sig0000028d),
    .I3(sig0000028b),
    .I4(sig0000028a),
    .I5(sig0000028c),
    .O(sig00000300)
  );
  LUT4 #(
    .INIT ( 16'h008A ))
  blk00000437 (
    .I0(ce),
    .I1(sig000002a6),
    .I2(sig000002d0),
    .I3(sig00000003),
    .O(sig00000308)
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  blk00000438 (
    .I0(ce),
    .I1(sig0000036c),
    .I2(sig000002cf),
    .I3(sig0000036a),
    .O(sig0000035d)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk00000439 (
    .I0(NlwRenamedSig_OI_xn_index[0]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig00000291),
    .I3(sig00000003),
    .O(sig0000035e)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk0000043a (
    .I0(NlwRenamedSig_OI_xn_index[1]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig00000291),
    .I3(sig00000003),
    .O(sig0000035f)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk0000043b (
    .I0(NlwRenamedSig_OI_xn_index[2]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig00000291),
    .I3(sig00000003),
    .O(sig00000360)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk0000043c (
    .I0(NlwRenamedSig_OI_xn_index[3]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig00000291),
    .I3(sig00000003),
    .O(sig00000361)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk0000043d (
    .I0(NlwRenamedSig_OI_xn_index[4]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig00000291),
    .I3(sig00000003),
    .O(sig00000362)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk0000043e (
    .I0(NlwRenamedSig_OI_xn_index[5]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig00000291),
    .I3(sig00000003),
    .O(sig00000363)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk0000043f (
    .I0(NlwRenamedSig_OI_xn_index[6]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig00000291),
    .I3(sig00000003),
    .O(sig00000364)
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  blk00000440 (
    .I0(sig00000291),
    .I1(NlwRenamedSig_OI_xn_index[8]),
    .I2(sig00000003),
    .I3(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .O(sig00000366)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  blk00000441 (
    .I0(NlwRenamedSig_OI_xn_index[7]),
    .I1(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I2(sig00000291),
    .I3(sig00000003),
    .O(sig00000365)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk00000442 (
    .I0(sig0000036a),
    .I1(sig0000036c),
    .I2(sig000002cf),
    .O(sig00000007)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk00000443 (
    .I0(sig0000000a),
    .I1(sig0000036a),
    .O(sig00000367)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000444 (
    .I0(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I1(sig00000291),
    .O(sig00000368)
  );
  FDS #(
    .INIT ( 1'b1 ))
  blk00000445 (
    .C(clk),
    .D(sig00000391),
    .S(sig00000002),
    .Q(sig0000004a)
  );
  FDS #(
    .INIT ( 1'b1 ))
  blk00000446 (
    .C(clk),
    .D(sig00000392),
    .S(sig00000002),
    .Q(sig00000049)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000447 (
    .C(clk),
    .D(sig00000393),
    .Q(sig00000258)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000448 (
    .C(clk),
    .D(sig00000394),
    .Q(sig0000024c)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000449 (
    .C(clk),
    .D(sig00000395),
    .Q(sig000002a6)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000044a (
    .C(clk),
    .D(sig00000396),
    .Q(sig00000252)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000044b (
    .C(clk),
    .D(sig00000397),
    .Q(sig000002c4)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000044c (
    .C(clk),
    .D(sig00000398),
    .Q(sig00000369)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000044d (
    .C(clk),
    .D(sig00000399),
    .Q(sig00000004)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000044e (
    .C(clk),
    .D(sig0000039a),
    .Q(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk0000044f (
    .I0(sig0000028f),
    .I1(sig000002d2),
    .I2(sig000002d3),
    .I3(sig0000000a),
    .O(sig000002f0)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk00000450 (
    .I0(sig000002d2),
    .I1(sig000002d3),
    .I2(sig0000028e),
    .I3(sig0000000a),
    .O(sig000002f1)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk00000451 (
    .I0(sig000002d2),
    .I1(sig000002d3),
    .I2(sig0000028d),
    .I3(sig0000000a),
    .O(sig000002f2)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk00000452 (
    .I0(sig000002d2),
    .I1(sig000002d3),
    .I2(sig0000028c),
    .I3(sig0000000a),
    .O(sig000002f3)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk00000453 (
    .I0(sig000002d2),
    .I1(sig000002d3),
    .I2(sig0000028b),
    .I3(sig0000000a),
    .O(sig000002f4)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk00000454 (
    .I0(sig000002d2),
    .I1(sig000002d3),
    .I2(sig0000028a),
    .I3(sig0000000a),
    .O(sig000002f5)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk00000455 (
    .I0(sig000002d2),
    .I1(sig000002d3),
    .I2(sig00000289),
    .I3(sig0000000a),
    .O(sig000002f6)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk00000456 (
    .I0(sig000002d2),
    .I1(sig000002d3),
    .I2(sig00000288),
    .I3(sig0000000a),
    .O(sig000002f7)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  blk00000457 (
    .I0(sig0000000a),
    .I1(sig000002d3),
    .I2(sig000002d2),
    .I3(sig00000287),
    .O(sig000002f8)
  );
  LUT5 #(
    .INIT ( 32'hFA2AAA2A ))
  blk00000458 (
    .I0(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .I1(sig00000291),
    .I2(ce),
    .I3(sig00000003),
    .I4(start),
    .O(sig0000039a)
  );
  LUT5 #(
    .INIT ( 32'h2E2A2A2A ))
  blk00000459 (
    .I0(sig00000252),
    .I1(ce),
    .I2(sig00000250),
    .I3(sig00000292),
    .I4(sig000002d1),
    .O(sig00000396)
  );
  LUT4 #(
    .INIT ( 16'h2E2A ))
  blk0000045a (
    .I0(sig00000004),
    .I1(ce),
    .I2(sig00000290),
    .I3(sig000002d3),
    .O(sig00000399)
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  blk0000045b (
    .I0(ce),
    .I1(sig00000369),
    .I2(sig0000036c),
    .I3(sig000002cf),
    .O(sig00000398)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  blk0000045c (
    .I0(sig00000369),
    .I1(ce),
    .I2(sig000002c4),
    .I3(sig0000036b),
    .O(sig00000397)
  );
  LUT6 #(
    .INIT ( 64'h5555511144444000 ))
  blk0000045d (
    .I0(sig00000241),
    .I1(ce),
    .I2(sig00000290),
    .I3(sig000002a6),
    .I4(sig0000000a),
    .I5(sig00000258),
    .O(sig00000393)
  );
  LUT4 #(
    .INIT ( 16'h2E2A ))
  blk0000045e (
    .I0(sig000002a6),
    .I1(ce),
    .I2(sig00000241),
    .I3(sig0000000a),
    .O(sig00000395)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk0000045f (
    .I0(sig0000004a),
    .I1(ce),
    .I2(sig0000000b),
    .I3(sig00000049),
    .O(sig00000391)
  );
  LUT6 #(
    .INIT ( 64'h0000000000D80000 ))
  blk00000460 (
    .I0(ce),
    .I1(sig00000242),
    .I2(sig0000024c),
    .I3(sig000002d4),
    .I4(sig000002d6),
    .I5(sig000002d5),
    .O(sig00000394)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  blk00000461 (
    .I0(sig00000049),
    .I1(ce),
    .I2(fwd_inv_we),
    .I3(fwd_inv),
    .O(sig00000392)
  );
  LUT4 #(
    .INIT ( 16'h4002 ))
  blk00000462 (
    .I0(sig00000229),
    .I1(sig0000022b),
    .I2(sig0000022c),
    .I3(sig0000022a),
    .O(sig0000020c)
  );
  LUT4 #(
    .INIT ( 16'h4042 ))
  blk00000463 (
    .I0(sig00000229),
    .I1(sig0000022a),
    .I2(sig0000022b),
    .I3(sig0000022c),
    .O(sig0000020b)
  );
  LUT4 #(
    .INIT ( 16'h5556 ))
  blk00000464 (
    .I0(sig00000229),
    .I1(sig0000022c),
    .I2(sig0000022b),
    .I3(sig0000022a),
    .O(sig00000206)
  );
  LUT4 #(
    .INIT ( 16'h5446 ))
  blk00000465 (
    .I0(sig00000229),
    .I1(sig0000022a),
    .I2(sig0000022b),
    .I3(sig0000022c),
    .O(sig00000208)
  );
  LUT4 #(
    .INIT ( 16'h5456 ))
  blk00000466 (
    .I0(sig00000229),
    .I1(sig0000022b),
    .I2(sig0000022a),
    .I3(sig0000022c),
    .O(sig00000207)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAACAAAA ))
  blk00000467 (
    .I0(sig0000029b),
    .I1(sig0000028f),
    .I2(sig000002d1),
    .I3(sig0000000a),
    .I4(sig000002d5),
    .I5(sig000002d6),
    .O(sig0000001e)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAACAAAA ))
  blk00000468 (
    .I0(sig0000029a),
    .I1(sig0000028e),
    .I2(sig000002d1),
    .I3(sig0000000a),
    .I4(sig000002d5),
    .I5(sig000002d6),
    .O(sig0000001f)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAACAAAA ))
  blk00000469 (
    .I0(sig00000299),
    .I1(sig0000028d),
    .I2(sig000002d1),
    .I3(sig0000000a),
    .I4(sig000002d5),
    .I5(sig000002d6),
    .O(sig00000020)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAACAAAA ))
  blk0000046a (
    .I0(sig00000298),
    .I1(sig0000028c),
    .I2(sig000002d1),
    .I3(sig0000000a),
    .I4(sig000002d5),
    .I5(sig000002d6),
    .O(sig00000021)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAACAAAA ))
  blk0000046b (
    .I0(sig00000297),
    .I1(sig0000028b),
    .I2(sig000002d1),
    .I3(sig0000000a),
    .I4(sig000002d5),
    .I5(sig000002d6),
    .O(sig00000022)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAACAAAA ))
  blk0000046c (
    .I0(sig00000296),
    .I1(sig0000028a),
    .I2(sig000002d1),
    .I3(sig0000000a),
    .I4(sig000002d5),
    .I5(sig000002d6),
    .O(sig00000023)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAACAAAA ))
  blk0000046d (
    .I0(sig00000295),
    .I1(sig00000289),
    .I2(sig000002d1),
    .I3(sig0000000a),
    .I4(sig000002d5),
    .I5(sig000002d6),
    .O(sig00000024)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAACAAAA ))
  blk0000046e (
    .I0(sig00000294),
    .I1(sig00000288),
    .I2(sig000002d1),
    .I3(sig0000000a),
    .I4(sig000002d5),
    .I5(sig000002d6),
    .O(sig00000025)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAACAAAA ))
  blk0000046f (
    .I0(sig00000293),
    .I1(sig00000287),
    .I2(sig000002d1),
    .I3(sig0000000a),
    .I4(sig000002d5),
    .I5(sig000002d6),
    .O(sig00000026)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk00000470 (
    .I0(sig000002af),
    .I1(sig000002d1),
    .I2(sig0000000a),
    .I3(sig000002a4),
    .O(sig00000027)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk00000471 (
    .I0(sig000002ae),
    .I1(sig000002d1),
    .I2(sig0000000a),
    .I3(sig000002a3),
    .O(sig00000028)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk00000472 (
    .I0(sig000002ad),
    .I1(sig000002d1),
    .I2(sig0000000a),
    .I3(sig000002a2),
    .O(sig00000029)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk00000473 (
    .I0(sig000002ac),
    .I1(sig000002d1),
    .I2(sig0000000a),
    .I3(sig000002a1),
    .O(sig0000002a)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk00000474 (
    .I0(sig000002ab),
    .I1(sig000002d1),
    .I2(sig0000000a),
    .I3(sig000002a0),
    .O(sig0000002b)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk00000475 (
    .I0(sig000002aa),
    .I1(sig000002d1),
    .I2(sig0000000a),
    .I3(sig0000029f),
    .O(sig0000002c)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk00000476 (
    .I0(sig000002a9),
    .I1(sig000002d1),
    .I2(sig0000000a),
    .I3(sig0000029e),
    .O(sig0000002d)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk00000477 (
    .I0(sig000002a8),
    .I1(sig000002d1),
    .I2(sig0000000a),
    .I3(sig0000029d),
    .O(sig0000002e)
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  blk00000478 (
    .I0(sig000002a7),
    .I1(sig000002d1),
    .I2(sig0000000a),
    .I3(sig0000029c),
    .O(sig0000002f)
  );
  INV   blk00000479 (
    .I(sig000000b9),
    .O(sig00000030)
  );
  INV   blk0000047a (
    .I(sig0000028f),
    .O(sig00000264)
  );
  RAMB8BWER #(
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000 ),
    .INIT_00 ( 256'h302E2D2B2A2827252422211F1E1C1B191716141311100E0D0B09080605030200 ),
    .INIT_01 ( 256'h5958575655545251504F4E4C4B4A484746444342403F3E3C3B3A383735343231 ),
    .INIT_02 ( 256'h7675747473727271706F6F6E6D6C6B6A6A696867666564636261605F5E5D5C5B ),
    .INIT_03 ( 256'h808080808080807F7F7F7F7F7E7E7E7E7D7D7D7C7C7B7B7A7A7A797978777776 ),
    .INIT_04 ( 256'h77777879797A7A7A7B7B7C7C7D7D7D7E7E7E7E7F7F7F7F7F8080808080808080 ),
    .INIT_05 ( 256'h5C5D5E5F606162636465666768696A6A6B6C6D6E6F6F70717272737474757676 ),
    .INIT_06 ( 256'h32343537383A3B3C3E3F404243444647484A4B4C4E4F5051525455565758595B ),
    .INIT_07 ( 256'h0203050608090B0D0E101113141617191B1C1E1F2122242527282A2B2D2E3031 ),
    .INIT_08 ( 256'h77777879797A7A7A7B7B7C7C7D7D7D7E7E7E7E7F7F7F7F7F8080808080808080 ),
    .INIT_09 ( 256'h5C5D5E5F606162636465666768696A6A6B6C6D6E6F6F70717272737474757676 ),
    .INIT_0A ( 256'h32343537383A3B3C3E3F404243444647484A4B4C4E4F5051525455565758595B ),
    .INIT_0B ( 256'h0203050608090B0D0E101113141617191B1C1E1F2122242527282A2B2D2E3031 ),
    .INIT_0C ( 256'hD0D2D3D5D6D8D9DBDCDEDFE1E2E4E5E7E9EAECEDEFF0F2F3F5F7F8FAFBFDFE00 ),
    .INIT_0D ( 256'hA7A8A9AAABACAEAFB0B1B2B4B5B6B8B9BABCBDBEC0C1C2C4C5C6C8C9CBCCCECF ),
    .INIT_0E ( 256'h8A8B8C8C8D8E8E8F9091919293949596969798999A9B9C9D9E9FA0A1A2A3A4A5 ),
    .INIT_0F ( 256'h808080808080808181818181828282828383838484858586868687878889898A ),
    .INIT_A ( 18'h00000 ),
    .INIT_B ( 18'h00000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 9 ),
    .DATA_WIDTH_B ( 9 ),
    .DOA_REG ( 1 ),
    .DOB_REG ( 1 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .RAM_MODE ( "TDP" ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 18'h00000 ),
    .SRVAL_B ( 18'h00000 ),
    .INIT_FILE ( "NONE" ),
    .SIM_COLLISION_CHECK ( "ALL" ))
  blk0000047b (
    .RSTBRST(sig00000002),
    .ENBRDEN(sig000002b0),
    .REGCEA(sig000002b0),
    .ENAWREN(sig000002b0),
    .CLKAWRCLK(clk),
    .CLKBRDCLK(clk),
    .REGCEBREGCE(sig000002b0),
    .RSTA(sig00000002),
    .WEAWEL({sig00000002, sig00000002}),
    .DOADO({\NLW_blk0000047b_DOADO<15>_UNCONNECTED , \NLW_blk0000047b_DOADO<14>_UNCONNECTED , \NLW_blk0000047b_DOADO<13>_UNCONNECTED , 
\NLW_blk0000047b_DOADO<12>_UNCONNECTED , \NLW_blk0000047b_DOADO<11>_UNCONNECTED , \NLW_blk0000047b_DOADO<10>_UNCONNECTED , 
\NLW_blk0000047b_DOADO<9>_UNCONNECTED , \NLW_blk0000047b_DOADO<8>_UNCONNECTED , sig00000218, sig00000219, sig0000021a, sig0000021b, sig0000021c, 
sig0000021d, sig0000021e, sig0000021f}),
    .DOPADOP({\NLW_blk0000047b_DOPADOP<1>_UNCONNECTED , sig00000217}),
    .DOPBDOP({\NLW_blk0000047b_DOPBDOP<1>_UNCONNECTED , sig00000220}),
    .WEBWEU({sig00000002, sig00000002}),
    .ADDRAWRADDR({sig00000002, sig00000002, sig000002ce, sig000002cd, sig000002cc, sig000002cb, sig000002ca, sig000002c9, sig000002c8, sig000002c7, 
\NLW_blk0000047b_ADDRAWRADDR<2>_UNCONNECTED , \NLW_blk0000047b_ADDRAWRADDR<1>_UNCONNECTED , \NLW_blk0000047b_ADDRAWRADDR<0>_UNCONNECTED }),
    .DIPBDIP({\NLW_blk0000047b_DIPBDIP<1>_UNCONNECTED , \NLW_blk0000047b_DIPBDIP<0>_UNCONNECTED }),
    .DIBDI({\NLW_blk0000047b_DIBDI<15>_UNCONNECTED , \NLW_blk0000047b_DIBDI<14>_UNCONNECTED , \NLW_blk0000047b_DIBDI<13>_UNCONNECTED , 
\NLW_blk0000047b_DIBDI<12>_UNCONNECTED , \NLW_blk0000047b_DIBDI<11>_UNCONNECTED , \NLW_blk0000047b_DIBDI<10>_UNCONNECTED , 
\NLW_blk0000047b_DIBDI<9>_UNCONNECTED , \NLW_blk0000047b_DIBDI<8>_UNCONNECTED , \NLW_blk0000047b_DIBDI<7>_UNCONNECTED , 
\NLW_blk0000047b_DIBDI<6>_UNCONNECTED , \NLW_blk0000047b_DIBDI<5>_UNCONNECTED , \NLW_blk0000047b_DIBDI<4>_UNCONNECTED , 
\NLW_blk0000047b_DIBDI<3>_UNCONNECTED , \NLW_blk0000047b_DIBDI<2>_UNCONNECTED , \NLW_blk0000047b_DIBDI<1>_UNCONNECTED , 
\NLW_blk0000047b_DIBDI<0>_UNCONNECTED }),
    .DIADI({\NLW_blk0000047b_DIADI<15>_UNCONNECTED , \NLW_blk0000047b_DIADI<14>_UNCONNECTED , \NLW_blk0000047b_DIADI<13>_UNCONNECTED , 
\NLW_blk0000047b_DIADI<12>_UNCONNECTED , \NLW_blk0000047b_DIADI<11>_UNCONNECTED , \NLW_blk0000047b_DIADI<10>_UNCONNECTED , 
\NLW_blk0000047b_DIADI<9>_UNCONNECTED , \NLW_blk0000047b_DIADI<8>_UNCONNECTED , sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002}),
    .ADDRBRDADDR({sig00000002, sig00000001, sig000002ce, sig000002cd, sig000002cc, sig000002cb, sig000002ca, sig000002c9, sig000002c8, sig000002c7, 
\NLW_blk0000047b_ADDRBRDADDR<2>_UNCONNECTED , \NLW_blk0000047b_ADDRBRDADDR<1>_UNCONNECTED , \NLW_blk0000047b_ADDRBRDADDR<0>_UNCONNECTED }),
    .DOBDO({\NLW_blk0000047b_DOBDO<15>_UNCONNECTED , \NLW_blk0000047b_DOBDO<14>_UNCONNECTED , \NLW_blk0000047b_DOBDO<13>_UNCONNECTED , 
\NLW_blk0000047b_DOBDO<12>_UNCONNECTED , \NLW_blk0000047b_DOBDO<11>_UNCONNECTED , \NLW_blk0000047b_DOBDO<10>_UNCONNECTED , 
\NLW_blk0000047b_DOBDO<9>_UNCONNECTED , \NLW_blk0000047b_DOBDO<8>_UNCONNECTED , sig00000221, sig00000222, sig00000223, sig00000224, sig00000225, 
sig00000226, sig00000227, sig00000228}),
    .DIPADIP({\NLW_blk0000047b_DIPADIP<1>_UNCONNECTED , sig00000002})
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000047c (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000001),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000004c),
    .Q(sig0000039b),
    .Q15(NLW_blk0000047c_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000047d (
    .C(clk),
    .CE(ce),
    .D(sig0000039b),
    .Q(sig000001b9)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000047e (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000002),
    .A3(sig00000001),
    .CE(ce),
    .CLK(clk),
    .D(sig00000255),
    .Q(sig0000039c),
    .Q15(NLW_blk0000047e_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000047f (
    .C(clk),
    .CE(ce),
    .D(sig0000039c),
    .Q(sig0000039d)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000480 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000179),
    .Q(sig0000039e),
    .Q15(NLW_blk00000480_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000481 (
    .C(clk),
    .CE(ce),
    .D(sig0000039e),
    .Q(sig00000147)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000482 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000028d),
    .Q(sig0000039f),
    .Q15(NLW_blk00000482_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000483 (
    .C(clk),
    .CE(ce),
    .D(sig0000039f),
    .Q(sig000002a9)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000484 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000028f),
    .Q(sig000003a0),
    .Q15(NLW_blk00000484_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000485 (
    .C(clk),
    .CE(ce),
    .D(sig000003a0),
    .Q(sig000002a7)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000486 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000028e),
    .Q(sig000003a1),
    .Q15(NLW_blk00000486_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000487 (
    .C(clk),
    .CE(ce),
    .D(sig000003a1),
    .Q(sig000002a8)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000488 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000028a),
    .Q(sig000003a2),
    .Q15(NLW_blk00000488_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000489 (
    .C(clk),
    .CE(ce),
    .D(sig000003a2),
    .Q(sig000002ac)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000048a (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000028c),
    .Q(sig000003a3),
    .Q15(NLW_blk0000048a_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000048b (
    .C(clk),
    .CE(ce),
    .D(sig000003a3),
    .Q(sig000002aa)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000048c (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig0000028b),
    .Q(sig000003a4),
    .Q15(NLW_blk0000048c_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000048d (
    .C(clk),
    .CE(ce),
    .D(sig000003a4),
    .Q(sig000002ab)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000048e (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000287),
    .Q(sig000003a5),
    .Q15(NLW_blk0000048e_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000048f (
    .C(clk),
    .CE(ce),
    .D(sig000003a5),
    .Q(sig000002af)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000490 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000289),
    .Q(sig000003a6),
    .Q15(NLW_blk00000490_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000491 (
    .C(clk),
    .CE(ce),
    .D(sig000003a6),
    .Q(sig000002ad)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000492 (
    .A0(sig00000002),
    .A1(sig00000002),
    .A2(sig00000002),
    .A3(sig00000002),
    .CE(ce),
    .CLK(clk),
    .D(sig00000288),
    .Q(sig000003a7),
    .Q15(NLW_blk00000492_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000493 (
    .C(clk),
    .CE(ce),
    .D(sig000003a7),
    .Q(sig000002ae)
  );
  FDRE   blk00000494 (
    .C(clk),
    .CE(ce),
    .D(sig00000001),
    .R(sig00000002),
    .Q(sig000003a8)
  );
  FDRE   blk00000495 (
    .C(clk),
    .CE(ce),
    .D(sig000003a8),
    .R(sig00000002),
    .Q(sig000003a9)
  );
  FDRE   blk00000496 (
    .C(clk),
    .CE(ce),
    .D(sig000003a9),
    .R(sig00000002),
    .Q(sig000003aa)
  );
  FDRE   blk00000497 (
    .C(clk),
    .CE(ce),
    .D(sig000003aa),
    .R(sig00000002),
    .Q(sig000003ab)
  );
  FDRE   blk00000498 (
    .C(clk),
    .CE(ce),
    .D(sig000003ab),
    .R(sig00000002),
    .Q(sig000003ac)
  );
  FDRE   blk00000499 (
    .C(clk),
    .CE(ce),
    .D(sig000003ac),
    .R(sig00000002),
    .Q(sig000003ad)
  );
  FDRE   blk0000049a (
    .C(clk),
    .CE(ce),
    .D(sig000003ad),
    .R(sig00000002),
    .Q(sig000003ae)
  );
  FDRE   blk0000049b (
    .C(clk),
    .CE(ce),
    .D(sig000003ae),
    .R(sig00000002),
    .Q(sig000003af)
  );
  FDRE   blk0000049c (
    .C(clk),
    .CE(ce),
    .D(sig000003af),
    .R(sig00000002),
    .Q(sig000003b0)
  );
  FDRE   blk0000049d (
    .C(clk),
    .CE(ce),
    .D(sig000003b0),
    .R(sig00000002),
    .Q(sig000003b1)
  );
  FDRE   blk0000049e (
    .C(clk),
    .CE(ce),
    .D(sig000003b1),
    .R(sig00000002),
    .Q(sig000003b2)
  );
  FDRE   blk0000049f (
    .C(clk),
    .CE(ce),
    .D(sig000003b2),
    .R(sig00000002),
    .Q(sig000003b3)
  );
  FDRE   blk000004a0 (
    .C(clk),
    .CE(ce),
    .D(sig000003b3),
    .R(sig00000002),
    .Q(sig000003b4)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk000004a1 (
    .I0(sig0000039d),
    .I1(sig000003b4),
    .O(sig000003b5)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk000004a2 (
    .C(clk),
    .CE(ce),
    .D(sig000003b5),
    .R(sig00000002),
    .Q(sig0000004b)
  );
  RAMB8BWER #(
    .DATA_WIDTH_A ( 18 ),
    .DATA_WIDTH_B ( 18 ),
    .DOA_REG ( 0 ),
    .DOB_REG ( 1 ),
    .EN_RSTRAM_A ( "FALSE" ),
    .EN_RSTRAM_B ( "FALSE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 18'h00000 ),
    .INIT_B ( 18'h00000 ),
    .INIT_FILE ( "NONE" ),
    .RAM_MODE ( "TDP" ),
    .RSTTYPE ( "SYNC" ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .SIM_COLLISION_CHECK ( "GENERATE_X_ONLY" ),
    .SRVAL_A ( 18'h00000 ),
    .SRVAL_B ( 18'h00000 ),
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ))
  \blk000000e4/blk000000f6  (
    .RSTBRST(\blk000000e4/sig000003fc ),
    .ENBRDEN(ce),
    .REGCEA(\blk000000e4/sig000003fc ),
    .ENAWREN(ce),
    .CLKAWRCLK(clk),
    .CLKBRDCLK(clk),
    .REGCEBREGCE(ce),
    .RSTA(\blk000000e4/sig000003fc ),
    .WEAWEL({sig00000031, sig00000031}),
    .DOADO({\NLW_blk000000e4/blk000000f6_DOADO<15>_UNCONNECTED , \NLW_blk000000e4/blk000000f6_DOADO<14>_UNCONNECTED , 
\NLW_blk000000e4/blk000000f6_DOADO<13>_UNCONNECTED , \NLW_blk000000e4/blk000000f6_DOADO<12>_UNCONNECTED , 
\NLW_blk000000e4/blk000000f6_DOADO<11>_UNCONNECTED , \NLW_blk000000e4/blk000000f6_DOADO<10>_UNCONNECTED , 
\NLW_blk000000e4/blk000000f6_DOADO<9>_UNCONNECTED , \NLW_blk000000e4/blk000000f6_DOADO<8>_UNCONNECTED , 
\NLW_blk000000e4/blk000000f6_DOADO<7>_UNCONNECTED , \NLW_blk000000e4/blk000000f6_DOADO<6>_UNCONNECTED , 
\NLW_blk000000e4/blk000000f6_DOADO<5>_UNCONNECTED , \NLW_blk000000e4/blk000000f6_DOADO<4>_UNCONNECTED , 
\NLW_blk000000e4/blk000000f6_DOADO<3>_UNCONNECTED , \NLW_blk000000e4/blk000000f6_DOADO<2>_UNCONNECTED , 
\NLW_blk000000e4/blk000000f6_DOADO<1>_UNCONNECTED , \NLW_blk000000e4/blk000000f6_DOADO<0>_UNCONNECTED }),
    .DOPADOP({\NLW_blk000000e4/blk000000f6_DOPADOP<1>_UNCONNECTED , \NLW_blk000000e4/blk000000f6_DOPADOP<0>_UNCONNECTED }),
    .DOPBDOP({\NLW_blk000000e4/blk000000f6_DOPBDOP<1>_UNCONNECTED , \blk000000e4/sig000003eb }),
    .WEBWEU({\blk000000e4/sig000003fc , \blk000000e4/sig000003fc }),
    .ADDRAWRADDR({sig00000114, sig00000113, sig00000112, sig00000111, sig00000110, sig0000010f, sig0000010e, sig0000010d, sig0000010c, 
\blk000000e4/sig000003fc , \blk000000e4/sig000003fc , \blk000000e4/sig000003fc , \blk000000e4/sig000003fc }),
    .DIPBDIP({\blk000000e4/sig000003fc , \blk000000e4/sig000003fc }),
    .DIBDI({\blk000000e4/sig000003fc , \blk000000e4/sig000003fc , \blk000000e4/sig000003fc , \blk000000e4/sig000003fc , \blk000000e4/sig000003fc , 
\blk000000e4/sig000003fc , \blk000000e4/sig000003fc , \blk000000e4/sig000003fc , \blk000000e4/sig000003fc , \blk000000e4/sig000003fc , 
\blk000000e4/sig000003fc , \blk000000e4/sig000003fc , \blk000000e4/sig000003fc , \blk000000e4/sig000003fc , \blk000000e4/sig000003fc , 
\blk000000e4/sig000003fc }),
    .DIADI({\blk000000e4/sig000003fc , sig0000007c, sig0000007b, sig0000007a, sig00000079, sig00000078, sig00000077, sig00000076, sig00000074, 
sig00000073, sig00000072, sig00000071, sig00000070, sig0000006f, sig0000006e, sig0000006d}),
    .ADDRBRDADDR({sig0000010b, sig0000010a, sig00000109, sig00000108, sig00000107, sig00000106, sig00000105, sig00000104, sig00000103, 
\blk000000e4/sig000003fc , \blk000000e4/sig000003fc , \blk000000e4/sig000003fc , \blk000000e4/sig000003fc }),
    .DOBDO({\NLW_blk000000e4/blk000000f6_DOBDO<15>_UNCONNECTED , \blk000000e4/sig000003e4 , \blk000000e4/sig000003e5 , \blk000000e4/sig000003e6 , 
\blk000000e4/sig000003e7 , \blk000000e4/sig000003e8 , \blk000000e4/sig000003e9 , \blk000000e4/sig000003ea , \blk000000e4/sig000003dc , 
\blk000000e4/sig000003dd , \blk000000e4/sig000003de , \blk000000e4/sig000003df , \blk000000e4/sig000003e0 , \blk000000e4/sig000003e1 , 
\blk000000e4/sig000003e2 , \blk000000e4/sig000003e3 }),
    .DIPADIP({\blk000000e4/sig000003fc , sig00000075})
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000f5  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig000003e4 ),
    .Q(sig000000da)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000f4  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig000003e5 ),
    .Q(sig000000d9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000f3  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig000003e6 ),
    .Q(sig000000d8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000f2  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig000003e7 ),
    .Q(sig000000d7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000f1  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig000003e8 ),
    .Q(sig000000d6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000f0  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig000003e9 ),
    .Q(sig000000d5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000ef  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig000003ea ),
    .Q(sig000000d4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000ee  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig000003eb ),
    .Q(sig000000d3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000ed  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig000003dc ),
    .Q(sig000000d2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000ec  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig000003dd ),
    .Q(sig000000d1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000eb  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig000003de ),
    .Q(sig000000d0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000ea  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig000003df ),
    .Q(sig000000cf)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000e9  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig000003e0 ),
    .Q(sig000000ce)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000e8  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig000003e1 ),
    .Q(sig000000cd)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000e7  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig000003e2 ),
    .Q(sig000000cc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000000e4/blk000000e6  (
    .C(clk),
    .CE(ce),
    .D(\blk000000e4/sig000003e3 ),
    .Q(sig000000cb)
  );
  GND   \blk000000e4/blk000000e5  (
    .G(\blk000000e4/sig000003fc )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000117/blk00000118/blk0000011c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000117/blk00000118/sig00000408 ),
    .Q(sig000000ca)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000117/blk00000118/blk0000011b  (
    .A0(\blk00000117/blk00000118/sig00000406 ),
    .A1(\blk00000117/blk00000118/sig00000407 ),
    .A2(\blk00000117/blk00000118/sig00000406 ),
    .A3(\blk00000117/blk00000118/sig00000406 ),
    .CE(ce),
    .CLK(clk),
    .D(sig00000009),
    .Q(\blk00000117/blk00000118/sig00000408 ),
    .Q15(\NLW_blk00000117/blk00000118/blk0000011b_Q15_UNCONNECTED )
  );
  VCC   \blk00000117/blk00000118/blk0000011a  (
    .P(\blk00000117/blk00000118/sig00000407 )
  );
  GND   \blk00000117/blk00000118/blk00000119  (
    .G(\blk00000117/blk00000118/sig00000406 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000013d/blk0000013e/blk00000142  (
    .C(clk),
    .CE(ce),
    .D(\blk0000013d/blk0000013e/sig00000413 ),
    .Q(sig000000b9)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000013d/blk0000013e/blk00000141  (
    .A0(\blk0000013d/blk0000013e/sig00000412 ),
    .A1(\blk0000013d/blk0000013e/sig00000411 ),
    .A2(\blk0000013d/blk0000013e/sig00000412 ),
    .A3(\blk0000013d/blk0000013e/sig00000411 ),
    .CE(ce),
    .CLK(clk),
    .D(sig0000004c),
    .Q(\blk0000013d/blk0000013e/sig00000413 ),
    .Q15(\NLW_blk0000013d/blk0000013e/blk00000141_Q15_UNCONNECTED )
  );
  VCC   \blk0000013d/blk0000013e/blk00000140  (
    .P(\blk0000013d/blk0000013e/sig00000412 )
  );
  GND   \blk0000013d/blk0000013e/blk0000013f  (
    .G(\blk0000013d/blk0000013e/sig00000411 )
  );
  INV   \blk00000143/blk00000177  (
    .I(sig00000030),
    .O(\blk00000143/sig00000461 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk00000176  (
    .I0(sig000000c9),
    .I1(sig00000102),
    .I2(sig00000030),
    .O(\blk00000143/sig00000462 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk00000175  (
    .I0(sig000000c8),
    .I1(sig00000100),
    .I2(sig00000030),
    .O(\blk00000143/sig0000044b )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk00000174  (
    .I0(sig000000c7),
    .I1(sig000000ff),
    .I2(sig00000030),
    .O(\blk00000143/sig0000044c )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk00000173  (
    .I0(sig000000c6),
    .I1(sig000000fe),
    .I2(sig00000030),
    .O(\blk00000143/sig0000044d )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk00000172  (
    .I0(sig000000c5),
    .I1(sig000000fd),
    .I2(sig00000030),
    .O(\blk00000143/sig0000044e )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk00000171  (
    .I0(sig000000c4),
    .I1(sig000000fc),
    .I2(sig00000030),
    .O(\blk00000143/sig0000044f )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk00000170  (
    .I0(sig000000c3),
    .I1(sig000000fb),
    .I2(sig00000030),
    .O(\blk00000143/sig00000450 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk0000016f  (
    .I0(sig000000c2),
    .I1(sig000000fa),
    .I2(sig00000030),
    .O(\blk00000143/sig00000451 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000143/blk0000016e  (
    .I0(sig000000f9),
    .I1(sig00000030),
    .O(\blk00000143/sig00000452 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000143/blk0000016d  (
    .I0(sig000000f8),
    .I1(sig00000030),
    .O(\blk00000143/sig00000453 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk0000016c  (
    .I0(sig000000c9),
    .I1(sig00000102),
    .I2(sig00000030),
    .O(\blk00000143/sig00000449 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000143/blk0000016b  (
    .I0(sig000000c9),
    .I1(sig00000101),
    .I2(sig00000030),
    .O(\blk00000143/sig0000044a )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000143/blk0000016a  (
    .I0(sig000000f7),
    .I1(sig00000030),
    .O(\blk00000143/sig00000454 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000169  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig00000448 ),
    .Q(sig000000ac)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000168  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig00000447 ),
    .Q(sig000000ad)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000167  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig00000446 ),
    .Q(sig000000ae)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000166  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig00000445 ),
    .Q(sig000000af)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000165  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig00000444 ),
    .Q(sig000000b0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000164  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig00000443 ),
    .Q(sig000000b1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000163  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig00000442 ),
    .Q(sig000000b2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000162  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig00000441 ),
    .Q(sig000000b3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000161  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig00000440 ),
    .Q(sig000000b4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk00000160  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig0000043f ),
    .Q(sig000000b5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk0000015f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig0000043e ),
    .Q(sig000000b6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk0000015e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig0000043d ),
    .Q(sig000000b7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000143/blk0000015d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000143/sig0000043c ),
    .Q(sig000000b8)
  );
  MUXCY   \blk00000143/blk0000015c  (
    .CI(\blk00000143/sig00000461 ),
    .DI(sig00000002),
    .S(\blk00000143/sig00000454 ),
    .O(\blk00000143/sig00000460 )
  );
  MUXCY   \blk00000143/blk0000015b  (
    .CI(\blk00000143/sig00000460 ),
    .DI(sig00000002),
    .S(\blk00000143/sig00000453 ),
    .O(\blk00000143/sig0000045f )
  );
  MUXCY   \blk00000143/blk0000015a  (
    .CI(\blk00000143/sig0000045f ),
    .DI(sig00000002),
    .S(\blk00000143/sig00000452 ),
    .O(\blk00000143/sig0000045e )
  );
  MUXCY   \blk00000143/blk00000159  (
    .CI(\blk00000143/sig0000045e ),
    .DI(sig000000c2),
    .S(\blk00000143/sig00000451 ),
    .O(\blk00000143/sig0000045d )
  );
  MUXCY   \blk00000143/blk00000158  (
    .CI(\blk00000143/sig0000045d ),
    .DI(sig000000c3),
    .S(\blk00000143/sig00000450 ),
    .O(\blk00000143/sig0000045c )
  );
  MUXCY   \blk00000143/blk00000157  (
    .CI(\blk00000143/sig0000045c ),
    .DI(sig000000c4),
    .S(\blk00000143/sig0000044f ),
    .O(\blk00000143/sig0000045b )
  );
  MUXCY   \blk00000143/blk00000156  (
    .CI(\blk00000143/sig0000045b ),
    .DI(sig000000c5),
    .S(\blk00000143/sig0000044e ),
    .O(\blk00000143/sig0000045a )
  );
  MUXCY   \blk00000143/blk00000155  (
    .CI(\blk00000143/sig0000045a ),
    .DI(sig000000c6),
    .S(\blk00000143/sig0000044d ),
    .O(\blk00000143/sig00000459 )
  );
  MUXCY   \blk00000143/blk00000154  (
    .CI(\blk00000143/sig00000459 ),
    .DI(sig000000c7),
    .S(\blk00000143/sig0000044c ),
    .O(\blk00000143/sig00000458 )
  );
  MUXCY   \blk00000143/blk00000153  (
    .CI(\blk00000143/sig00000458 ),
    .DI(sig000000c8),
    .S(\blk00000143/sig0000044b ),
    .O(\blk00000143/sig00000457 )
  );
  MUXCY   \blk00000143/blk00000152  (
    .CI(\blk00000143/sig00000457 ),
    .DI(sig000000c9),
    .S(\blk00000143/sig0000044a ),
    .O(\blk00000143/sig00000456 )
  );
  MUXCY   \blk00000143/blk00000151  (
    .CI(\blk00000143/sig00000456 ),
    .DI(sig000000c9),
    .S(\blk00000143/sig00000462 ),
    .O(\blk00000143/sig00000455 )
  );
  XORCY   \blk00000143/blk00000150  (
    .CI(\blk00000143/sig00000461 ),
    .LI(\blk00000143/sig00000454 ),
    .O(\blk00000143/sig00000448 )
  );
  XORCY   \blk00000143/blk0000014f  (
    .CI(\blk00000143/sig00000460 ),
    .LI(\blk00000143/sig00000453 ),
    .O(\blk00000143/sig00000447 )
  );
  XORCY   \blk00000143/blk0000014e  (
    .CI(\blk00000143/sig0000045f ),
    .LI(\blk00000143/sig00000452 ),
    .O(\blk00000143/sig00000446 )
  );
  XORCY   \blk00000143/blk0000014d  (
    .CI(\blk00000143/sig0000045e ),
    .LI(\blk00000143/sig00000451 ),
    .O(\blk00000143/sig00000445 )
  );
  XORCY   \blk00000143/blk0000014c  (
    .CI(\blk00000143/sig0000045d ),
    .LI(\blk00000143/sig00000450 ),
    .O(\blk00000143/sig00000444 )
  );
  XORCY   \blk00000143/blk0000014b  (
    .CI(\blk00000143/sig0000045c ),
    .LI(\blk00000143/sig0000044f ),
    .O(\blk00000143/sig00000443 )
  );
  XORCY   \blk00000143/blk0000014a  (
    .CI(\blk00000143/sig0000045b ),
    .LI(\blk00000143/sig0000044e ),
    .O(\blk00000143/sig00000442 )
  );
  XORCY   \blk00000143/blk00000149  (
    .CI(\blk00000143/sig0000045a ),
    .LI(\blk00000143/sig0000044d ),
    .O(\blk00000143/sig00000441 )
  );
  XORCY   \blk00000143/blk00000148  (
    .CI(\blk00000143/sig00000459 ),
    .LI(\blk00000143/sig0000044c ),
    .O(\blk00000143/sig00000440 )
  );
  XORCY   \blk00000143/blk00000147  (
    .CI(\blk00000143/sig00000458 ),
    .LI(\blk00000143/sig0000044b ),
    .O(\blk00000143/sig0000043f )
  );
  XORCY   \blk00000143/blk00000146  (
    .CI(\blk00000143/sig00000457 ),
    .LI(\blk00000143/sig0000044a ),
    .O(\blk00000143/sig0000043e )
  );
  XORCY   \blk00000143/blk00000145  (
    .CI(\blk00000143/sig00000456 ),
    .LI(\blk00000143/sig00000462 ),
    .O(\blk00000143/sig0000043d )
  );
  XORCY   \blk00000143/blk00000144  (
    .CI(\blk00000143/sig00000455 ),
    .LI(\blk00000143/sig00000449 ),
    .O(\blk00000143/sig0000043c )
  );
  INV   \blk00000178/blk000001ac  (
    .I(sig00000030),
    .O(\blk00000178/sig000004b0 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001ab  (
    .I0(sig000000c1),
    .I1(sig000000f6),
    .I2(sig00000030),
    .O(\blk00000178/sig000004b1 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001aa  (
    .I0(sig000000c0),
    .I1(sig000000f4),
    .I2(sig00000030),
    .O(\blk00000178/sig0000049a )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001a9  (
    .I0(sig000000bf),
    .I1(sig000000f3),
    .I2(sig00000030),
    .O(\blk00000178/sig0000049b )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001a8  (
    .I0(sig000000be),
    .I1(sig000000f2),
    .I2(sig00000030),
    .O(\blk00000178/sig0000049c )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001a7  (
    .I0(sig000000bd),
    .I1(sig000000f1),
    .I2(sig00000030),
    .O(\blk00000178/sig0000049d )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001a6  (
    .I0(sig000000bc),
    .I1(sig000000f0),
    .I2(sig00000030),
    .O(\blk00000178/sig0000049e )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001a5  (
    .I0(sig000000bb),
    .I1(sig000000ef),
    .I2(sig00000030),
    .O(\blk00000178/sig0000049f )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001a4  (
    .I0(sig000000ba),
    .I1(sig000000ee),
    .I2(sig00000030),
    .O(\blk00000178/sig000004a0 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000178/blk000001a3  (
    .I0(sig000000ed),
    .I1(sig00000030),
    .O(\blk00000178/sig000004a1 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000178/blk000001a2  (
    .I0(sig000000ec),
    .I1(sig00000030),
    .O(\blk00000178/sig000004a2 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001a1  (
    .I0(sig000000c1),
    .I1(sig000000f6),
    .I2(sig00000030),
    .O(\blk00000178/sig00000498 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000178/blk000001a0  (
    .I0(sig000000c1),
    .I1(sig000000f5),
    .I2(sig00000030),
    .O(\blk00000178/sig00000499 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000178/blk0000019f  (
    .I0(sig000000eb),
    .I1(sig00000030),
    .O(\blk00000178/sig000004a3 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk0000019e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig00000497 ),
    .Q(sig0000009f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk0000019d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig00000496 ),
    .Q(sig000000a0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk0000019c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig00000495 ),
    .Q(sig000000a1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk0000019b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig00000494 ),
    .Q(sig000000a2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk0000019a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig00000493 ),
    .Q(sig000000a3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk00000199  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig00000492 ),
    .Q(sig000000a4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk00000198  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig00000491 ),
    .Q(sig000000a5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk00000197  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig00000490 ),
    .Q(sig000000a6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk00000196  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig0000048f ),
    .Q(sig000000a7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk00000195  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig0000048e ),
    .Q(sig000000a8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk00000194  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig0000048d ),
    .Q(sig000000a9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk00000193  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig0000048c ),
    .Q(sig000000aa)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000178/blk00000192  (
    .C(clk),
    .CE(ce),
    .D(\blk00000178/sig0000048b ),
    .Q(sig000000ab)
  );
  MUXCY   \blk00000178/blk00000191  (
    .CI(\blk00000178/sig000004b0 ),
    .DI(sig00000002),
    .S(\blk00000178/sig000004a3 ),
    .O(\blk00000178/sig000004af )
  );
  MUXCY   \blk00000178/blk00000190  (
    .CI(\blk00000178/sig000004af ),
    .DI(sig00000002),
    .S(\blk00000178/sig000004a2 ),
    .O(\blk00000178/sig000004ae )
  );
  MUXCY   \blk00000178/blk0000018f  (
    .CI(\blk00000178/sig000004ae ),
    .DI(sig00000002),
    .S(\blk00000178/sig000004a1 ),
    .O(\blk00000178/sig000004ad )
  );
  MUXCY   \blk00000178/blk0000018e  (
    .CI(\blk00000178/sig000004ad ),
    .DI(sig000000ba),
    .S(\blk00000178/sig000004a0 ),
    .O(\blk00000178/sig000004ac )
  );
  MUXCY   \blk00000178/blk0000018d  (
    .CI(\blk00000178/sig000004ac ),
    .DI(sig000000bb),
    .S(\blk00000178/sig0000049f ),
    .O(\blk00000178/sig000004ab )
  );
  MUXCY   \blk00000178/blk0000018c  (
    .CI(\blk00000178/sig000004ab ),
    .DI(sig000000bc),
    .S(\blk00000178/sig0000049e ),
    .O(\blk00000178/sig000004aa )
  );
  MUXCY   \blk00000178/blk0000018b  (
    .CI(\blk00000178/sig000004aa ),
    .DI(sig000000bd),
    .S(\blk00000178/sig0000049d ),
    .O(\blk00000178/sig000004a9 )
  );
  MUXCY   \blk00000178/blk0000018a  (
    .CI(\blk00000178/sig000004a9 ),
    .DI(sig000000be),
    .S(\blk00000178/sig0000049c ),
    .O(\blk00000178/sig000004a8 )
  );
  MUXCY   \blk00000178/blk00000189  (
    .CI(\blk00000178/sig000004a8 ),
    .DI(sig000000bf),
    .S(\blk00000178/sig0000049b ),
    .O(\blk00000178/sig000004a7 )
  );
  MUXCY   \blk00000178/blk00000188  (
    .CI(\blk00000178/sig000004a7 ),
    .DI(sig000000c0),
    .S(\blk00000178/sig0000049a ),
    .O(\blk00000178/sig000004a6 )
  );
  MUXCY   \blk00000178/blk00000187  (
    .CI(\blk00000178/sig000004a6 ),
    .DI(sig000000c1),
    .S(\blk00000178/sig00000499 ),
    .O(\blk00000178/sig000004a5 )
  );
  MUXCY   \blk00000178/blk00000186  (
    .CI(\blk00000178/sig000004a5 ),
    .DI(sig000000c1),
    .S(\blk00000178/sig000004b1 ),
    .O(\blk00000178/sig000004a4 )
  );
  XORCY   \blk00000178/blk00000185  (
    .CI(\blk00000178/sig000004b0 ),
    .LI(\blk00000178/sig000004a3 ),
    .O(\blk00000178/sig00000497 )
  );
  XORCY   \blk00000178/blk00000184  (
    .CI(\blk00000178/sig000004af ),
    .LI(\blk00000178/sig000004a2 ),
    .O(\blk00000178/sig00000496 )
  );
  XORCY   \blk00000178/blk00000183  (
    .CI(\blk00000178/sig000004ae ),
    .LI(\blk00000178/sig000004a1 ),
    .O(\blk00000178/sig00000495 )
  );
  XORCY   \blk00000178/blk00000182  (
    .CI(\blk00000178/sig000004ad ),
    .LI(\blk00000178/sig000004a0 ),
    .O(\blk00000178/sig00000494 )
  );
  XORCY   \blk00000178/blk00000181  (
    .CI(\blk00000178/sig000004ac ),
    .LI(\blk00000178/sig0000049f ),
    .O(\blk00000178/sig00000493 )
  );
  XORCY   \blk00000178/blk00000180  (
    .CI(\blk00000178/sig000004ab ),
    .LI(\blk00000178/sig0000049e ),
    .O(\blk00000178/sig00000492 )
  );
  XORCY   \blk00000178/blk0000017f  (
    .CI(\blk00000178/sig000004aa ),
    .LI(\blk00000178/sig0000049d ),
    .O(\blk00000178/sig00000491 )
  );
  XORCY   \blk00000178/blk0000017e  (
    .CI(\blk00000178/sig000004a9 ),
    .LI(\blk00000178/sig0000049c ),
    .O(\blk00000178/sig00000490 )
  );
  XORCY   \blk00000178/blk0000017d  (
    .CI(\blk00000178/sig000004a8 ),
    .LI(\blk00000178/sig0000049b ),
    .O(\blk00000178/sig0000048f )
  );
  XORCY   \blk00000178/blk0000017c  (
    .CI(\blk00000178/sig000004a7 ),
    .LI(\blk00000178/sig0000049a ),
    .O(\blk00000178/sig0000048e )
  );
  XORCY   \blk00000178/blk0000017b  (
    .CI(\blk00000178/sig000004a6 ),
    .LI(\blk00000178/sig00000499 ),
    .O(\blk00000178/sig0000048d )
  );
  XORCY   \blk00000178/blk0000017a  (
    .CI(\blk00000178/sig000004a5 ),
    .LI(\blk00000178/sig000004b1 ),
    .O(\blk00000178/sig0000048c )
  );
  XORCY   \blk00000178/blk00000179  (
    .CI(\blk00000178/sig000004a4 ),
    .LI(\blk00000178/sig00000498 ),
    .O(\blk00000178/sig0000048b )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000001ad/blk000001d3  (
    .I0(sig000000f7),
    .O(\blk000001ad/sig000004e3 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000001ad/blk000001d2  (
    .I0(sig000000f8),
    .O(\blk000001ad/sig000004e2 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000001ad/blk000001d1  (
    .I0(sig000000f9),
    .O(\blk000001ad/sig000004e1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001d0  (
    .I0(sig000000c9),
    .I1(sig00000102),
    .O(\blk000001ad/sig000004e0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001cf  (
    .I0(sig000000c8),
    .I1(sig00000100),
    .O(\blk000001ad/sig000004cd )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001ce  (
    .I0(sig000000c7),
    .I1(sig000000ff),
    .O(\blk000001ad/sig000004ce )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001cd  (
    .I0(sig000000c6),
    .I1(sig000000fe),
    .O(\blk000001ad/sig000004cf )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001cc  (
    .I0(sig000000c5),
    .I1(sig000000fd),
    .O(\blk000001ad/sig000004d0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001cb  (
    .I0(sig000000c4),
    .I1(sig000000fc),
    .O(\blk000001ad/sig000004d1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001ca  (
    .I0(sig000000c3),
    .I1(sig000000fb),
    .O(\blk000001ad/sig000004d2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001c9  (
    .I0(sig000000c2),
    .I1(sig000000fa),
    .O(\blk000001ad/sig000004d3 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001c8  (
    .I0(sig000000c9),
    .I1(sig00000102),
    .O(\blk000001ad/sig000004cb )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001ad/blk000001c7  (
    .I0(sig000000c9),
    .I1(sig00000101),
    .O(\blk000001ad/sig000004cc )
  );
  MUXCY   \blk000001ad/blk000001c6  (
    .CI(sig00000002),
    .DI(sig00000002),
    .S(\blk000001ad/sig000004e3 ),
    .O(\blk000001ad/sig000004df )
  );
  XORCY   \blk000001ad/blk000001c5  (
    .CI(sig00000002),
    .LI(\blk000001ad/sig000004e3 ),
    .O(\NLW_blk000001ad/blk000001c5_O_UNCONNECTED )
  );
  MUXCY   \blk000001ad/blk000001c4  (
    .CI(\blk000001ad/sig000004df ),
    .DI(sig00000002),
    .S(\blk000001ad/sig000004e2 ),
    .O(\blk000001ad/sig000004de )
  );
  MUXCY   \blk000001ad/blk000001c3  (
    .CI(\blk000001ad/sig000004de ),
    .DI(sig00000002),
    .S(\blk000001ad/sig000004e1 ),
    .O(\blk000001ad/sig000004dd )
  );
  MUXCY   \blk000001ad/blk000001c2  (
    .CI(\blk000001ad/sig000004dd ),
    .DI(sig000000c2),
    .S(\blk000001ad/sig000004d3 ),
    .O(\blk000001ad/sig000004dc )
  );
  MUXCY   \blk000001ad/blk000001c1  (
    .CI(\blk000001ad/sig000004dc ),
    .DI(sig000000c3),
    .S(\blk000001ad/sig000004d2 ),
    .O(\blk000001ad/sig000004db )
  );
  MUXCY   \blk000001ad/blk000001c0  (
    .CI(\blk000001ad/sig000004db ),
    .DI(sig000000c4),
    .S(\blk000001ad/sig000004d1 ),
    .O(\blk000001ad/sig000004da )
  );
  MUXCY   \blk000001ad/blk000001bf  (
    .CI(\blk000001ad/sig000004da ),
    .DI(sig000000c5),
    .S(\blk000001ad/sig000004d0 ),
    .O(\blk000001ad/sig000004d9 )
  );
  MUXCY   \blk000001ad/blk000001be  (
    .CI(\blk000001ad/sig000004d9 ),
    .DI(sig000000c6),
    .S(\blk000001ad/sig000004cf ),
    .O(\blk000001ad/sig000004d8 )
  );
  MUXCY   \blk000001ad/blk000001bd  (
    .CI(\blk000001ad/sig000004d8 ),
    .DI(sig000000c7),
    .S(\blk000001ad/sig000004ce ),
    .O(\blk000001ad/sig000004d7 )
  );
  MUXCY   \blk000001ad/blk000001bc  (
    .CI(\blk000001ad/sig000004d7 ),
    .DI(sig000000c8),
    .S(\blk000001ad/sig000004cd ),
    .O(\blk000001ad/sig000004d6 )
  );
  MUXCY   \blk000001ad/blk000001bb  (
    .CI(\blk000001ad/sig000004d6 ),
    .DI(sig000000c9),
    .S(\blk000001ad/sig000004cc ),
    .O(\blk000001ad/sig000004d5 )
  );
  MUXCY   \blk000001ad/blk000001ba  (
    .CI(\blk000001ad/sig000004d5 ),
    .DI(sig000000c9),
    .S(\blk000001ad/sig000004e0 ),
    .O(\blk000001ad/sig000004d4 )
  );
  XORCY   \blk000001ad/blk000001b9  (
    .CI(\blk000001ad/sig000004df ),
    .LI(\blk000001ad/sig000004e2 ),
    .O(\NLW_blk000001ad/blk000001b9_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001b8  (
    .CI(\blk000001ad/sig000004de ),
    .LI(\blk000001ad/sig000004e1 ),
    .O(\NLW_blk000001ad/blk000001b8_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001b7  (
    .CI(\blk000001ad/sig000004dd ),
    .LI(\blk000001ad/sig000004d3 ),
    .O(\NLW_blk000001ad/blk000001b7_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001b6  (
    .CI(\blk000001ad/sig000004dc ),
    .LI(\blk000001ad/sig000004d2 ),
    .O(\NLW_blk000001ad/blk000001b6_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001b5  (
    .CI(\blk000001ad/sig000004db ),
    .LI(\blk000001ad/sig000004d1 ),
    .O(\NLW_blk000001ad/blk000001b5_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001b4  (
    .CI(\blk000001ad/sig000004da ),
    .LI(\blk000001ad/sig000004d0 ),
    .O(\NLW_blk000001ad/blk000001b4_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001b3  (
    .CI(\blk000001ad/sig000004d9 ),
    .LI(\blk000001ad/sig000004cf ),
    .O(\NLW_blk000001ad/blk000001b3_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001b2  (
    .CI(\blk000001ad/sig000004d8 ),
    .LI(\blk000001ad/sig000004ce ),
    .O(\NLW_blk000001ad/blk000001b2_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001b1  (
    .CI(\blk000001ad/sig000004d7 ),
    .LI(\blk000001ad/sig000004cd ),
    .O(\NLW_blk000001ad/blk000001b1_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001b0  (
    .CI(\blk000001ad/sig000004d6 ),
    .LI(\blk000001ad/sig000004cc ),
    .O(\NLW_blk000001ad/blk000001b0_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001af  (
    .CI(\blk000001ad/sig000004d5 ),
    .LI(\blk000001ad/sig000004e0 ),
    .O(\NLW_blk000001ad/blk000001af_O_UNCONNECTED )
  );
  XORCY   \blk000001ad/blk000001ae  (
    .CI(\blk000001ad/sig000004d4 ),
    .LI(\blk000001ad/sig000004cb ),
    .O(\NLW_blk000001ad/blk000001ae_O_UNCONNECTED )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000001d4/blk000001fa  (
    .I0(sig000000eb),
    .O(\blk000001d4/sig00000515 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000001d4/blk000001f9  (
    .I0(sig000000ec),
    .O(\blk000001d4/sig00000514 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000001d4/blk000001f8  (
    .I0(sig000000ed),
    .O(\blk000001d4/sig00000513 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001f7  (
    .I0(sig000000c1),
    .I1(sig000000f6),
    .O(\blk000001d4/sig00000512 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001f6  (
    .I0(sig000000c0),
    .I1(sig000000f4),
    .O(\blk000001d4/sig000004ff )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001f5  (
    .I0(sig000000bf),
    .I1(sig000000f3),
    .O(\blk000001d4/sig00000500 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001f4  (
    .I0(sig000000be),
    .I1(sig000000f2),
    .O(\blk000001d4/sig00000501 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001f3  (
    .I0(sig000000bd),
    .I1(sig000000f1),
    .O(\blk000001d4/sig00000502 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001f2  (
    .I0(sig000000bc),
    .I1(sig000000f0),
    .O(\blk000001d4/sig00000503 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001f1  (
    .I0(sig000000bb),
    .I1(sig000000ef),
    .O(\blk000001d4/sig00000504 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001f0  (
    .I0(sig000000ba),
    .I1(sig000000ee),
    .O(\blk000001d4/sig00000505 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001ef  (
    .I0(sig000000c1),
    .I1(sig000000f6),
    .O(\blk000001d4/sig000004fd )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000001d4/blk000001ee  (
    .I0(sig000000c1),
    .I1(sig000000f5),
    .O(\blk000001d4/sig000004fe )
  );
  MUXCY   \blk000001d4/blk000001ed  (
    .CI(sig00000002),
    .DI(sig00000002),
    .S(\blk000001d4/sig00000515 ),
    .O(\blk000001d4/sig00000511 )
  );
  XORCY   \blk000001d4/blk000001ec  (
    .CI(sig00000002),
    .LI(\blk000001d4/sig00000515 ),
    .O(\NLW_blk000001d4/blk000001ec_O_UNCONNECTED )
  );
  MUXCY   \blk000001d4/blk000001eb  (
    .CI(\blk000001d4/sig00000511 ),
    .DI(sig00000002),
    .S(\blk000001d4/sig00000514 ),
    .O(\blk000001d4/sig00000510 )
  );
  MUXCY   \blk000001d4/blk000001ea  (
    .CI(\blk000001d4/sig00000510 ),
    .DI(sig00000002),
    .S(\blk000001d4/sig00000513 ),
    .O(\blk000001d4/sig0000050f )
  );
  MUXCY   \blk000001d4/blk000001e9  (
    .CI(\blk000001d4/sig0000050f ),
    .DI(sig000000ba),
    .S(\blk000001d4/sig00000505 ),
    .O(\blk000001d4/sig0000050e )
  );
  MUXCY   \blk000001d4/blk000001e8  (
    .CI(\blk000001d4/sig0000050e ),
    .DI(sig000000bb),
    .S(\blk000001d4/sig00000504 ),
    .O(\blk000001d4/sig0000050d )
  );
  MUXCY   \blk000001d4/blk000001e7  (
    .CI(\blk000001d4/sig0000050d ),
    .DI(sig000000bc),
    .S(\blk000001d4/sig00000503 ),
    .O(\blk000001d4/sig0000050c )
  );
  MUXCY   \blk000001d4/blk000001e6  (
    .CI(\blk000001d4/sig0000050c ),
    .DI(sig000000bd),
    .S(\blk000001d4/sig00000502 ),
    .O(\blk000001d4/sig0000050b )
  );
  MUXCY   \blk000001d4/blk000001e5  (
    .CI(\blk000001d4/sig0000050b ),
    .DI(sig000000be),
    .S(\blk000001d4/sig00000501 ),
    .O(\blk000001d4/sig0000050a )
  );
  MUXCY   \blk000001d4/blk000001e4  (
    .CI(\blk000001d4/sig0000050a ),
    .DI(sig000000bf),
    .S(\blk000001d4/sig00000500 ),
    .O(\blk000001d4/sig00000509 )
  );
  MUXCY   \blk000001d4/blk000001e3  (
    .CI(\blk000001d4/sig00000509 ),
    .DI(sig000000c0),
    .S(\blk000001d4/sig000004ff ),
    .O(\blk000001d4/sig00000508 )
  );
  MUXCY   \blk000001d4/blk000001e2  (
    .CI(\blk000001d4/sig00000508 ),
    .DI(sig000000c1),
    .S(\blk000001d4/sig000004fe ),
    .O(\blk000001d4/sig00000507 )
  );
  MUXCY   \blk000001d4/blk000001e1  (
    .CI(\blk000001d4/sig00000507 ),
    .DI(sig000000c1),
    .S(\blk000001d4/sig00000512 ),
    .O(\blk000001d4/sig00000506 )
  );
  XORCY   \blk000001d4/blk000001e0  (
    .CI(\blk000001d4/sig00000511 ),
    .LI(\blk000001d4/sig00000514 ),
    .O(\NLW_blk000001d4/blk000001e0_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001df  (
    .CI(\blk000001d4/sig00000510 ),
    .LI(\blk000001d4/sig00000513 ),
    .O(\NLW_blk000001d4/blk000001df_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001de  (
    .CI(\blk000001d4/sig0000050f ),
    .LI(\blk000001d4/sig00000505 ),
    .O(\NLW_blk000001d4/blk000001de_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001dd  (
    .CI(\blk000001d4/sig0000050e ),
    .LI(\blk000001d4/sig00000504 ),
    .O(\NLW_blk000001d4/blk000001dd_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001dc  (
    .CI(\blk000001d4/sig0000050d ),
    .LI(\blk000001d4/sig00000503 ),
    .O(\NLW_blk000001d4/blk000001dc_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001db  (
    .CI(\blk000001d4/sig0000050c ),
    .LI(\blk000001d4/sig00000502 ),
    .O(\NLW_blk000001d4/blk000001db_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001da  (
    .CI(\blk000001d4/sig0000050b ),
    .LI(\blk000001d4/sig00000501 ),
    .O(\NLW_blk000001d4/blk000001da_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001d9  (
    .CI(\blk000001d4/sig0000050a ),
    .LI(\blk000001d4/sig00000500 ),
    .O(\NLW_blk000001d4/blk000001d9_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001d8  (
    .CI(\blk000001d4/sig00000509 ),
    .LI(\blk000001d4/sig000004ff ),
    .O(\NLW_blk000001d4/blk000001d8_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001d7  (
    .CI(\blk000001d4/sig00000508 ),
    .LI(\blk000001d4/sig000004fe ),
    .O(\NLW_blk000001d4/blk000001d7_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001d6  (
    .CI(\blk000001d4/sig00000507 ),
    .LI(\blk000001d4/sig00000512 ),
    .O(\NLW_blk000001d4/blk000001d6_O_UNCONNECTED )
  );
  XORCY   \blk000001d4/blk000001d5  (
    .CI(\blk000001d4/sig00000506 ),
    .LI(\blk000001d4/sig000004fd ),
    .O(\NLW_blk000001d4/blk000001d5_O_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk000002ab/blk000002ac/blk000002b0  (
    .C(clk),
    .CE(ce),
    .D(\blk000002ab/blk000002ac/sig00000521 ),
    .Q(sig0000000b)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk000002ab/blk000002ac/blk000002af  (
    .A0(\blk000002ab/blk000002ac/sig00000520 ),
    .A1(\blk000002ab/blk000002ac/sig0000051f ),
    .A2(\blk000002ab/blk000002ac/sig0000051f ),
    .A3(\blk000002ab/blk000002ac/sig0000051f ),
    .CE(ce),
    .CLK(clk),
    .D(sig000002d2),
    .Q(\blk000002ab/blk000002ac/sig00000521 ),
    .Q15(\NLW_blk000002ab/blk000002ac/blk000002af_Q15_UNCONNECTED )
  );
  VCC   \blk000002ab/blk000002ac/blk000002ae  (
    .P(\blk000002ab/blk000002ac/sig00000520 )
  );
  GND   \blk000002ab/blk000002ac/blk000002ad  (
    .G(\blk000002ab/blk000002ac/sig0000051f )
  );
  INV   \blk000002dc/blk000002f7  (
    .I(sig000002f0),
    .O(\blk000002dc/sig0000053e )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000002dc/blk000002f6  (
    .I0(sig000002f1),
    .O(\blk000002dc/sig00000545 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000002dc/blk000002f5  (
    .I0(sig000002f2),
    .O(\blk000002dc/sig00000544 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000002dc/blk000002f4  (
    .I0(sig000002f3),
    .O(\blk000002dc/sig00000543 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000002dc/blk000002f3  (
    .I0(sig000002f4),
    .O(\blk000002dc/sig00000542 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000002dc/blk000002f2  (
    .I0(sig000002f5),
    .O(\blk000002dc/sig00000541 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000002dc/blk000002f1  (
    .I0(sig000002f6),
    .O(\blk000002dc/sig00000540 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000002dc/blk000002f0  (
    .I0(sig000002f7),
    .O(\blk000002dc/sig0000053f )
  );
  MUXCY   \blk000002dc/blk000002ef  (
    .CI(\blk000002dc/sig00000535 ),
    .DI(\blk000002dc/sig00000534 ),
    .S(\blk000002dc/sig0000053e ),
    .O(\blk000002dc/sig0000053d )
  );
  XORCY   \blk000002dc/blk000002ee  (
    .CI(\blk000002dc/sig00000535 ),
    .LI(\blk000002dc/sig0000053e ),
    .O(sig000002de)
  );
  XORCY   \blk000002dc/blk000002ed  (
    .CI(\blk000002dc/sig00000536 ),
    .LI(sig000002f8),
    .O(sig000002e6)
  );
  MUXCY   \blk000002dc/blk000002ec  (
    .CI(\blk000002dc/sig0000053d ),
    .DI(\blk000002dc/sig00000535 ),
    .S(\blk000002dc/sig00000545 ),
    .O(\blk000002dc/sig0000053c )
  );
  XORCY   \blk000002dc/blk000002eb  (
    .CI(\blk000002dc/sig0000053d ),
    .LI(\blk000002dc/sig00000545 ),
    .O(sig000002df)
  );
  MUXCY   \blk000002dc/blk000002ea  (
    .CI(\blk000002dc/sig0000053c ),
    .DI(\blk000002dc/sig00000535 ),
    .S(\blk000002dc/sig00000544 ),
    .O(\blk000002dc/sig0000053b )
  );
  XORCY   \blk000002dc/blk000002e9  (
    .CI(\blk000002dc/sig0000053c ),
    .LI(\blk000002dc/sig00000544 ),
    .O(sig000002e0)
  );
  MUXCY   \blk000002dc/blk000002e8  (
    .CI(\blk000002dc/sig0000053b ),
    .DI(\blk000002dc/sig00000535 ),
    .S(\blk000002dc/sig00000543 ),
    .O(\blk000002dc/sig0000053a )
  );
  XORCY   \blk000002dc/blk000002e7  (
    .CI(\blk000002dc/sig0000053b ),
    .LI(\blk000002dc/sig00000543 ),
    .O(sig000002e1)
  );
  MUXCY   \blk000002dc/blk000002e6  (
    .CI(\blk000002dc/sig0000053a ),
    .DI(\blk000002dc/sig00000535 ),
    .S(\blk000002dc/sig00000542 ),
    .O(\blk000002dc/sig00000539 )
  );
  XORCY   \blk000002dc/blk000002e5  (
    .CI(\blk000002dc/sig0000053a ),
    .LI(\blk000002dc/sig00000542 ),
    .O(sig000002e2)
  );
  MUXCY   \blk000002dc/blk000002e4  (
    .CI(\blk000002dc/sig00000539 ),
    .DI(\blk000002dc/sig00000535 ),
    .S(\blk000002dc/sig00000541 ),
    .O(\blk000002dc/sig00000538 )
  );
  XORCY   \blk000002dc/blk000002e3  (
    .CI(\blk000002dc/sig00000539 ),
    .LI(\blk000002dc/sig00000541 ),
    .O(sig000002e3)
  );
  MUXCY   \blk000002dc/blk000002e2  (
    .CI(\blk000002dc/sig00000538 ),
    .DI(\blk000002dc/sig00000535 ),
    .S(\blk000002dc/sig00000540 ),
    .O(\blk000002dc/sig00000537 )
  );
  XORCY   \blk000002dc/blk000002e1  (
    .CI(\blk000002dc/sig00000538 ),
    .LI(\blk000002dc/sig00000540 ),
    .O(sig000002e4)
  );
  MUXCY   \blk000002dc/blk000002e0  (
    .CI(\blk000002dc/sig00000537 ),
    .DI(\blk000002dc/sig00000535 ),
    .S(\blk000002dc/sig0000053f ),
    .O(\blk000002dc/sig00000536 )
  );
  XORCY   \blk000002dc/blk000002df  (
    .CI(\blk000002dc/sig00000537 ),
    .LI(\blk000002dc/sig0000053f ),
    .O(sig000002e5)
  );
  GND   \blk000002dc/blk000002de  (
    .G(\blk000002dc/sig00000535 )
  );
  VCC   \blk000002dc/blk000002dd  (
    .P(\blk000002dc/sig00000534 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000035b/blk0000035c/blk00000360  (
    .C(clk),
    .CE(ce),
    .D(\blk0000035b/blk0000035c/sig00000550 ),
    .Q(sig00000242)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000035b/blk0000035c/blk0000035f  (
    .A0(\blk0000035b/blk0000035c/sig0000054e ),
    .A1(\blk0000035b/blk0000035c/sig0000054e ),
    .A2(\blk0000035b/blk0000035c/sig0000054e ),
    .A3(\blk0000035b/blk0000035c/sig0000054f ),
    .CE(ce),
    .CLK(clk),
    .D(sig0000024b),
    .Q(\blk0000035b/blk0000035c/sig00000550 ),
    .Q15(\NLW_blk0000035b/blk0000035c/blk0000035f_Q15_UNCONNECTED )
  );
  VCC   \blk0000035b/blk0000035c/blk0000035e  (
    .P(\blk0000035b/blk0000035c/sig0000054f )
  );
  GND   \blk0000035b/blk0000035c/blk0000035d  (
    .G(\blk0000035b/blk0000035c/sig0000054e )
  );
  INV   \blk00000361/blk0000036d  (
    .I(sig0000027c),
    .O(\blk00000361/sig0000055e )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000361/blk0000036c  (
    .I0(sig0000027b),
    .O(\blk00000361/sig00000560 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000361/blk0000036b  (
    .I0(sig0000027a),
    .O(\blk00000361/sig0000055f )
  );
  MUXCY   \blk00000361/blk0000036a  (
    .CI(\blk00000361/sig0000055a ),
    .DI(\blk00000361/sig00000559 ),
    .S(\blk00000361/sig0000055e ),
    .O(\blk00000361/sig0000055d )
  );
  XORCY   \blk00000361/blk00000369  (
    .CI(\blk00000361/sig0000055a ),
    .LI(\blk00000361/sig0000055e ),
    .O(sig00000284)
  );
  XORCY   \blk00000361/blk00000368  (
    .CI(\blk00000361/sig0000055b ),
    .LI(sig00000279),
    .O(sig00000281)
  );
  MUXCY   \blk00000361/blk00000367  (
    .CI(\blk00000361/sig0000055d ),
    .DI(\blk00000361/sig0000055a ),
    .S(\blk00000361/sig00000560 ),
    .O(\blk00000361/sig0000055c )
  );
  XORCY   \blk00000361/blk00000366  (
    .CI(\blk00000361/sig0000055d ),
    .LI(\blk00000361/sig00000560 ),
    .O(sig00000283)
  );
  MUXCY   \blk00000361/blk00000365  (
    .CI(\blk00000361/sig0000055c ),
    .DI(\blk00000361/sig0000055a ),
    .S(\blk00000361/sig0000055f ),
    .O(\blk00000361/sig0000055b )
  );
  XORCY   \blk00000361/blk00000364  (
    .CI(\blk00000361/sig0000055c ),
    .LI(\blk00000361/sig0000055f ),
    .O(sig00000282)
  );
  GND   \blk00000361/blk00000363  (
    .G(\blk00000361/sig0000055a )
  );
  VCC   \blk00000361/blk00000362  (
    .P(\blk00000361/sig00000559 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000036e/blk0000036f/blk00000373  (
    .C(clk),
    .CE(ce),
    .D(\blk0000036e/blk0000036f/sig0000056c ),
    .Q(sig0000036b)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000036e/blk0000036f/blk00000372  (
    .A0(\blk0000036e/blk0000036f/sig0000056b ),
    .A1(\blk0000036e/blk0000036f/sig0000056a ),
    .A2(\blk0000036e/blk0000036f/sig0000056a ),
    .A3(\blk0000036e/blk0000036f/sig0000056a ),
    .CE(ce),
    .CLK(clk),
    .D(sig00000290),
    .Q(\blk0000036e/blk0000036f/sig0000056c ),
    .Q15(\NLW_blk0000036e/blk0000036f/blk00000372_Q15_UNCONNECTED )
  );
  VCC   \blk0000036e/blk0000036f/blk00000371  (
    .P(\blk0000036e/blk0000036f/sig0000056b )
  );
  GND   \blk0000036e/blk0000036f/blk00000370  (
    .G(\blk0000036e/blk0000036f/sig0000056a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000374/blk00000375/blk00000379  (
    .C(clk),
    .CE(ce),
    .D(\blk00000374/blk00000375/sig00000578 ),
    .Q(sig000002c5)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000374/blk00000375/blk00000378  (
    .A0(\blk00000374/blk00000375/sig00000577 ),
    .A1(\blk00000374/blk00000375/sig00000576 ),
    .A2(\blk00000374/blk00000375/sig00000576 ),
    .A3(\blk00000374/blk00000375/sig00000576 ),
    .CE(ce),
    .CLK(clk),
    .D(sig00000368),
    .Q(\blk00000374/blk00000375/sig00000578 ),
    .Q15(\NLW_blk00000374/blk00000375/blk00000378_Q15_UNCONNECTED )
  );
  VCC   \blk00000374/blk00000375/blk00000377  (
    .P(\blk00000374/blk00000375/sig00000577 )
  );
  GND   \blk00000374/blk00000375/blk00000376  (
    .G(\blk00000374/blk00000375/sig00000576 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk0000037a/blk0000037b/blk0000037f  (
    .C(clk),
    .CE(ce),
    .D(\blk0000037a/blk0000037b/sig00000584 ),
    .Q(sig00000005)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk0000037a/blk0000037b/blk0000037e  (
    .A0(\blk0000037a/blk0000037b/sig00000583 ),
    .A1(\blk0000037a/blk0000037b/sig00000582 ),
    .A2(\blk0000037a/blk0000037b/sig00000582 ),
    .A3(\blk0000037a/blk0000037b/sig00000582 ),
    .CE(ce),
    .CLK(clk),
    .D(\NlwRenamedSig_OI_U0/i_synth/non_floating_point.arch_e.xfft_inst/control/addr_gen/io_addr_gen/rfd_i ),
    .Q(\blk0000037a/blk0000037b/sig00000584 ),
    .Q15(\NLW_blk0000037a/blk0000037b/blk0000037e_Q15_UNCONNECTED )
  );
  VCC   \blk0000037a/blk0000037b/blk0000037d  (
    .P(\blk0000037a/blk0000037b/sig00000583 )
  );
  GND   \blk0000037a/blk0000037b/blk0000037c  (
    .G(\blk0000037a/blk0000037b/sig00000582 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000380/blk00000381/blk00000385  (
    .C(clk),
    .CE(ce),
    .D(\blk00000380/blk00000381/sig00000590 ),
    .Q(sig0000036c)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000380/blk00000381/blk00000384  (
    .A0(\blk00000380/blk00000381/sig0000058e ),
    .A1(\blk00000380/blk00000381/sig0000058f ),
    .A2(\blk00000380/blk00000381/sig0000058e ),
    .A3(\blk00000380/blk00000381/sig0000058e ),
    .CE(ce),
    .CLK(clk),
    .D(sig00000004),
    .Q(\blk00000380/blk00000381/sig00000590 ),
    .Q15(\NLW_blk00000380/blk00000381/blk00000384_Q15_UNCONNECTED )
  );
  VCC   \blk00000380/blk00000381/blk00000383  (
    .P(\blk00000380/blk00000381/sig0000058f )
  );
  GND   \blk00000380/blk00000381/blk00000382  (
    .G(\blk00000380/blk00000381/sig0000058e )
  );
  INV   \blk000003a3/blk000003c7  (
    .I(sig0000035e),
    .O(\blk000003a3/sig000005b9 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003a3/blk000003c6  (
    .I0(sig0000035f),
    .O(\blk000003a3/sig000005c0 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003a3/blk000003c5  (
    .I0(sig00000360),
    .O(\blk000003a3/sig000005bf )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003a3/blk000003c4  (
    .I0(sig00000361),
    .O(\blk000003a3/sig000005be )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003a3/blk000003c3  (
    .I0(sig00000362),
    .O(\blk000003a3/sig000005bd )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003a3/blk000003c2  (
    .I0(sig00000363),
    .O(\blk000003a3/sig000005bc )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003a3/blk000003c1  (
    .I0(sig00000364),
    .O(\blk000003a3/sig000005bb )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk000003a3/blk000003c0  (
    .I0(sig00000365),
    .O(\blk000003a3/sig000005ba )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk000003a3/blk000003bf  (
    .C(clk),
    .CE(ce),
    .D(\blk000003a3/sig000005b7 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk000003a3/blk000003be  (
    .C(clk),
    .CE(ce),
    .D(\blk000003a3/sig000005b4 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk000003a3/blk000003bd  (
    .C(clk),
    .CE(ce),
    .D(\blk000003a3/sig000005b2 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk000003a3/blk000003bc  (
    .C(clk),
    .CE(ce),
    .D(\blk000003a3/sig000005b0 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk000003a3/blk000003bb  (
    .C(clk),
    .CE(ce),
    .D(\blk000003a3/sig000005ae ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk000003a3/blk000003ba  (
    .C(clk),
    .CE(ce),
    .D(\blk000003a3/sig000005ac ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk000003a3/blk000003b9  (
    .C(clk),
    .CE(ce),
    .D(\blk000003a3/sig000005aa ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk000003a3/blk000003b8  (
    .C(clk),
    .CE(ce),
    .D(\blk000003a3/sig000005a8 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk000003a3/blk000003b7  (
    .C(clk),
    .CE(ce),
    .D(\blk000003a3/sig000005b6 ),
    .R(sig00000002),
    .Q(NlwRenamedSig_OI_xn_index[8])
  );
  MUXCY   \blk000003a3/blk000003b6  (
    .CI(\blk000003a3/sig000005a7 ),
    .DI(\blk000003a3/sig000005a6 ),
    .S(\blk000003a3/sig000005b9 ),
    .O(\blk000003a3/sig000005b8 )
  );
  XORCY   \blk000003a3/blk000003b5  (
    .CI(\blk000003a3/sig000005a7 ),
    .LI(\blk000003a3/sig000005b9 ),
    .O(\blk000003a3/sig000005b7 )
  );
  XORCY   \blk000003a3/blk000003b4  (
    .CI(\blk000003a3/sig000005a9 ),
    .LI(sig00000366),
    .O(\blk000003a3/sig000005b6 )
  );
  MUXCY   \blk000003a3/blk000003b3  (
    .CI(\blk000003a3/sig000005b8 ),
    .DI(\blk000003a3/sig000005a7 ),
    .S(\blk000003a3/sig000005c0 ),
    .O(\blk000003a3/sig000005b5 )
  );
  XORCY   \blk000003a3/blk000003b2  (
    .CI(\blk000003a3/sig000005b8 ),
    .LI(\blk000003a3/sig000005c0 ),
    .O(\blk000003a3/sig000005b4 )
  );
  MUXCY   \blk000003a3/blk000003b1  (
    .CI(\blk000003a3/sig000005b5 ),
    .DI(\blk000003a3/sig000005a7 ),
    .S(\blk000003a3/sig000005bf ),
    .O(\blk000003a3/sig000005b3 )
  );
  XORCY   \blk000003a3/blk000003b0  (
    .CI(\blk000003a3/sig000005b5 ),
    .LI(\blk000003a3/sig000005bf ),
    .O(\blk000003a3/sig000005b2 )
  );
  MUXCY   \blk000003a3/blk000003af  (
    .CI(\blk000003a3/sig000005b3 ),
    .DI(\blk000003a3/sig000005a7 ),
    .S(\blk000003a3/sig000005be ),
    .O(\blk000003a3/sig000005b1 )
  );
  XORCY   \blk000003a3/blk000003ae  (
    .CI(\blk000003a3/sig000005b3 ),
    .LI(\blk000003a3/sig000005be ),
    .O(\blk000003a3/sig000005b0 )
  );
  MUXCY   \blk000003a3/blk000003ad  (
    .CI(\blk000003a3/sig000005b1 ),
    .DI(\blk000003a3/sig000005a7 ),
    .S(\blk000003a3/sig000005bd ),
    .O(\blk000003a3/sig000005af )
  );
  XORCY   \blk000003a3/blk000003ac  (
    .CI(\blk000003a3/sig000005b1 ),
    .LI(\blk000003a3/sig000005bd ),
    .O(\blk000003a3/sig000005ae )
  );
  MUXCY   \blk000003a3/blk000003ab  (
    .CI(\blk000003a3/sig000005af ),
    .DI(\blk000003a3/sig000005a7 ),
    .S(\blk000003a3/sig000005bc ),
    .O(\blk000003a3/sig000005ad )
  );
  XORCY   \blk000003a3/blk000003aa  (
    .CI(\blk000003a3/sig000005af ),
    .LI(\blk000003a3/sig000005bc ),
    .O(\blk000003a3/sig000005ac )
  );
  MUXCY   \blk000003a3/blk000003a9  (
    .CI(\blk000003a3/sig000005ad ),
    .DI(\blk000003a3/sig000005a7 ),
    .S(\blk000003a3/sig000005bb ),
    .O(\blk000003a3/sig000005ab )
  );
  XORCY   \blk000003a3/blk000003a8  (
    .CI(\blk000003a3/sig000005ad ),
    .LI(\blk000003a3/sig000005bb ),
    .O(\blk000003a3/sig000005aa )
  );
  MUXCY   \blk000003a3/blk000003a7  (
    .CI(\blk000003a3/sig000005ab ),
    .DI(\blk000003a3/sig000005a7 ),
    .S(\blk000003a3/sig000005ba ),
    .O(\blk000003a3/sig000005a9 )
  );
  XORCY   \blk000003a3/blk000003a6  (
    .CI(\blk000003a3/sig000005ab ),
    .LI(\blk000003a3/sig000005ba ),
    .O(\blk000003a3/sig000005a8 )
  );
  GND   \blk000003a3/blk000003a5  (
    .G(\blk000003a3/sig000005a7 )
  );
  VCC   \blk000003a3/blk000003a4  (
    .P(\blk000003a3/sig000005a6 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
