lbl_8058AA88:
/* 8058AA88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058AA8C  7C 08 02 A6 */	mflr r0
/* 8058AA90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058AA94  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8058AA98  28 00 00 03 */	cmplwi r0, 3
/* 8058AA9C  40 82 00 14 */	bne lbl_8058AAB0
/* 8058AAA0  88 A3 09 AA */	lbz r5, 0x9aa(r3)
/* 8058AAA4  38 A5 00 01 */	addi r5, r5, 1
/* 8058AAA8  98 A3 09 AA */	stb r5, 0x9aa(r3)
/* 8058AAAC  48 00 07 A1 */	bl aTMN1_setup_think_proc
lbl_8058AAB0:
/* 8058AAB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058AAB4  7C 08 03 A6 */	mtlr r0
/* 8058AAB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8058AABC  4E 80 00 20 */	blr 
