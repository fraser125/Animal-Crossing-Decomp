lbl_80491A2C:
/* 80491A2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80491A30  7C 08 02 A6 */	mflr r0
/* 80491A34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80491A38  39 61 00 20 */	addi r11, r1, 0x20
/* 80491A3C  4B C0 94 99 */	bl func_8009AED4
/* 80491A40  7C 9E 23 78 */	mr r30, r4
/* 80491A44  7C 7D 1B 78 */	mr r29, r3
/* 80491A48  7F C3 F3 78 */	mr r3, r30
/* 80491A4C  3B E0 00 00 */	li r31, 0
/* 80491A50  4B F3 9E 21 */	bl mNpc_CheckFreeAnimalMemory
/* 80491A54  2C 03 00 00 */	cmpwi r3, 0
/* 80491A58  40 82 00 1C */	bne lbl_80491A74
/* 80491A5C  7F A3 EB 78 */	mr r3, r29
/* 80491A60  7F C4 F3 78 */	mr r4, r30
/* 80491A64  4B F4 E6 E1 */	bl mPr_CheckCmpPersonalID
/* 80491A68  2C 03 00 00 */	cmpwi r3, 0
/* 80491A6C  40 82 00 08 */	bne lbl_80491A74
/* 80491A70  3B E0 00 01 */	li r31, 1
lbl_80491A74:
/* 80491A74  7F E3 FB 78 */	mr r3, r31
/* 80491A78  39 61 00 20 */	addi r11, r1, 0x20
/* 80491A7C  4B C0 94 A5 */	bl func_8009AF20
/* 80491A80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80491A84  7C 08 03 A6 */	mtlr r0
/* 80491A88  38 21 00 20 */	addi r1, r1, 0x20
/* 80491A8C  4E 80 00 20 */	blr 
