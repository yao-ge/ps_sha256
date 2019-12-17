/* -*- P4_16 -*- */
#include <core.p4>
#include <v1model.p4>

/*************************************************************************
*********************** H E A D E R S  ***********************************
*************************************************************************/

typedef bit<48> macAddr_t;

header ethernet_t {
    macAddr_t dstAddr;
    macAddr_t srcAddr;
    bit<16>   etherType;
}
header length_t{
    bit<64> len;
}

header data_t{
    bit<256> m0;
    bit<256> m1;
}

struct metadata {
    /* empty */
    bit<64> len;
    bit<64> length;
    bit<64> all_len;
    bit<32> mask;
    bit<32> pad;
    bit<32> a;
    bit<32> b;
    bit<32> c;
    bit<32> d;
    bit<32> e;
    bit<32> f;
    bit<32> g;
    bit<32> h;
    bit<32> h0;
    bit<32> h1;
    bit<32> h2;
    bit<32> h3;
    bit<32> h4;
    bit<32> h5;
    bit<32> h6;
    bit<32> h7;
    bit<32> s0;
    bit<32> s1;
    bit<32> t1;
    bit<32> t2;
    bit<32> maj;
    bit<32> ch;

    bit<32> w0;
    bit<32> w1;
    bit<32> w2;
    bit<32> w3;
    bit<32> w4;
    bit<32> w5;
    bit<32> w6;
    bit<32> w7;
    bit<32> w8;
    bit<32> w9;
    bit<32> w10;
    bit<32> w11;
    bit<32> w12;
    bit<32> w13;
    bit<32> w14;
    bit<32> w15;
    bit<32> w16;
    bit<32> w17;
    bit<32> w18;
    bit<32> w19;
    bit<32> w20;
    bit<32> w21;
    bit<32> w22;
    bit<32> w23;
    bit<32> w24;
    bit<32> w25;
    bit<32> w26;
    bit<32> w27;
    bit<32> w28;
    bit<32> w29;
    bit<32> w30;
    bit<32> w31;
    bit<32> w32;
    bit<32> w33;
    bit<32> w34;
    bit<32> w35;
    bit<32> w36;
    bit<32> w37;
    bit<32> w38;
    bit<32> w39;
    bit<32> w40;
    bit<32> w41;
    bit<32> w42;
    bit<32> w43;
    bit<32> w44;
    bit<32> w45;
    bit<32> w46;
    bit<32> w47;
    bit<32> w48;
    bit<32> w49;
    bit<32> w50;
    bit<32> w51;
    bit<32> w52;
    bit<32> w53;
    bit<32> w54;
    bit<32> w55;
    bit<32> w56;
    bit<32> w57;
    bit<32> w58;
    bit<32> w59;
    bit<32> w60;
    bit<32> w61;
    bit<32> w62;
    bit<32> w63;

    bit<16>   count; 
    bit<16>   max_count; 
    bit<32>   data;
}


struct headers {
    ethernet_t   ethernet;
    length_t     length; 
    data_t[1024] data;
}


struct S{
    bit<32> k0;
    bit<32> k1;
    bit<32> k2;
    bit<32> k3;
    bit<32> k4;
    bit<32> k5;
    bit<32> k6;
    bit<32> k7;
    bit<32> k8;
    bit<32> k9;
    bit<32> k10;
    bit<32> k11;
    bit<32> k12;
    bit<32> k13;
    bit<32> k14;
    bit<32> k15;
    bit<32> k16;
    bit<32> k17;
    bit<32> k18;
    bit<32> k19;
    bit<32> k20;
    bit<32> k21;
    bit<32> k22;
    bit<32> k23;
    bit<32> k24;
    bit<32> k25;
    bit<32> k26;
    bit<32> k27;
    bit<32> k28;
    bit<32> k29;
    bit<32> k30;
    bit<32> k31;
    bit<32> k32;
    bit<32> k33;
    bit<32> k34;
    bit<32> k35;
    bit<32> k36;
    bit<32> k37;
    bit<32> k38;
    bit<32> k39;
    bit<32> k40;
    bit<32> k41;
    bit<32> k42;
    bit<32> k43;
    bit<32> k44;
    bit<32> k45;
    bit<32> k46;
    bit<32> k47;
    bit<32> k48;
    bit<32> k49;
    bit<32> k50;
    bit<32> k51;
    bit<32> k52;
    bit<32> k53;
    bit<32> k54;
    bit<32> k55;
    bit<32> k56;
    bit<32> k57;
    bit<32> k58;
    bit<32> k59;
    bit<32> k60;
    bit<32> k61;
    bit<32> k62;
    bit<32> k63;
}

