lbl_803C3C34:
/* 803C3C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3C38  7C 08 02 A6 */	mflr r0
/* 803C3C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3C40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C3C44  7C 7F 1B 78 */	mr r31, r3
/* 803C3C48  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803C3C4C  80 84 00 00 */	lwz r4, 0(r4)
/* 803C3C50  80 A3 00 08 */	lwz r5, 8(r3)
/* 803C3C54  38 63 00 20 */	addi r3, r3, 0x20
/* 803C3C58  4B FF D8 01 */	bl mMsg_CopyMin
/* 803C3C5C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 803C3C60  90 64 00 08 */	stw r3, 8(r4)
/* 803C3C64  38 60 00 00 */	li r3, 0
/* 803C3C68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C3C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3C70  7C 08 03 A6 */	mtlr r0
/* 803C3C74  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3C78  4E 80 00 20 */	blr 
