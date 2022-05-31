lbl_805E69C0:
/* 805E69C0  3D 40 81 21 */	lis r10, data_812125A0@ha /* 0x812125A0@ha */
/* 805E69C4  3D 20 80 B0 */	lis r9, kan_win_wakuT_model@ha /* 0x80B070D8@ha */
/* 805E69C8  3D 00 80 B0 */	lis r8, kan_waku_w1T_model@ha /* 0x80B018E0@ha */
/* 805E69CC  3C E0 80 B0 */	lis r7, kan_waku_w2T_model@ha /* 0x80B01928@ha */
/* 805E69D0  3C C0 80 B0 */	lis r6, kan_waku_w3T_model@ha /* 0x80B01958@ha */
/* 805E69D4  3C A0 80 B0 */	lis r5, kan_waku_w4T_model@ha /* 0x80B01988@ha */
/* 805E69D8  3C 80 80 B0 */	lis r4, kan_win_color0_mode@ha /* 0x80B073B8@ha */
/* 805E69DC  3C 60 80 B0 */	lis r3, kan_win_color1_mode@ha /* 0x80B07448@ha */
/* 805E69E0  39 4A 25 A0 */	addi r10, r10, data_812125A0@l /* 0x812125A0@l */
/* 805E69E4  39 29 70 D8 */	addi r9, r9, kan_win_wakuT_model@l /* 0x80B070D8@l */
/* 805E69E8  39 08 18 E0 */	addi r8, r8, kan_waku_w1T_model@l /* 0x80B018E0@l */
/* 805E69EC  38 E7 19 28 */	addi r7, r7, kan_waku_w2T_model@l /* 0x80B01928@l */
/* 805E69F0  38 C6 19 58 */	addi r6, r6, kan_waku_w3T_model@l /* 0x80B01958@l */
/* 805E69F4  38 A5 19 88 */	addi r5, r5, kan_waku_w4T_model@l /* 0x80B01988@l */
/* 805E69F8  38 84 73 B8 */	addi r4, r4, kan_win_color0_mode@l /* 0x80B073B8@l */
/* 805E69FC  38 03 74 48 */	addi r0, r3, kan_win_color1_mode@l /* 0x80B07448@l */
/* 805E6A00  91 2A 00 00 */	stw r9, 0(r10)
/* 805E6A04  91 0A 00 04 */	stw r8, 4(r10)
/* 805E6A08  90 EA 00 08 */	stw r7, 8(r10)
/* 805E6A0C  90 CA 00 0C */	stw r6, 0xc(r10)
/* 805E6A10  90 AA 00 10 */	stw r5, 0x10(r10)
/* 805E6A14  90 8A 00 14 */	stw r4, 0x14(r10)
/* 805E6A18  90 0A 00 18 */	stw r0, 0x18(r10)
/* 805E6A1C  4E 80 00 20 */	blr 
