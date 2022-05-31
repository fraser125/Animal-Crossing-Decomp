lbl_8052EA88:
/* 8052EA88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052EA8C  7C 08 02 A6 */	mflr r0
/* 8052EA90  38 A0 00 00 */	li r5, 0
/* 8052EA94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052EA98  80 03 07 CC */	lwz r0, 0x7cc(r3)
/* 8052EA9C  80 83 08 60 */	lwz r4, 0x860(r3)
/* 8052EAA0  2C 00 FF FF */	cmpwi r0, -1
/* 8052EAA4  41 82 00 20 */	beq lbl_8052EAC4
/* 8052EAA8  3C A0 80 53 */	lis r5, aNPC_set_talk_info_force_call@ha /* 0x8052EA38@ha */
/* 8052EAAC  7C 64 1B 78 */	mr r4, r3
/* 8052EAB0  38 A5 EA 38 */	addi r5, r5, aNPC_set_talk_info_force_call@l /* 0x8052EA38@l */
/* 8052EAB4  38 60 00 08 */	li r3, 8
/* 8052EAB8  4B E6 B6 A5 */	bl mDemo_Request
/* 8052EABC  38 A0 00 01 */	li r5, 1
/* 8052EAC0  48 00 00 A4 */	b lbl_8052EB64
lbl_8052EAC4:
/* 8052EAC4  28 04 00 00 */	cmplwi r4, 0
/* 8052EAC8  41 82 00 9C */	beq lbl_8052EB64
/* 8052EACC  88 84 00 00 */	lbz r4, 0(r4)
/* 8052EAD0  80 03 08 64 */	lwz r0, 0x864(r3)
/* 8052EAD4  7C 84 07 74 */	extsb r4, r4
/* 8052EAD8  7C 04 02 14 */	add r0, r4, r0
/* 8052EADC  2C 00 00 80 */	cmpwi r0, 0x80
/* 8052EAE0  40 81 00 84 */	ble lbl_8052EB64
/* 8052EAE4  88 03 07 F7 */	lbz r0, 0x7f7(r3)
/* 8052EAE8  28 00 00 02 */	cmplwi r0, 2
/* 8052EAEC  40 82 00 78 */	bne lbl_8052EB64
/* 8052EAF0  88 03 07 FD */	lbz r0, 0x7fd(r3)
/* 8052EAF4  28 00 00 01 */	cmplwi r0, 1
/* 8052EAF8  40 82 00 6C */	bne lbl_8052EB64
/* 8052EAFC  A0 03 07 CA */	lhz r0, 0x7ca(r3)
/* 8052EB00  28 00 00 00 */	cmplwi r0, 0
/* 8052EB04  40 82 00 60 */	bne lbl_8052EB64
/* 8052EB08  3C 80 80 65 */	lis r4, lit_1418@ha /* 0x806492A8@ha */
/* 8052EB0C  C0 23 00 BC */	lfs f1, 0xbc(r3)
/* 8052EB10  C0 04 92 A8 */	lfs f0, lit_1418@l(r4)  /* 0x806492A8@l */
/* 8052EB14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052EB18  40 80 00 4C */	bge lbl_8052EB64
/* 8052EB1C  3C 80 80 65 */	lis r4, data_80649274@ha /* 0x80649274@ha */
/* 8052EB20  C0 23 00 C0 */	lfs f1, 0xc0(r3)
/* 8052EB24  C0 04 92 74 */	lfs f0, data_80649274@l(r4)  /* 0x80649274@l */
/* 8052EB28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052EB2C  4C 41 13 82 */	cror 2, 1, 2
/* 8052EB30  40 82 00 08 */	bne lbl_8052EB38
/* 8052EB34  48 00 00 08 */	b lbl_8052EB3C
lbl_8052EB38:
/* 8052EB38  FC 20 08 50 */	fneg f1, f1
lbl_8052EB3C:
/* 8052EB3C  3C 80 80 65 */	lis r4, lit_1419@ha /* 0x806492AC@ha */
/* 8052EB40  C0 04 92 AC */	lfs f0, lit_1419@l(r4)  /* 0x806492AC@l */
/* 8052EB44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052EB48  40 80 00 1C */	bge lbl_8052EB64
/* 8052EB4C  3C A0 80 53 */	lis r5, aNPC_set_talk_info_talk_request_check@ha /* 0x8052E83C@ha */
/* 8052EB50  7C 64 1B 78 */	mr r4, r3
/* 8052EB54  38 A5 E8 3C */	addi r5, r5, aNPC_set_talk_info_talk_request_check@l /* 0x8052E83C@l */
/* 8052EB58  38 60 00 08 */	li r3, 8
/* 8052EB5C  4B E6 B6 01 */	bl mDemo_Request
/* 8052EB60  38 A0 00 01 */	li r5, 1
lbl_8052EB64:
/* 8052EB64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052EB68  7C A3 2B 78 */	mr r3, r5
/* 8052EB6C  7C 08 03 A6 */	mtlr r0
/* 8052EB70  38 21 00 10 */	addi r1, r1, 0x10
/* 8052EB74  4E 80 00 20 */	blr 
