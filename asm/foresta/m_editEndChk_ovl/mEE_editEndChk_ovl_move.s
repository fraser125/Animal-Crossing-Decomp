lbl_805D7C20:
/* 805D7C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D7C24  7C 08 02 A6 */	mflr r0
/* 805D7C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D7C2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D7C30  93 C1 00 08 */	stw r30, 8(r1)
/* 805D7C34  7C 7E 1B 78 */	mr r30, r3
/* 805D7C38  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805D7C3C  81 84 04 98 */	lwz r12, 0x498(r4)
/* 805D7C40  3B E4 04 8C */	addi r31, r4, 0x48c
/* 805D7C44  7D 89 03 A6 */	mtctr r12
/* 805D7C48  4E 80 04 21 */	bctrl 
/* 805D7C4C  80 1F 00 04 */	lwz r0, 4(r31)
/* 805D7C50  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806CC890@ha */
/* 805D7C54  38 A3 C8 90 */	addi r5, r3, ovl_move_proc@l /* 0x806CC890@l */
/* 805D7C58  7F C3 F3 78 */	mr r3, r30
/* 805D7C5C  54 00 10 3A */	slwi r0, r0, 2
/* 805D7C60  7F E4 FB 78 */	mr r4, r31
/* 805D7C64  7D 85 00 2E */	lwzx r12, r5, r0
/* 805D7C68  7D 89 03 A6 */	mtctr r12
/* 805D7C6C  4E 80 04 21 */	bctrl 
/* 805D7C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D7C74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D7C78  83 C1 00 08 */	lwz r30, 8(r1)
/* 805D7C7C  7C 08 03 A6 */	mtlr r0
/* 805D7C80  38 21 00 10 */	addi r1, r1, 0x10
/* 805D7C84  4E 80 00 20 */	blr 
