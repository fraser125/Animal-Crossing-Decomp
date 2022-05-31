lbl_803D790C:
/* 803D790C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D7910  7C 08 02 A6 */	mflr r0
/* 803D7914  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D7918  39 61 00 20 */	addi r11, r1, 0x20
/* 803D791C  4B CC 35 B5 */	bl func_8009AED0
/* 803D7920  7C 7C 1B 78 */	mr r28, r3
/* 803D7924  7C 9D 23 78 */	mr r29, r4
/* 803D7928  3B E0 FF FF */	li r31, -1
/* 803D792C  3B C0 00 00 */	li r30, 0
/* 803D7930  48 00 00 24 */	b lbl_803D7954
lbl_803D7934:
/* 803D7934  7F 83 E3 78 */	mr r3, r28
/* 803D7938  4B FF FF A1 */	bl mNpcW_CheckFreeNpcWalkInfo
/* 803D793C  2C 03 00 01 */	cmpwi r3, 1
/* 803D7940  40 82 00 0C */	bne lbl_803D794C
/* 803D7944  7F DF F3 78 */	mr r31, r30
/* 803D7948  48 00 00 14 */	b lbl_803D795C
lbl_803D794C:
/* 803D794C  3B 9C 00 1C */	addi r28, r28, 0x1c
/* 803D7950  3B DE 00 01 */	addi r30, r30, 1
lbl_803D7954:
/* 803D7954  7C 1E E8 00 */	cmpw r30, r29
/* 803D7958  41 80 FF DC */	blt lbl_803D7934
lbl_803D795C:
/* 803D795C  7F E3 FB 78 */	mr r3, r31
/* 803D7960  39 61 00 20 */	addi r11, r1, 0x20
/* 803D7964  4B CC 35 B9 */	bl func_8009AF1C
/* 803D7968  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D796C  7C 08 03 A6 */	mtlr r0
/* 803D7970  38 21 00 20 */	addi r1, r1, 0x20
/* 803D7974  4E 80 00 20 */	blr 
