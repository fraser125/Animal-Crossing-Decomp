lbl_8058C9AC:
/* 8058C9AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C9B0  7C 08 02 A6 */	mflr r0
/* 8058C9B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C9B8  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8058C9BC  28 00 00 03 */	cmplwi r0, 3
/* 8058C9C0  40 82 00 18 */	bne lbl_8058C9D8
/* 8058C9C4  88 A3 09 A8 */	lbz r5, 0x9a8(r3)
/* 8058C9C8  38 05 00 01 */	addi r0, r5, 1
/* 8058C9CC  98 03 09 A8 */	stb r0, 0x9a8(r3)
/* 8058C9D0  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8058C9D4  48 00 0B 49 */	bl aTKN1_setup_think_proc
lbl_8058C9D8:
/* 8058C9D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C9DC  7C 08 03 A6 */	mtlr r0
/* 8058C9E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C9E4  4E 80 00 20 */	blr 
