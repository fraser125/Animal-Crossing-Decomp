lbl_803C9DB0:
/* 803C9DB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C9DB4  7C 08 02 A6 */	mflr r0
/* 803C9DB8  3C 80 80 66 */	lis r4, name@ha /* 0x8065AD20@ha */
/* 803C9DBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C9DC0  38 84 AD 20 */	addi r4, r4, name@l /* 0x8065AD20@l */
/* 803C9DC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C9DC8  93 C1 00 08 */	stw r30, 8(r1)
/* 803C9DCC  7C 7E 1B 78 */	mr r30, r3
/* 803C9DD0  4B FF FF 25 */	bl mNW_OverWriteOriginalName
/* 803C9DD4  3B FE 00 20 */	addi r31, r30, 0x20
/* 803C9DD8  38 80 02 00 */	li r4, 0x200
/* 803C9DDC  7F E3 FB 78 */	mr r3, r31
/* 803C9DE0  38 A0 00 FF */	li r5, 0xff
/* 803C9DE4  4B FF 0C 65 */	bl mem_clear
/* 803C9DE8  7F E3 FB 78 */	mr r3, r31
/* 803C9DEC  38 80 02 00 */	li r4, 0x200
/* 803C9DF0  4B CA FE 2D */	bl DCStoreRangeNoSync
/* 803C9DF4  38 00 00 00 */	li r0, 0
/* 803C9DF8  98 1E 00 10 */	stb r0, 0x10(r30)
/* 803C9DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C9E00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C9E04  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C9E08  7C 08 03 A6 */	mtlr r0
/* 803C9E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C9E10  4E 80 00 20 */	blr 
