lbl_803C9C14:
/* 803C9C14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C9C18  7C 08 02 A6 */	mflr r0
/* 803C9C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C9C20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C9C24  7C 7F 1B 79 */	or. r31, r3, r3
/* 803C9C28  41 82 00 20 */	beq lbl_803C9C48
/* 803C9C2C  38 64 00 20 */	addi r3, r4, 0x20
/* 803C9C30  7F E4 FB 78 */	mr r4, r31
/* 803C9C34  38 A0 02 00 */	li r5, 0x200
/* 803C9C38  4B C9 33 E5 */	bl func_8005D01C
/* 803C9C3C  7F E3 FB 78 */	mr r3, r31
/* 803C9C40  38 80 02 00 */	li r4, 0x200
/* 803C9C44  4B CA FF D9 */	bl DCStoreRangeNoSync
lbl_803C9C48:
/* 803C9C48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C9C4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C9C50  7C 08 03 A6 */	mtlr r0
/* 803C9C54  38 21 00 10 */	addi r1, r1, 0x10
/* 803C9C58  4E 80 00 20 */	blr 
