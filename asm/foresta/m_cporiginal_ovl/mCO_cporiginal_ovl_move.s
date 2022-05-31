lbl_805CDC28:
/* 805CDC28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CDC2C  7C 08 02 A6 */	mflr r0
/* 805CDC30  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CDC34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CDC38  93 C1 00 08 */	stw r30, 8(r1)
/* 805CDC3C  7C 7E 1B 78 */	mr r30, r3
/* 805CDC40  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805CDC44  81 84 07 20 */	lwz r12, 0x720(r4)
/* 805CDC48  3B E4 07 14 */	addi r31, r4, 0x714
/* 805CDC4C  7D 89 03 A6 */	mtctr r12
/* 805CDC50  4E 80 04 21 */	bctrl 
/* 805CDC54  80 1F 00 04 */	lwz r0, 4(r31)
/* 805CDC58  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806CB820@ha */
/* 805CDC5C  38 A3 B8 20 */	addi r5, r3, ovl_move_proc@l /* 0x806CB820@l */
/* 805CDC60  7F C3 F3 78 */	mr r3, r30
/* 805CDC64  54 00 10 3A */	slwi r0, r0, 2
/* 805CDC68  7F E4 FB 78 */	mr r4, r31
/* 805CDC6C  7D 85 00 2E */	lwzx r12, r5, r0
/* 805CDC70  7D 89 03 A6 */	mtctr r12
/* 805CDC74  4E 80 04 21 */	bctrl 
/* 805CDC78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CDC7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CDC80  83 C1 00 08 */	lwz r30, 8(r1)
/* 805CDC84  7C 08 03 A6 */	mtlr r0
/* 805CDC88  38 21 00 10 */	addi r1, r1, 0x10
/* 805CDC8C  4E 80 00 20 */	blr 
