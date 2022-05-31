lbl_80565BBC:
/* 80565BBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80565BC0  7C 08 02 A6 */	mflr r0
/* 80565BC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80565BC8  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 80565BCC  28 00 00 FF */	cmplwi r0, 0xff
/* 80565BD0  40 82 00 20 */	bne lbl_80565BF0
/* 80565BD4  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 80565BD8  28 00 00 03 */	cmplwi r0, 3
/* 80565BDC  40 82 00 14 */	bne lbl_80565BF0
/* 80565BE0  88 A3 09 AF */	lbz r5, 0x9af(r3)
/* 80565BE4  38 A5 00 01 */	addi r5, r5, 1
/* 80565BE8  98 A3 09 AF */	stb r5, 0x9af(r3)
/* 80565BEC  48 00 04 01 */	bl aNNW_setup_think_proc
lbl_80565BF0:
/* 80565BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80565BF4  7C 08 03 A6 */	mtlr r0
/* 80565BF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80565BFC  4E 80 00 20 */	blr 
