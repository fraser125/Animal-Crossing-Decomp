lbl_804DBE80:
/* 804DBE80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804DBE84  7C 08 02 A6 */	mflr r0
/* 804DBE88  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DBE8C  39 61 00 30 */	addi r11, r1, 0x30
/* 804DBE90  4B BB F0 41 */	bl func_8009AED0
/* 804DBE94  7C DE 33 78 */	mr r30, r6
/* 804DBE98  7C 9C 23 78 */	mr r28, r4
/* 804DBE9C  7C BD 2B 78 */	mr r29, r5
/* 804DBEA0  7F C4 F3 78 */	mr r4, r30
/* 804DBEA4  4B FF F9 BD */	bl Player_actor_Get_shake_tree_position_and_itemNo
/* 804DBEA8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 804DBEAC  7C 7F 1B 78 */	mr r31, r3
/* 804DBEB0  41 82 00 3C */	beq lbl_804DBEEC
/* 804DBEB4  80 DE 00 00 */	lwz r6, 0(r30)
/* 804DBEB8  7F 83 E3 78 */	mr r3, r28
/* 804DBEBC  80 1E 00 04 */	lwz r0, 4(r30)
/* 804DBEC0  7F A4 EB 78 */	mr r4, r29
/* 804DBEC4  38 A1 00 08 */	addi r5, r1, 8
/* 804DBEC8  90 C1 00 08 */	stw r6, 8(r1)
/* 804DBECC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DBED0  80 1E 00 08 */	lwz r0, 8(r30)
/* 804DBED4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DBED8  4B EC 94 91 */	bl mFI_Wpos2UtNum
/* 804DBEDC  2C 03 00 00 */	cmpwi r3, 0
/* 804DBEE0  41 82 00 0C */	beq lbl_804DBEEC
/* 804DBEE4  7F E3 FB 78 */	mr r3, r31
/* 804DBEE8  48 00 00 14 */	b lbl_804DBEFC
lbl_804DBEEC:
/* 804DBEEC  38 00 FF FF */	li r0, -1
/* 804DBEF0  38 60 00 00 */	li r3, 0
/* 804DBEF4  90 1C 00 00 */	stw r0, 0(r28)
/* 804DBEF8  90 1D 00 00 */	stw r0, 0(r29)
lbl_804DBEFC:
/* 804DBEFC  39 61 00 30 */	addi r11, r1, 0x30
/* 804DBF00  4B BB F0 1D */	bl func_8009AF1C
/* 804DBF04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DBF08  7C 08 03 A6 */	mtlr r0
/* 804DBF0C  38 21 00 30 */	addi r1, r1, 0x30
/* 804DBF10  4E 80 00 20 */	blr 
