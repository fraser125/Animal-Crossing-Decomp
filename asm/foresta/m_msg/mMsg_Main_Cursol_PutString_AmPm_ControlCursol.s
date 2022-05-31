lbl_803C509C:
/* 803C509C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C50A0  7C 08 02 A6 */	mflr r0
/* 803C50A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C50A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C50AC  7C 7F 1B 78 */	mr r31, r3
/* 803C50B0  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 803C50B4  80 A4 00 00 */	lwz r5, 0(r4)
/* 803C50B8  80 C7 00 08 */	lwz r6, 8(r7)
/* 803C50BC  38 87 00 20 */	addi r4, r7, 0x20
/* 803C50C0  4B FF C9 3D */	bl mMsg_CopyAmPm
/* 803C50C4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 803C50C8  90 64 00 08 */	stw r3, 8(r4)
/* 803C50CC  38 60 00 00 */	li r3, 0
/* 803C50D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C50D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C50D8  7C 08 03 A6 */	mtlr r0
/* 803C50DC  38 21 00 10 */	addi r1, r1, 0x10
/* 803C50E0  4E 80 00 20 */	blr 
