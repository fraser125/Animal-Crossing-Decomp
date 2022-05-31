lbl_8053D618:
/* 8053D618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053D61C  7C 08 02 A6 */	mflr r0
/* 8053D620  38 A0 00 00 */	li r5, 0
/* 8053D624  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053D628  80 03 07 CC */	lwz r0, 0x7cc(r3)
/* 8053D62C  80 83 08 60 */	lwz r4, 0x860(r3)
/* 8053D630  2C 00 FF FF */	cmpwi r0, -1
/* 8053D634  41 82 00 20 */	beq lbl_8053D654
/* 8053D638  3C A0 80 54 */	lis r5, aNPC_set_talk_info_force_call@ha /* 0x8053D5C8@ha */
/* 8053D63C  7C 64 1B 78 */	mr r4, r3
/* 8053D640  38 A5 D5 C8 */	addi r5, r5, aNPC_set_talk_info_force_call@l /* 0x8053D5C8@l */
/* 8053D644  38 60 00 08 */	li r3, 8
/* 8053D648  4B E5 CB 15 */	bl mDemo_Request
/* 8053D64C  38 A0 00 01 */	li r5, 1
/* 8053D650  48 00 00 A4 */	b lbl_8053D6F4
lbl_8053D654:
/* 8053D654  28 04 00 00 */	cmplwi r4, 0
/* 8053D658  41 82 00 9C */	beq lbl_8053D6F4
/* 8053D65C  88 84 00 00 */	lbz r4, 0(r4)
/* 8053D660  80 03 08 64 */	lwz r0, 0x864(r3)
/* 8053D664  7C 84 07 74 */	extsb r4, r4
/* 8053D668  7C 04 02 14 */	add r0, r4, r0
/* 8053D66C  2C 00 00 80 */	cmpwi r0, 0x80
/* 8053D670  40 81 00 84 */	ble lbl_8053D6F4
/* 8053D674  88 03 07 F7 */	lbz r0, 0x7f7(r3)
/* 8053D678  28 00 00 02 */	cmplwi r0, 2
/* 8053D67C  40 82 00 78 */	bne lbl_8053D6F4
/* 8053D680  88 03 07 FD */	lbz r0, 0x7fd(r3)
/* 8053D684  28 00 00 01 */	cmplwi r0, 1
/* 8053D688  40 82 00 6C */	bne lbl_8053D6F4
/* 8053D68C  A0 03 07 CA */	lhz r0, 0x7ca(r3)
/* 8053D690  28 00 00 00 */	cmplwi r0, 0
/* 8053D694  40 82 00 60 */	bne lbl_8053D6F4
/* 8053D698  3C 80 80 65 */	lis r4, lit_1405@ha /* 0x806493A8@ha */
/* 8053D69C  C0 23 00 BC */	lfs f1, 0xbc(r3)
/* 8053D6A0  C0 04 93 A8 */	lfs f0, lit_1405@l(r4)  /* 0x806493A8@l */
/* 8053D6A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053D6A8  40 80 00 4C */	bge lbl_8053D6F4
/* 8053D6AC  3C 80 80 65 */	lis r4, data_80649374@ha /* 0x80649374@ha */
/* 8053D6B0  C0 23 00 C0 */	lfs f1, 0xc0(r3)
/* 8053D6B4  C0 04 93 74 */	lfs f0, data_80649374@l(r4)  /* 0x80649374@l */
/* 8053D6B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053D6BC  4C 41 13 82 */	cror 2, 1, 2
/* 8053D6C0  40 82 00 08 */	bne lbl_8053D6C8
/* 8053D6C4  48 00 00 08 */	b lbl_8053D6CC
lbl_8053D6C8:
/* 8053D6C8  FC 20 08 50 */	fneg f1, f1
lbl_8053D6CC:
/* 8053D6CC  3C 80 80 65 */	lis r4, lit_1406@ha /* 0x806493AC@ha */
/* 8053D6D0  C0 04 93 AC */	lfs f0, lit_1406@l(r4)  /* 0x806493AC@l */
/* 8053D6D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053D6D8  40 80 00 1C */	bge lbl_8053D6F4
/* 8053D6DC  3C A0 80 54 */	lis r5, aNPC_set_talk_info_talk_request_check@ha /* 0x8053D3CC@ha */
/* 8053D6E0  7C 64 1B 78 */	mr r4, r3
/* 8053D6E4  38 A5 D3 CC */	addi r5, r5, aNPC_set_talk_info_talk_request_check@l /* 0x8053D3CC@l */
/* 8053D6E8  38 60 00 08 */	li r3, 8
/* 8053D6EC  4B E5 CA 71 */	bl mDemo_Request
/* 8053D6F0  38 A0 00 01 */	li r5, 1
lbl_8053D6F4:
/* 8053D6F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053D6F8  7C A3 2B 78 */	mr r3, r5
/* 8053D6FC  7C 08 03 A6 */	mtlr r0
/* 8053D700  38 21 00 10 */	addi r1, r1, 0x10
/* 8053D704  4E 80 00 20 */	blr 
