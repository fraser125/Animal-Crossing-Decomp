lbl_805C2C38:
/* 805C2C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C2C3C  7C 08 02 A6 */	mflr r0
/* 805C2C40  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C2C44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C2C48  93 C1 00 08 */	stw r30, 8(r1)
/* 805C2C4C  7C 7E 1B 78 */	mr r30, r3
/* 805C2C50  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805C2C54  81 84 04 08 */	lwz r12, 0x408(r4)
/* 805C2C58  3B E4 03 FC */	addi r31, r4, 0x3fc
/* 805C2C5C  7D 89 03 A6 */	mtctr r12
/* 805C2C60  4E 80 04 21 */	bctrl 
/* 805C2C64  80 1F 00 04 */	lwz r0, 4(r31)
/* 805C2C68  3C 60 80 6C */	lis r3, ovl_move_proc@ha /* 0x806C7A2C@ha */
/* 805C2C6C  38 A3 7A 2C */	addi r5, r3, ovl_move_proc@l /* 0x806C7A2C@l */
/* 805C2C70  7F C3 F3 78 */	mr r3, r30
/* 805C2C74  54 00 10 3A */	slwi r0, r0, 2
/* 805C2C78  7F E4 FB 78 */	mr r4, r31
/* 805C2C7C  7D 85 00 2E */	lwzx r12, r5, r0
/* 805C2C80  7D 89 03 A6 */	mtctr r12
/* 805C2C84  4E 80 04 21 */	bctrl 
/* 805C2C88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C2C8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C2C90  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C2C94  7C 08 03 A6 */	mtlr r0
/* 805C2C98  38 21 00 10 */	addi r1, r1, 0x10
/* 805C2C9C  4E 80 00 20 */	blr 
