lbl_805C3D60:
/* 805C3D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C3D64  7C 08 02 A6 */	mflr r0
/* 805C3D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C3D6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C3D70  93 C1 00 08 */	stw r30, 8(r1)
/* 805C3D74  7C 7E 1B 78 */	mr r30, r3
/* 805C3D78  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805C3D7C  81 84 06 90 */	lwz r12, 0x690(r4)
/* 805C3D80  3B E4 06 84 */	addi r31, r4, 0x684
/* 805C3D84  7D 89 03 A6 */	mtctr r12
/* 805C3D88  4E 80 04 21 */	bctrl 
/* 805C3D8C  80 1F 00 04 */	lwz r0, 4(r31)
/* 805C3D90  3C 60 80 6C */	lis r3, ovl_move_proc@ha /* 0x806C7AA8@ha */
/* 805C3D94  38 A3 7A A8 */	addi r5, r3, ovl_move_proc@l /* 0x806C7AA8@l */
/* 805C3D98  7F C3 F3 78 */	mr r3, r30
/* 805C3D9C  54 00 10 3A */	slwi r0, r0, 2
/* 805C3DA0  7F E4 FB 78 */	mr r4, r31
/* 805C3DA4  7D 85 00 2E */	lwzx r12, r5, r0
/* 805C3DA8  7D 89 03 A6 */	mtctr r12
/* 805C3DAC  4E 80 04 21 */	bctrl 
/* 805C3DB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C3DB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C3DB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C3DBC  7C 08 03 A6 */	mtlr r0
/* 805C3DC0  38 21 00 10 */	addi r1, r1, 0x10
/* 805C3DC4  4E 80 00 20 */	blr 
