lbl_8059197C:
/* 8059197C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591980  7C 08 02 A6 */	mflr r0
/* 80591984  3C C0 80 6C */	lis r6, sche_proc@ha /* 0x806C2938@ha */
/* 80591988  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059198C  54 A0 10 3A */	slwi r0, r5, 2
/* 80591990  38 A6 29 38 */	addi r5, r6, sche_proc@l /* 0x806C2938@l */
/* 80591994  7D 85 00 2E */	lwzx r12, r5, r0
/* 80591998  7D 89 03 A6 */	mtctr r12
/* 8059199C  4E 80 04 21 */	bctrl 
/* 805919A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805919A4  7C 08 03 A6 */	mtlr r0
/* 805919A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805919AC  4E 80 00 20 */	blr 