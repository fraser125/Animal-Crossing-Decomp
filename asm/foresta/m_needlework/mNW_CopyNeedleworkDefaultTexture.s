lbl_803C99F4:
/* 803C99F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C99F8  7C 08 02 A6 */	mflr r0
/* 803C99FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C9A00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C9A04  7C 9F 23 78 */	mr r31, r4
/* 803C9A08  93 C1 00 08 */	stw r30, 8(r1)
/* 803C9A0C  7C 7E 1B 78 */	mr r30, r3
/* 803C9A10  38 60 00 1C */	li r3, 0x1c
/* 803C9A14  4B C3 D1 C1 */	bl JW_GetAramAddress
/* 803C9A18  57 E0 4D 2C */	rlwinm r0, r31, 9, 0x14, 0x16
/* 803C9A1C  7F C4 F3 78 */	mr r4, r30
/* 803C9A20  38 A0 02 00 */	li r5, 0x200
/* 803C9A24  7C 63 02 14 */	add r3, r3, r0
/* 803C9A28  4B C3 D2 4D */	bl _JW_GetResourceAram
/* 803C9A2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C9A30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C9A34  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C9A38  7C 08 03 A6 */	mtlr r0
/* 803C9A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C9A40  4E 80 00 20 */	blr 
