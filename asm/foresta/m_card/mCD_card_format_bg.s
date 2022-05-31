lbl_803FB694:
/* 803FB694  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FB698  7C 08 02 A6 */	mflr r0
/* 803FB69C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FB6A0  38 81 00 08 */	addi r4, r1, 8
/* 803FB6A4  4B FF D8 B1 */	bl mCD_format_bg
/* 803FB6A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FB6AC  7C 08 03 A6 */	mtlr r0
/* 803FB6B0  38 21 00 10 */	addi r1, r1, 0x10
/* 803FB6B4  4E 80 00 20 */	blr 
