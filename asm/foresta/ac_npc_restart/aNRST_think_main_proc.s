lbl_805723A4:
/* 805723A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805723A8  7C 08 02 A6 */	mflr r0
/* 805723AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805723B0  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 805723B4  28 00 00 FF */	cmplwi r0, 0xff
/* 805723B8  40 82 00 20 */	bne lbl_805723D8
/* 805723BC  80 03 09 A8 */	lwz r0, 0x9a8(r3)
/* 805723C0  3C A0 80 6C */	lis r5, aNRST_proc_table@ha /* 0x806BF454@ha */
/* 805723C4  38 A5 F4 54 */	addi r5, r5, aNRST_proc_table@l /* 0x806BF454@l */
/* 805723C8  54 00 10 3A */	slwi r0, r0, 2
/* 805723CC  7D 85 00 2E */	lwzx r12, r5, r0
/* 805723D0  7D 89 03 A6 */	mtctr r12
/* 805723D4  4E 80 04 21 */	bctrl 
lbl_805723D8:
/* 805723D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805723DC  7C 08 03 A6 */	mtlr r0
/* 805723E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805723E4  4E 80 00 20 */	blr 
