lbl_803C4EF4:
/* 803C4EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4EF8  7C 08 02 A6 */	mflr r0
/* 803C4EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4F00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C4F04  7C 7F 1B 78 */	mr r31, r3
/* 803C4F08  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 803C4F0C  80 03 04 0C */	lwz r0, 0x40c(r3)
/* 803C4F10  38 65 00 20 */	addi r3, r5, 0x20
/* 803C4F14  80 84 00 00 */	lwz r4, 0(r4)
/* 803C4F18  80 A5 00 08 */	lwz r5, 8(r5)
/* 803C4F1C  54 06 03 DE */	rlwinm r6, r0, 0, 0xf, 0xf
/* 803C4F20  4B FF CA 2D */	bl mMsg_CopyIslandName
/* 803C4F24  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 803C4F28  90 64 00 08 */	stw r3, 8(r4)
/* 803C4F2C  38 60 00 00 */	li r3, 0
/* 803C4F30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C4F34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4F38  7C 08 03 A6 */	mtlr r0
/* 803C4F3C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4F40  4E 80 00 20 */	blr 
