lbl_803BEC5C:
/* 803BEC5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BEC60  7C 08 02 A6 */	mflr r0
/* 803BEC64  2C 03 00 04 */	cmpwi r3, 4
/* 803BEC68  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BEC6C  40 80 00 60 */	bge lbl_803BECCC
/* 803BEC70  4B FF 49 49 */	bl mHS_get_arrange_idx
/* 803BEC74  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803BEC78  38 80 00 00 */	li r4, 0
/* 803BEC7C  38 E5 85 38 */	addi r7, r5, common_data@l /* 0x81138538@l */
/* 803BEC80  3C C7 00 02 */	addis r6, r7, 2
/* 803BEC84  80 A6 61 24 */	lwz r5, 0x6124(r6)
/* 803BEC88  1D 23 26 B0 */	mulli r9, r3, 0x26b0
/* 803BEC8C  3C 07 00 01 */	addis r0, r7, 1
/* 803BEC90  81 06 61 20 */	lwz r8, 0x6120(r6)
/* 803BEC94  90 A1 00 0C */	stw r5, 0xc(r1)
/* 803BEC98  7C 67 4A 14 */	add r3, r7, r9
/* 803BEC9C  A0 E1 00 0E */	lhz r7, 0xe(r1)
/* 803BECA0  7C C0 4A 14 */	add r6, r0, r9
/* 803BECA4  91 01 00 08 */	stw r8, 8(r1)
/* 803BECA8  3C 63 00 01 */	addis r3, r3, 1
/* 803BECAC  88 A1 00 0D */	lbz r5, 0xd(r1)
/* 803BECB0  B0 E6 9D 04 */	sth r7, -0x62fc(r6)
/* 803BECB4  88 01 00 0B */	lbz r0, 0xb(r1)
/* 803BECB8  98 A6 9D 06 */	stb r5, -0x62fa(r6)
/* 803BECBC  98 06 9D 07 */	stb r0, -0x62f9(r6)
/* 803BECC0  88 03 9D 0C */	lbz r0, -0x62f4(r3)
/* 803BECC4  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 803BECC8  98 03 9D 0C */	stb r0, -0x62f4(r3)
lbl_803BECCC:
/* 803BECCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BECD0  7C 08 03 A6 */	mtlr r0
/* 803BECD4  38 21 00 10 */	addi r1, r1, 0x10
/* 803BECD8  4E 80 00 20 */	blr 
