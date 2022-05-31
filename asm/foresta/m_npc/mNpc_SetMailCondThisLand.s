lbl_803CCFD8:
/* 803CCFD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CCFDC  7C 08 02 A6 */	mflr r0
/* 803CCFE0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803CCFE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CCFE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CCFEC  7C 7F 1B 78 */	mr r31, r3
/* 803CCFF0  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803CCFF4  3C A3 00 02 */	addis r5, r3, 2
/* 803CCFF8  A0 05 61 26 */	lhz r0, 0x6126(r5)
/* 803CCFFC  7C 83 23 78 */	mr r3, r4
/* 803CD000  B0 1F 01 30 */	sth r0, 0x130(r31)
/* 803CD004  88 05 61 25 */	lbz r0, 0x6125(r5)
/* 803CD008  98 1F 01 32 */	stb r0, 0x132(r31)
/* 803CD00C  88 05 61 23 */	lbz r0, 0x6123(r5)
/* 803CD010  98 1F 01 33 */	stb r0, 0x133(r31)
/* 803CD014  4B FF FF A5 */	bl mNpc_CheckNormalMail
/* 803CD018  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803CD01C  28 00 00 02 */	cmplwi r0, 2
/* 803CD020  40 80 00 20 */	bge lbl_803CD040
/* 803CD024  88 1F 00 31 */	lbz r0, 0x31(r31)
/* 803CD028  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 803CD02C  38 80 00 01 */	li r4, 1
/* 803CD030  98 1F 00 31 */	stb r0, 0x31(r31)
/* 803CD034  88 1F 00 31 */	lbz r0, 0x31(r31)
/* 803CD038  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 803CD03C  98 1F 00 31 */	stb r0, 0x31(r31)
lbl_803CD040:
/* 803CD040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CD044  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803CD048  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CD04C  7C 08 03 A6 */	mtlr r0
/* 803CD050  38 21 00 10 */	addi r1, r1, 0x10
/* 803CD054  4E 80 00 20 */	blr 
