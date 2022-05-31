lbl_803C6B64:
/* 803C6B64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C6B68  7C 08 02 A6 */	mflr r0
/* 803C6B6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C6B70  39 61 00 20 */	addi r11, r1, 0x20
/* 803C6B74  4B CD 43 55 */	bl func_8009AEC8
/* 803C6B78  7C 7A 1B 79 */	or. r26, r3, r3
/* 803C6B7C  7C 9B 23 78 */	mr r27, r4
/* 803C6B80  7C BC 2B 78 */	mr r28, r5
/* 803C6B84  3B E0 00 00 */	li r31, 0
/* 803C6B88  41 82 00 70 */	beq lbl_803C6BF8
/* 803C6B8C  28 1B 00 00 */	cmplwi r27, 0
/* 803C6B90  41 82 00 68 */	beq lbl_803C6BF8
/* 803C6B94  3B C0 00 00 */	li r30, 0
lbl_803C6B98:
/* 803C6B98  3B A0 00 00 */	li r29, 0
lbl_803C6B9C:
/* 803C6B9C  A0 1C 00 00 */	lhz r0, 0(r28)
/* 803C6BA0  7C 00 EE 30 */	sraw r0, r0, r29
/* 803C6BA4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803C6BA8  2C 00 00 01 */	cmpwi r0, 1
/* 803C6BAC  41 82 00 28 */	beq lbl_803C6BD4
/* 803C6BB0  A0 1A 00 00 */	lhz r0, 0(r26)
/* 803C6BB4  28 00 00 00 */	cmplwi r0, 0
/* 803C6BB8  40 82 00 1C */	bne lbl_803C6BD4
/* 803C6BBC  88 1B 00 03 */	lbz r0, 3(r27)
/* 803C6BC0  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 803C6BC4  4B FC 98 55 */	bl mCoBG_CheckHole_OrgAttr
/* 803C6BC8  2C 03 00 00 */	cmpwi r3, 0
/* 803C6BCC  41 82 00 08 */	beq lbl_803C6BD4
/* 803C6BD0  3B FF 00 01 */	addi r31, r31, 1
lbl_803C6BD4:
/* 803C6BD4  3B BD 00 01 */	addi r29, r29, 1
/* 803C6BD8  3B 7B 00 04 */	addi r27, r27, 4
/* 803C6BDC  2C 1D 00 10 */	cmpwi r29, 0x10
/* 803C6BE0  3B 5A 00 02 */	addi r26, r26, 2
/* 803C6BE4  41 80 FF B8 */	blt lbl_803C6B9C
/* 803C6BE8  3B DE 00 01 */	addi r30, r30, 1
/* 803C6BEC  3B 9C 00 02 */	addi r28, r28, 2
/* 803C6BF0  2C 1E 00 10 */	cmpwi r30, 0x10
/* 803C6BF4  41 80 FF A4 */	blt lbl_803C6B98
lbl_803C6BF8:
/* 803C6BF8  7F E3 FB 78 */	mr r3, r31
/* 803C6BFC  39 61 00 20 */	addi r11, r1, 0x20
/* 803C6C00  4B CD 43 15 */	bl func_8009AF14
/* 803C6C04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C6C08  7C 08 03 A6 */	mtlr r0
/* 803C6C0C  38 21 00 20 */	addi r1, r1, 0x20
/* 803C6C10  4E 80 00 20 */	blr 
