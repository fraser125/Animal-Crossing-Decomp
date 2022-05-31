lbl_8058AB58:
/* 8058AB58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058AB5C  7C 08 02 A6 */	mflr r0
/* 8058AB60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058AB64  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8058AB68  28 00 00 03 */	cmplwi r0, 3
/* 8058AB6C  40 82 00 0C */	bne lbl_8058AB78
/* 8058AB70  38 A0 00 09 */	li r5, 9
/* 8058AB74  48 00 06 D9 */	bl aTMN1_setup_think_proc
lbl_8058AB78:
/* 8058AB78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058AB7C  7C 08 03 A6 */	mtlr r0
/* 8058AB80  38 21 00 10 */	addi r1, r1, 0x10
/* 8058AB84  4E 80 00 20 */	blr 
