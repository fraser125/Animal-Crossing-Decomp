lbl_803A51B8:
/* 803A51B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A51BC  7C 08 02 A6 */	mflr r0
/* 803A51C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A51C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A51C8  7C 9F 23 78 */	mr r31, r4
/* 803A51CC  93 C1 00 08 */	stw r30, 8(r1)
/* 803A51D0  7C 7E 1B 78 */	mr r30, r3
/* 803A51D4  4B FF FB BD */	bl mFI_GetBlockXMax
/* 803A51D8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803A51DC  7C 1F 01 D6 */	mullw r0, r31, r0
/* 803A51E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A51E4  7C 7E 02 14 */	add r3, r30, r0
/* 803A51E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A51EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A51F0  7C 08 03 A6 */	mtlr r0
/* 803A51F4  38 21 00 10 */	addi r1, r1, 0x10
/* 803A51F8  4E 80 00 20 */	blr 