const S K =  {
     0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5,
     0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
     0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3,
     0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
     0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc,
     0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
     0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7,
     0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
     0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13,
     0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
     0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3,
     0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
     0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5,
     0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
     0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208,
     0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2
};

#define RL(x,n) (((x) << n) | ((x) >> (32-n)))
#define RR(x,n) (((x) >> n) | ((x) << (32-n)))

#define S0(x)  (RR((x), 2) ^ RR((x),13) ^ RR((x),22))
#define S1(x)  (RR((x), 6) ^ RR((x),11) ^ RR((x),25))
#define G0(x)  (RR((x), 7) ^ RR((x),18) ^ ((x) >> 3))
#define G1(x)  (RR((x),17) ^ RR((x),19) ^ ((x) >> 10))


/*************************************************************************
*********************** P A R S E R  ***********************************
*************************************************************************/

parser MyParser(packet_in packet,
                out headers hdr,
                inout metadata meta,
                inout standard_metadata_t standard_metadata) {

    state start {
        /* TODO: add parser logic */
        transition parse_ethernet;
    }
	state parse_ethernet {
		packet.extract(hdr.ethernet);
        transition select( hdr.ethernet.dstAddr[7:0] ){
            0xff : parse_length;
            default : accept;
        }
	}
    state parse_length {
        packet.extract(hdr.length);
        meta.count = meta.count + 1;
        transition select( hdr.length.len){
            0: accept;
            default: parse_data;
        }
    }
    state parse_data {
        packet.extract(hdr.data.next);
        transition accept;
    }
}


/*************************************************************************
************   C H E C K S U M    V E R I F I C A T I O N   *************
*************************************************************************/

control MyVerifyChecksum(inout headers hdr, inout metadata meta) {   
    apply {  }
}

/*************************************************************************
**************  I N G R E S S   P R O C E S S I N G   *******************
*************************************************************************/

