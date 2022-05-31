lbl_805E4E64:
/* 805E4E64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E4E68  7C 08 02 A6 */	mflr r0
/* 805E4E6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E4E70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E4E74  93 C1 00 08 */	stw r30, 8(r1)
/* 805E4E78  7C 7E 1B 78 */	mr r30, r3
/* 805E4E7C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805E4E80  81 84 01 80 */	lwz r12, 0x180(r4)
/* 805E4E84  3B E4 01 74 */	addi r31, r4, 0x174
/* 805E4E88  7D 89 03 A6 */	mtctr r12
/* 805E4E8C  4E 80 04 21 */	bctrl 
/* 805E4E90  80 1F 00 04 */	lwz r0, 4(r31)
/* 805E4E94  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806CD894@ha */
/* 805E4E98  38 A3 D8 94 */	addi r5, r3, ovl_move_proc@l /* 0x806CD894@l */
/* 805E4E9C  7F C3 F3 78 */	mr r3, r30
/* 805E4EA0  54 00 10 3A */	slwi r0, r0, 2
/* 805E4EA4  7F E4 FB 78 */	mr r4, r31
/* 805E4EA8  7D 85 00 2E */	lwzx r12, r5, r0
/* 805E4EAC  7D 89 03 A6 */	mtctr r12
/* 805E4EB0  4E 80 04 21 */	bctrl 
/* 805E4EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E4EB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E4EBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E4EC0  7C 08 03 A6 */	mtlr r0
/* 805E4EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 805E4EC8  4E 80 00 20 */	blr 
