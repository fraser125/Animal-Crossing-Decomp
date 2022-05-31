lbl_803D8DC4:
/* 803D8DC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D8DC8  7C 08 02 A6 */	mflr r0
/* 803D8DCC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D8DD0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803D8DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D8DD8  3C 64 00 02 */	addis r3, r4, 2
/* 803D8DDC  80 E3 61 3C */	lwz r7, 0x613c(r3)
/* 803D8DE0  3C C4 00 03 */	addis r6, r4, 3
/* 803D8DE4  88 A6 88 38 */	lbz r5, -0x77c8(r6)
/* 803D8DE8  88 67 00 14 */	lbz r3, 0x14(r7)
/* 803D8DEC  88 87 00 15 */	lbz r4, 0x15(r7)
/* 803D8DF0  7C A5 07 74 */	extsb r5, r5
/* 803D8DF4  88 C6 85 C0 */	lbz r6, -0x7a40(r6)
/* 803D8DF8  7C 63 07 74 */	extsb r3, r3
/* 803D8DFC  7C 84 07 74 */	extsb r4, r4
/* 803D8E00  7C C6 07 74 */	extsb r6, r6
/* 803D8E04  4B FF FF 81 */	bl mPlib_Get_UseFaceTexRom_p_common
/* 803D8E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D8E0C  7C 08 03 A6 */	mtlr r0
/* 803D8E10  38 21 00 10 */	addi r1, r1, 0x10
/* 803D8E14  4E 80 00 20 */	blr 
