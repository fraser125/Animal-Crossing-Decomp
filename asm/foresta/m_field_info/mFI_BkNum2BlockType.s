lbl_803A61E4:
/* 803A61E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A61E8  7C 08 02 A6 */	mflr r0
/* 803A61EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A61F0  39 61 00 20 */	addi r11, r1, 0x20
/* 803A61F4  4B CF 4C E1 */	bl func_8009AED4
/* 803A61F8  7C 7D 1B 78 */	mr r29, r3
/* 803A61FC  7C 9E 23 78 */	mr r30, r4
/* 803A6200  3B E0 00 27 */	li r31, 0x27
/* 803A6204  4B FF EA 8D */	bl mFI_CheckFieldData
/* 803A6208  2C 03 00 00 */	cmpwi r3, 0
/* 803A620C  41 82 00 3C */	beq lbl_803A6248
/* 803A6210  2C 1D 00 00 */	cmpwi r29, 0
/* 803A6214  41 80 00 34 */	blt lbl_803A6248
/* 803A6218  2C 1D 00 07 */	cmpwi r29, 7
/* 803A621C  40 80 00 2C */	bge lbl_803A6248
/* 803A6220  2C 1E 00 00 */	cmpwi r30, 0
/* 803A6224  41 80 00 24 */	blt lbl_803A6248
/* 803A6228  2C 1E 00 0A */	cmpwi r30, 0xa
/* 803A622C  40 80 00 1C */	bge lbl_803A6248
/* 803A6230  3C 60 80 65 */	lis r3, g_block_type_p@ha /* 0x80653D1C@ha */
/* 803A6234  38 63 3D 1C */	addi r3, r3, g_block_type_p@l /* 0x80653D1C@l */
/* 803A6238  1C 1E 00 07 */	mulli r0, r30, 7
/* 803A623C  80 63 00 00 */	lwz r3, 0(r3)
/* 803A6240  7C 00 1A 14 */	add r0, r0, r3
/* 803A6244  7F FD 00 AE */	lbzx r31, r29, r0
lbl_803A6248:
/* 803A6248  7F E3 FB 78 */	mr r3, r31
/* 803A624C  39 61 00 20 */	addi r11, r1, 0x20
/* 803A6250  4B CF 4C D1 */	bl func_8009AF20
/* 803A6254  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A6258  7C 08 03 A6 */	mtlr r0
/* 803A625C  38 21 00 20 */	addi r1, r1, 0x20
/* 803A6260  4E 80 00 20 */	blr 