control MyIngress(inout headers hdr,
                  inout metadata meta,
                  inout standard_metadata_t standard_metadata) {

    action sha256_load(){

        bit<16> count = meta.count - 1;
        bit<256> m0 = 0;
        bit<256> m1 = 0;

        if( (meta.pad == 0) && (meta.len > 0) ) {
             m0 = hdr.data[0].m0; m1 = hdr.data[0].m1;
        }


        meta.w0 = m0[255:224];
        meta.w1 = m0[223:192];
        meta.w2 = m0[191:160];
        meta.w3 = m0[159:128];
        meta.w4 = m0[127:96];
        meta.w5 = m0[95:64];
        meta.w6 = m0[63:32];
        meta.w7 = m0[31:0];
        meta.w8 = m1[255:224];
        meta.w9 = m1[223:192];
        meta.w10 = m1[191:160];
        meta.w11 = m1[159:128];
        meta.w12 = m1[127:96];
        meta.w13 = m1[95:64];
        meta.w14 = m1[63:32];
        meta.w15 = m1[31:0];
    }

    action sha256_cal_mask(){
        if((meta.len % 4) == 0) meta.mask = 0x80000000;
        if((meta.len % 4) == 1) meta.mask = 0x00800000;
        if((meta.len % 4) == 2) meta.mask = 0x00008000;
        if((meta.len % 4) == 3) meta.mask = 0x00000080;
    }
    
    action sha256_padding(){
        //add padding
        if(meta.len >= 64){
            meta.len = meta.len - 64;
            meta.length = 64;
            return;
        }
        if(meta.len >= 56 ){
            
            meta.len = meta.len - 56;
            meta.length = 56;
            sha256_cal_mask();
            meta.len = meta.len >> 2;
            if(meta.len == 0)meta.w14 = meta.w14 | meta.mask;
            meta.len = meta.len - 1;
            if(meta.len == 0)meta.w15 = meta.w15 | meta.mask;
            meta.len = meta.len - 1;
            meta.len = meta.len << 2;
            meta.len = 0;
            meta.pad = 1;
            return;
        }
        
        if( meta.pad == 0) {

            sha256_cal_mask();
            meta.len = meta.len >> 2;
            if(meta.len == 0)meta.w0 = meta.w0 | meta.mask;
            meta.len = meta.len - 1;
            if(meta.len == 0)meta.w1 = meta.w1 | meta.mask;
            meta.len = meta.len - 1;
            if(meta.len == 0)meta.w2 = meta.w2 | meta.mask;
            meta.len = meta.len - 1;
            if(meta.len == 0)meta.w3 = meta.w3 | meta.mask;
            meta.len = meta.len - 1;
            if(meta.len == 0)meta.w4 = meta.w4 | meta.mask;
            meta.len = meta.len - 1;
            if(meta.len == 0)meta.w5 = meta.w5 | meta.mask;
            meta.len = meta.len - 1;
            if(meta.len == 0)meta.w6 = meta.w6 | meta.mask;
            meta.len = meta.len - 1;
            if(meta.len == 0)meta.w7 = meta.w7 | meta.mask;
            meta.len = meta.len - 1;
            if(meta.len == 0)meta.w8 = meta.w8 | meta.mask;
            meta.len = meta.len - 1;
            if(meta.len == 0)meta.w9 = meta.w9 | meta.mask;
            meta.len = meta.len - 1;
            if(meta.len == 0)meta.w10 = meta.w10 | meta.mask;
            meta.len = meta.len - 1;
            if(meta.len == 0)meta.w11 = meta.w11 | meta.mask;
            meta.len = meta.len - 1;
            if(meta.len == 0)meta.w12 = meta.w12 | meta.mask;
            meta.len = meta.len - 1;
            if(meta.len == 0)meta.w13 = meta.w13 | meta.mask;
            meta.length = meta.len;
            meta.len = 0;
            meta.pad = 1;
        }

        // add length
        //meta.w14 = (bit<32>)(hdr.length.len >> 29);
        //meta.w15 = (bit<32>)(hdr.length.len << 3);
        meta.w14 = (bit<32>)(meta.all_len >> 29);
        meta.w15 = (bit<32>)(meta.all_len << 3);
    }

#define extend(i,j,k,l,m) meta.w##k = meta.w##l + G0(meta.w##i) + meta.w##m + G1(meta.w##j)

    action sha256_extend1(){
        extend(1,14,16,0,9);
        extend(2,15,17,1,10);
        extend(3,16,18,2,11);
        extend(4,17,19,3,12);
        extend(5,18,20,4,13);
        extend(6,19,21,5,14);
        extend(7,20,22,6,15);
        extend(8,21,23,7,16);
    }  
    action sha256_extend2(){
        extend(9,22,24,8,17);
        extend(10,23,25,9,18);
        extend(11,24,26,10,19);
        extend(12,25,27,11,20);
        extend(13,26,28,12,21);
        extend(14,27,29,13,22);
        extend(15,28,30,14,23);
        extend(16,29,31,15,24);
    }  
    action sha256_extend3(){
        extend(17,30,32,16,25);
        extend(18,31,33,17,26);
        extend(19,32,34,18,27);
        extend(20,33,35,19,28);
        extend(21,34,36,20,29);
        extend(22,35,37,21,30);
        extend(23,36,38,22,31);
        extend(24,37,39,23,32);
    }  
    action sha256_extend4(){
        extend(25,38,40,24,33);
        extend(26,39,41,25,34);
        extend(27,40,42,26,35);
        extend(28,41,43,27,36);
        extend(29,42,44,28,37);
        extend(30,43,45,29,38);
        extend(31,44,46,30,39);
        extend(32,45,47,31,40);
    }  
    action sha256_extend5(){
        extend(33,46,48,32,41);
        extend(34,47,49,33,42);
        extend(35,48,50,34,43);
        extend(36,49,51,35,44);
        extend(37,50,52,36,45);
        extend(38,51,53,37,46);
        extend(39,52,54,38,47);
        extend(40,53,55,39,48);
    }  
    action sha256_extend6(){
        extend(41,54,56,40,49);
        extend(42,55,57,41,50);
        extend(43,56,58,42,51);
        extend(44,57,59,43,52);
        extend(45,58,60,44,53);
        extend(46,59,61,45,54);
        extend(47,60,62,46,55);
        extend(48,61,63,47,56);
    }

    action sha256_extend()
    {
        sha256_extend1();
        sha256_extend2();
        sha256_extend3();
        sha256_extend4();
        sha256_extend5();
        sha256_extend6();
    }
 
    action sha256_first(){
        meta.h0 = 0x6a09e667; 
        meta.h1 = 0xbb67ae85;
        meta.h2 = 0x3c6ef372; 
        meta.h3 = 0xa54ff53a;
        meta.h4 = 0x510e527f;
        meta.h5 = 0x9b05688c;
        meta.h6 = 0x1f83d9ab;
        meta.h7 = 0x5be0cd19;
    }


    action sha256_init(){
        meta.a = meta.h0;
        meta.b = meta.h1;
        meta.c = meta.h2;
        meta.d = meta.h3;
        meta.e = meta.h4;
        meta.f = meta.h5;
        meta.g = meta.h6;
        meta.h = meta.h7;
    }

#define main_operation(i)   meta.maj = (meta.a & meta.b) ^ (meta.a & meta.c) ^ (meta.b & meta.c); \
                            meta.t2 = S0(meta.a) + meta.maj; \
                            meta.ch = (meta.e & meta.f) ^ ((~meta.e)& meta.g ); \
                            meta.t1 = meta.h + S1(meta.e) + meta.ch + K.k##i + meta.w##i; \
                            meta.h = meta.g; \
                            meta.g = meta.f; \
                            meta.f = meta.e; \
                            meta.e = meta.d + meta.t1; \
                            meta.d = meta.c; \
                            meta.c = meta.b; \
                            meta.b = meta.a; \
                            meta.a = meta.t1 + meta.t2;

    action sha256_main1(){
        main_operation(0);
        main_operation(1);
        main_operation(2);
        main_operation(3);
        main_operation(4);
        main_operation(5);
        main_operation(6);
        main_operation(7);
    }
    action sha256_main2(){
        main_operation(8);
        main_operation(9);
        main_operation(10);
        main_operation(11);
        main_operation(12);
        main_operation(13);
        main_operation(14);
        main_operation(15);
    }
    action sha256_main3(){
        main_operation(16);
        main_operation(17);
        main_operation(18);
        main_operation(19);
        main_operation(20);
        main_operation(21);
        main_operation(22);
        main_operation(23);
    }
    action sha256_main4(){
        main_operation(24);
        main_operation(25);
        main_operation(26);
        main_operation(27);
        main_operation(28);
        main_operation(29);
        main_operation(30);
        main_operation(31);
    }
    action sha256_main5(){
        main_operation(32);
        main_operation(33);
        main_operation(34);
        main_operation(35);
        main_operation(36);
        main_operation(37);
        main_operation(38);
        main_operation(39);
    }
    action sha256_main6(){
        main_operation(40);
        main_operation(41);
        main_operation(42);
        main_operation(43);
        main_operation(44);
        main_operation(45);
        main_operation(46);
        main_operation(47);
    }
    action sha256_main7(){
        main_operation(48);
        main_operation(49);
        main_operation(50);
        main_operation(51);
        main_operation(52);
        main_operation(53);
        main_operation(54);
        main_operation(55);
    }
    action sha256_main8(){
        main_operation(56);
        main_operation(57);
        main_operation(58);
        main_operation(59);
        main_operation(60);
        main_operation(61);
        main_operation(62);
        main_operation(63);
    }

    action sha256_main()
    {
        sha256_main1();
        sha256_main2();
        sha256_main3();
        sha256_main4();
        sha256_main5();
        sha256_main6();
        sha256_main7();
        sha256_main8();
    }

    action sha256_end(){
       meta.h0 = meta.h0 + meta.a;
       meta.h1 = meta.h1 + meta.b;
       meta.h2 = meta.h2 + meta.c;
       meta.h3 = meta.h3 + meta.d;
       meta.h4 = meta.h4 + meta.e;
       meta.h5 = meta.h5 + meta.f;
       meta.h6 = meta.h6 + meta.g;
       meta.h7 = meta.h7 + meta.h;
    }

    action sha256_output(){
        hdr.length.len = 32;
        hdr.data.pop_front(1);
        hdr.data.push_front(1);
        hdr.data[0].setValid();
        hdr.data[0].m0[255:224] = meta.h0;
        hdr.data[0].m0[223:192] = meta.h1;
        hdr.data[0].m0[191:160] = meta.h2;
        hdr.data[0].m0[159:128] = meta.h3;
        hdr.data[0].m0[127:96] = meta.h4;
        hdr.data[0].m0[95:64] = meta.h5;
        hdr.data[0].m0[63:32] = meta.h6;
        hdr.data[0].m0[31:0] = meta.h7;
        hdr.data[0].m1 = 0;
    }

    action forward() {
        /* TODO: fill out code in action body */
		standard_metadata.egress_spec = 1;
		hdr.ethernet.srcAddr = hdr.ethernet.dstAddr;
		hdr.ethernet.dstAddr = 0x000000000101;

    } 
#if 1
    table debug {
        key = {
            meta.count: exact;
        }
        actions = {
            NoAction;
        }
        size = 1024;
        default_action = NoAction();
    }
#endif
    apply {

        if(hdr.ethernet.dstAddr[7:0] != 0xff)
           mark_to_drop(standard_metadata);
        else{

            debug.apply();
            if(meta.count == 1)
            {
                meta.all_len = hdr.length.len;
                meta.len = hdr.length.len;
                meta.pad = 0;
                meta.max_count = (bit<16>)(meta.len >> 6) + 1;
                if(((meta.len % 64) >= 56)){
                    meta.max_count = meta.max_count + 1;
                }
                sha256_first();
            }

            sha256_load();
            sha256_padding();
//            sha256_extend();
            sha256_extend1();
            sha256_extend2();
            sha256_extend3();
            sha256_extend4();
            sha256_extend5();
            sha256_extend6();

            sha256_init();
//            sha256_main();
            sha256_main1();
            sha256_main2();
            sha256_main3();
            sha256_main4();
            sha256_main5();
            sha256_main6();
            sha256_main7();
            sha256_main8();

            sha256_end();

            if(meta.count >= meta.max_count){
                sha256_output();
                forward();
            }
        }
    }
}

