lbl_803A9690:
/* 803A9690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A9694  7C 08 02 A6 */	mflr r0
/* 803A9698  2C 05 00 00 */	cmpwi r5, 0
/* 803A969C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A96A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A96A4  7C 9F 23 78 */	mr r31, r4
/* 803A96A8  93 C1 00 08 */	stw r30, 8(r1)
/* 803A96AC  7C 7E 1B 78 */	mr r30, r3
/* 803A96B0  40 82 00 0C */	bne lbl_803A96BC
/* 803A96B4  A0 7E 00 00 */	lhz r3, 0(r30)
/* 803A96B8  48 03 51 99 */	bl mPB_keep_item
lbl_803A96BC:
/* 803A96BC  B3 FE 00 00 */	sth r31, 0(r30)
/* 803A96C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A96C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A96C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A96CC  7C 08 03 A6 */	mtlr r0
/* 803A96D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803A96D4  4E 80 00 20 */	blr 
