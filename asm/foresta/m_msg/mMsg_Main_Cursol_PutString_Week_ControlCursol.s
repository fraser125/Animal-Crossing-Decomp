lbl_803C3B28:
/* 803C3B28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3B2C  7C 08 02 A6 */	mflr r0
/* 803C3B30  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3B34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C3B38  7C 7F 1B 78 */	mr r31, r3
/* 803C3B3C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803C3B40  80 84 00 00 */	lwz r4, 0(r4)
/* 803C3B44  80 A3 00 08 */	lwz r5, 8(r3)
/* 803C3B48  38 63 00 20 */	addi r3, r3, 0x20
/* 803C3B4C  4B FF D7 5D */	bl mMsg_CopyWeek
/* 803C3B50  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 803C3B54  90 64 00 08 */	stw r3, 8(r4)
/* 803C3B58  38 60 00 00 */	li r3, 0
/* 803C3B5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C3B60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3B64  7C 08 03 A6 */	mtlr r0
/* 803C3B68  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3B6C  4E 80 00 20 */	blr 
