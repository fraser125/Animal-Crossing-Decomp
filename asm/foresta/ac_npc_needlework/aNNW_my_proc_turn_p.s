lbl_80565708:
/* 80565708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056570C  7C 08 02 A6 */	mflr r0
/* 80565710  90 01 00 14 */	stw r0, 0x14(r1)
/* 80565714  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 80565718  28 00 00 03 */	cmplwi r0, 3
/* 8056571C  40 82 00 18 */	bne lbl_80565734
/* 80565720  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 80565724  28 00 00 FF */	cmplwi r0, 0xff
/* 80565728  40 82 00 0C */	bne lbl_80565734
/* 8056572C  38 A0 00 01 */	li r5, 1
/* 80565730  4B FF FE 41 */	bl aNNW_my_proc_init
lbl_80565734:
/* 80565734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80565738  7C 08 03 A6 */	mtlr r0
/* 8056573C  38 21 00 10 */	addi r1, r1, 0x10
/* 80565740  4E 80 00 20 */	blr 
