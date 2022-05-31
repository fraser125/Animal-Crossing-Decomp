lbl_805C5474:
/* 805C5474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C5478  7C 08 02 A6 */	mflr r0
/* 805C547C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C5480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C5484  93 C1 00 08 */	stw r30, 8(r1)
/* 805C5488  7C 7E 1B 78 */	mr r30, r3
/* 805C548C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805C5490  81 84 03 C0 */	lwz r12, 0x3c0(r4)
/* 805C5494  3B E4 03 B4 */	addi r31, r4, 0x3b4
/* 805C5498  7D 89 03 A6 */	mtctr r12
/* 805C549C  4E 80 04 21 */	bctrl 
/* 805C54A0  80 1F 00 04 */	lwz r0, 4(r31)
/* 805C54A4  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806C8760@ha */
/* 805C54A8  38 A3 87 60 */	addi r5, r3, ovl_move_proc@l /* 0x806C8760@l */
/* 805C54AC  7F C3 F3 78 */	mr r3, r30
/* 805C54B0  54 00 10 3A */	slwi r0, r0, 2
/* 805C54B4  7F E4 FB 78 */	mr r4, r31
/* 805C54B8  7D 85 00 2E */	lwzx r12, r5, r0
/* 805C54BC  7D 89 03 A6 */	mtctr r12
/* 805C54C0  4E 80 04 21 */	bctrl 
/* 805C54C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C54C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C54CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C54D0  7C 08 03 A6 */	mtlr r0
/* 805C54D4  38 21 00 10 */	addi r1, r1, 0x10
/* 805C54D8  4E 80 00 20 */	blr 
