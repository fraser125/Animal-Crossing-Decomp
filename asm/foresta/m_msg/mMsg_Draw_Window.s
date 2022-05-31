lbl_803BF424:
/* 803BF424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF428  7C 08 02 A6 */	mflr r0
/* 803BF42C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF430  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BF434  7C 9F 23 78 */	mr r31, r4
/* 803BF438  93 C1 00 08 */	stw r30, 8(r1)
/* 803BF43C  7C 7E 1B 78 */	mr r30, r3
/* 803BF440  80 03 04 38 */	lwz r0, 0x438(r3)
/* 803BF444  2C 00 00 00 */	cmpwi r0, 0
/* 803BF448  41 82 00 78 */	beq lbl_803BF4C0
/* 803BF44C  80 1E 00 00 */	lwz r0, 0(r30)
/* 803BF450  2C 00 00 00 */	cmpwi r0, 0
/* 803BF454  41 82 00 6C */	beq lbl_803BF4C0
/* 803BF458  80 7F 00 00 */	lwz r3, 0(r31)
/* 803BF45C  38 80 00 01 */	li r4, 1
/* 803BF460  4B FF 0C D9 */	bl mFont_SetMatrix
/* 803BF464  7F C3 F3 78 */	mr r3, r30
/* 803BF468  7F E4 FB 78 */	mr r4, r31
/* 803BF46C  38 A0 00 01 */	li r5, 1
/* 803BF470  48 00 65 A5 */	bl func_803C5A14
/* 803BF474  7F C3 F3 78 */	mr r3, r30
/* 803BF478  7F E4 FB 78 */	mr r4, r31
/* 803BF47C  38 A0 00 01 */	li r5, 1
/* 803BF480  48 00 68 99 */	bl mMsg_DrawWindowBody
/* 803BF484  48 00 66 AD */	bl mMsg_UnSetMatrix
/* 803BF488  80 7F 00 00 */	lwz r3, 0(r31)
/* 803BF48C  38 80 00 01 */	li r4, 1
/* 803BF490  4B FF 0D A9 */	bl mFont_UnSetMatrix
/* 803BF494  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 803BF498  80 03 00 00 */	lwz r0, 0(r3)
/* 803BF49C  2C 00 00 00 */	cmpwi r0, 0
/* 803BF4A0  41 82 00 10 */	beq lbl_803BF4B0
/* 803BF4A4  7F C3 F3 78 */	mr r3, r30
/* 803BF4A8  7F E4 FB 78 */	mr r4, r31
/* 803BF4AC  48 00 6A 05 */	bl mMsg_draw_font
lbl_803BF4B0:
/* 803BF4B0  7F E4 FB 78 */	mr r4, r31
/* 803BF4B4  38 7E 02 E8 */	addi r3, r30, 0x2e8
/* 803BF4B8  38 A0 00 01 */	li r5, 1
/* 803BF4BC  4B FC 3F 55 */	bl mChoice_Draw
lbl_803BF4C0:
/* 803BF4C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF4C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BF4C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BF4CC  7C 08 03 A6 */	mtlr r0
/* 803BF4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF4D4  4E 80 00 20 */	blr 
