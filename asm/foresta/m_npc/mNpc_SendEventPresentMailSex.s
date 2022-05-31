lbl_803CDFD8:
/* 803CDFD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CDFDC  7C 08 02 A6 */	mflr r0
/* 803CDFE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CDFE4  39 61 00 20 */	addi r11, r1, 0x20
/* 803CDFE8  4B CC CE E9 */	bl func_8009AED0
/* 803CDFEC  7C BE 2B 78 */	mr r30, r5
/* 803CDFF0  7C 7C 1B 78 */	mr r28, r3
/* 803CDFF4  7C 9D 23 78 */	mr r29, r4
/* 803CDFF8  7C DF 33 78 */	mr r31, r6
/* 803CDFFC  38 7E 00 10 */	addi r3, r30, 0x10
/* 803CE000  38 80 00 07 */	li r4, 7
/* 803CE004  4B FF E0 F5 */	bl mNpc_GetAnimalMemoryBestFriend
/* 803CE008  7F E0 F8 F8 */	nor r0, r31, r31
/* 803CE00C  7C 7F 1B 78 */	mr r31, r3
/* 803CE010  38 7E 00 10 */	addi r3, r30, 0x10
/* 803CE014  38 80 00 07 */	li r4, 7
/* 803CE018  54 05 07 FE */	clrlwi r5, r0, 0x1f
/* 803CE01C  4B FF E1 91 */	bl mNpc_GetAnimalMemoryFriend_Land_Sex
/* 803CE020  2C 1F FF FF */	cmpwi r31, -1
/* 803CE024  41 82 00 1C */	beq lbl_803CE040
/* 803CE028  7C 03 F8 00 */	cmpw r3, r31
/* 803CE02C  40 82 00 14 */	bne lbl_803CE040
/* 803CE030  90 7C 00 00 */	stw r3, 0(r28)
/* 803CE034  38 00 00 00 */	li r0, 0
/* 803CE038  98 1D 00 00 */	stb r0, 0(r29)
/* 803CE03C  48 00 00 3C */	b lbl_803CE078
lbl_803CE040:
/* 803CE040  2C 03 FF FF */	cmpwi r3, -1
/* 803CE044  41 82 00 34 */	beq lbl_803CE078
/* 803CE048  1C 03 01 38 */	mulli r0, r3, 0x138
/* 803CE04C  90 7C 00 00 */	stw r3, 0(r28)
/* 803CE050  7C 7E 02 14 */	add r3, r30, r0
/* 803CE054  88 03 00 40 */	lbz r0, 0x40(r3)
/* 803CE058  7C 00 07 74 */	extsb r0, r0
/* 803CE05C  2C 00 00 50 */	cmpwi r0, 0x50
/* 803CE060  41 80 00 10 */	blt lbl_803CE070
/* 803CE064  38 00 00 01 */	li r0, 1
/* 803CE068  98 1D 00 00 */	stb r0, 0(r29)
/* 803CE06C  48 00 00 0C */	b lbl_803CE078
lbl_803CE070:
/* 803CE070  38 00 00 02 */	li r0, 2
/* 803CE074  98 1D 00 00 */	stb r0, 0(r29)
lbl_803CE078:
/* 803CE078  39 61 00 20 */	addi r11, r1, 0x20
/* 803CE07C  4B CC CE A1 */	bl func_8009AF1C
/* 803CE080  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CE084  7C 08 03 A6 */	mtlr r0
/* 803CE088  38 21 00 20 */	addi r1, r1, 0x20
/* 803CE08C  4E 80 00 20 */	blr 
