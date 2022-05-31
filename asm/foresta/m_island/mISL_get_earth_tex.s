lbl_803B4324:
/* 803B4324  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B4328  7C 08 02 A6 */	mflr r0
/* 803B432C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B4330  39 61 00 20 */	addi r11, r1, 0x20
/* 803B4334  4B CE 6B A1 */	bl func_8009AED4
/* 803B4338  7C BF 2B 78 */	mr r31, r5
/* 803B433C  7C 7D 1B 78 */	mr r29, r3
/* 803B4340  2C 1F 00 03 */	cmpwi r31, 3
/* 803B4344  7C 9E 23 78 */	mr r30, r4
/* 803B4348  40 80 00 40 */	bge lbl_803B4388
/* 803B434C  28 1D 00 00 */	cmplwi r29, 0
/* 803B4350  41 82 00 38 */	beq lbl_803B4388
/* 803B4354  28 1E 00 00 */	cmplwi r30, 0
/* 803B4358  41 82 00 30 */	beq lbl_803B4388
/* 803B435C  38 60 00 4B */	li r3, 0x4b
/* 803B4360  4B C5 28 75 */	bl JW_GetAramAddress
/* 803B4364  57 E0 60 26 */	slwi r0, r31, 0xc
/* 803B4368  7F C4 F3 78 */	mr r4, r30
/* 803B436C  7C 63 02 14 */	add r3, r3, r0
/* 803B4370  38 A0 10 00 */	li r5, 0x1000
/* 803B4374  4B C5 29 01 */	bl _JW_GetResourceAram
/* 803B4378  7F A3 EB 78 */	mr r3, r29
/* 803B437C  7F C4 F3 78 */	mr r4, r30
/* 803B4380  38 A0 04 00 */	li r5, 0x400
/* 803B4384  4B FF FD 75 */	bl mISL_int
lbl_803B4388:
/* 803B4388  39 61 00 20 */	addi r11, r1, 0x20
/* 803B438C  4B CE 6B 95 */	bl func_8009AF20
/* 803B4390  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B4394  7C 08 03 A6 */	mtlr r0
/* 803B4398  38 21 00 20 */	addi r1, r1, 0x20
/* 803B439C  4E 80 00 20 */	blr 
