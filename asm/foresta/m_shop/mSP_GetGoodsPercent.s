lbl_803E9A58:
/* 803E9A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E9A5C  7C 08 02 A6 */	mflr r0
/* 803E9A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E9A64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E9A68  7C 7F 1B 78 */	mr r31, r3
/* 803E9A6C  4B FF 75 99 */	bl mPr_GetGoodsPower
/* 803E9A70  2C 1F 00 00 */	cmpwi r31, 0
/* 803E9A74  7C 63 07 34 */	extsh r3, r3
/* 803E9A78  41 80 00 68 */	blt lbl_803E9AE0
/* 803E9A7C  2C 1F 00 02 */	cmpwi r31, 2
/* 803E9A80  41 81 00 60 */	bgt lbl_803E9AE0
/* 803E9A84  2C 03 00 00 */	cmpwi r3, 0
/* 803E9A88  40 80 00 10 */	bge lbl_803E9A98
/* 803E9A8C  38 03 00 28 */	addi r0, r3, 0x28
/* 803E9A90  38 60 00 05 */	li r3, 5
/* 803E9A94  48 00 00 0C */	b lbl_803E9AA0
lbl_803E9A98:
/* 803E9A98  38 63 00 05 */	addi r3, r3, 5
/* 803E9A9C  38 03 00 23 */	addi r0, r3, 0x23
lbl_803E9AA0:
/* 803E9AA0  2C 1F 00 01 */	cmpwi r31, 1
/* 803E9AA4  41 82 00 28 */	beq lbl_803E9ACC
/* 803E9AA8  40 80 00 10 */	bge lbl_803E9AB8
/* 803E9AAC  2C 1F 00 00 */	cmpwi r31, 0
/* 803E9AB0  40 80 00 14 */	bge lbl_803E9AC4
/* 803E9AB4  48 00 00 24 */	b lbl_803E9AD8
lbl_803E9AB8:
/* 803E9AB8  2C 1F 00 03 */	cmpwi r31, 3
/* 803E9ABC  40 80 00 1C */	bge lbl_803E9AD8
/* 803E9AC0  48 00 00 24 */	b lbl_803E9AE4
lbl_803E9AC4:
/* 803E9AC4  20 60 00 64 */	subfic r3, r0, 0x64
/* 803E9AC8  48 00 00 1C */	b lbl_803E9AE4
lbl_803E9ACC:
/* 803E9ACC  7C 63 00 50 */	subf r3, r3, r0
/* 803E9AD0  48 00 00 14 */	b lbl_803E9AE4
/* 803E9AD4  48 00 00 10 */	b lbl_803E9AE4
lbl_803E9AD8:
/* 803E9AD8  38 60 00 00 */	li r3, 0
/* 803E9ADC  48 00 00 08 */	b lbl_803E9AE4
lbl_803E9AE0:
/* 803E9AE0  38 60 00 00 */	li r3, 0
lbl_803E9AE4:
/* 803E9AE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E9AE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E9AEC  7C 08 03 A6 */	mtlr r0
/* 803E9AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 803E9AF4  4E 80 00 20 */	blr 
