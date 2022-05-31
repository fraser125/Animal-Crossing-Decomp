lbl_803EC638:
/* 803EC638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EC63C  7C 08 02 A6 */	mflr r0
/* 803EC640  3C C0 80 66 */	lis r6, chg_string_idx@ha /* 0x8065DBB4@ha */
/* 803EC644  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EC648  54 A0 15 FA */	rlwinm r0, r5, 2, 0x17, 0x1d
/* 803EC64C  38 A6 DB B4 */	addi r5, r6, chg_string_idx@l /* 0x8065DBB4@l */
/* 803EC650  7C A5 00 2E */	lwzx r5, r5, r0
/* 803EC654  38 A5 06 F8 */	addi r5, r5, 0x6f8
/* 803EC658  48 00 26 75 */	bl mString_Load_StringFromRom
/* 803EC65C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EC660  7C 08 03 A6 */	mtlr r0
/* 803EC664  38 21 00 10 */	addi r1, r1, 0x10
/* 803EC668  4E 80 00 20 */	blr 
