lbl_8056F660:
/* 8056F660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056F664  7C 08 02 A6 */	mflr r0
/* 8056F668  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056F66C  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 8056F670  28 00 00 FF */	cmplwi r0, 0xff
/* 8056F674  40 82 00 18 */	bne lbl_8056F68C
/* 8056F678  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8056F67C  28 00 00 03 */	cmplwi r0, 3
/* 8056F680  40 82 00 0C */	bne lbl_8056F68C
/* 8056F684  80 A3 09 98 */	lwz r5, 0x998(r3)
/* 8056F688  48 00 06 F1 */	bl aNRG_setup_think_proc
lbl_8056F68C:
/* 8056F68C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056F690  7C 08 03 A6 */	mtlr r0
/* 8056F694  38 21 00 10 */	addi r1, r1, 0x10
/* 8056F698  4E 80 00 20 */	blr 