/*************************************************************************
****************  E G R E S S   P R O C E S S I N G   *******************
*************************************************************************/

control MyEgress(inout headers hdr,
                 inout metadata meta,
                 inout standard_metadata_t standard_metadata) {

    action update_packet()
    {
        hdr.ethernet.setValid();
        hdr.length.setValid();
        hdr.length.len = hdr.length.len - meta.length;
    }

    apply {
        
        if(meta.count < meta.max_count){
            update_packet();
            hdr.data.pop_front(1);
            recirculate(meta);
        }
    }
}

/*************************************************************************
*************   C H E C K S U M    C O M P U T A T I O N   **************
*************************************************************************/

control MyComputeChecksum(inout headers hdr, inout metadata meta) {
    apply {
    }
}


/*************************************************************************
***********************  D E P A R S E R  *******************************
*************************************************************************/

control MyDeparser(packet_out packet, in headers hdr) {
    apply {
        /* TODO: add deparser logic */
		packet.emit(hdr.ethernet);
		packet.emit(hdr.length);
		packet.emit(hdr.data);
    }
}

/*************************************************************************
***********************  S W I T C H  *******************************
*************************************************************************/

V1Switch(
MyParser(),
MyVerifyChecksum(),
MyIngress(),
MyEgress(),
MyComputeChecksum(),
MyDeparser()
) main;

