lbl_8052F43C:
/* 8052F43C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8052F440  7C 08 02 A6 */	mflr r0
/* 8052F444  90 01 00 44 */	stw r0, 0x44(r1)
/* 8052F448  39 61 00 40 */	addi r11, r1, 0x40
/* 8052F44C  4B B6 BA 7D */	bl func_8009AEC8
/* 8052F450  83 E3 1D CC */	lwz r31, 0x1dcc(r3)
/* 8052F454  7C 9A 23 78 */	mr r26, r4
/* 8052F458  83 C3 1D D0 */	lwz r30, 0x1dd0(r3)
/* 8052F45C  7C BB 2B 78 */	mr r27, r5
/* 8052F460  7C DC 33 78 */	mr r28, r6
/* 8052F464  3B A0 00 00 */	li r29, 0
/* 8052F468  48 00 00 70 */	b lbl_8052F4D8
lbl_8052F46C:
/* 8052F46C  7C 1E D0 40 */	cmplw r30, r26
/* 8052F470  41 82 00 60 */	beq lbl_8052F4D0
/* 8052F474  80 DE 00 28 */	lwz r6, 0x28(r30)
/* 8052F478  38 61 00 0C */	addi r3, r1, 0xc
/* 8052F47C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8052F480  38 81 00 08 */	addi r4, r1, 8
/* 8052F484  38 A1 00 10 */	addi r5, r1, 0x10
/* 8052F488  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8052F48C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052F490  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8052F494  90 01 00 18 */	stw r0, 0x18(r1)
/* 8052F498  4B E7 5E D1 */	bl mFI_Wpos2UtNum
/* 8052F49C  2C 03 00 01 */	cmpwi r3, 1
/* 8052F4A0  40 82 00 30 */	bne lbl_8052F4D0
/* 8052F4A4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8052F4A8  7C 00 D8 00 */	cmpw r0, r27
/* 8052F4AC  40 82 00 24 */	bne lbl_8052F4D0
/* 8052F4B0  80 61 00 08 */	lwz r3, 8(r1)
/* 8052F4B4  7C 03 E0 00 */	cmpw r3, r28
/* 8052F4B8  41 82 00 10 */	beq lbl_8052F4C8
/* 8052F4BC  38 1C 00 01 */	addi r0, r28, 1
/* 8052F4C0  7C 03 00 00 */	cmpw r3, r0
/* 8052F4C4  40 82 00 0C */	bne lbl_8052F4D0
lbl_8052F4C8:
/* 8052F4C8  3B A0 00 01 */	li r29, 1
/* 8052F4CC  48 00 00 14 */	b lbl_8052F4E0
lbl_8052F4D0:
/* 8052F4D0  83 DE 01 58 */	lwz r30, 0x158(r30)
/* 8052F4D4  3B FF FF FF */	addi r31, r31, -1
lbl_8052F4D8:
/* 8052F4D8  2C 1F 00 00 */	cmpwi r31, 0
/* 8052F4DC  40 82 FF 90 */	bne lbl_8052F46C
lbl_8052F4E0:
/* 8052F4E0  7F A3 EB 78 */	mr r3, r29
/* 8052F4E4  39 61 00 40 */	addi r11, r1, 0x40
/* 8052F4E8  4B B6 BA 2D */	bl func_8009AF14
/* 8052F4EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052F4F0  7C 08 03 A6 */	mtlr r0
/* 8052F4F4  38 21 00 40 */	addi r1, r1, 0x40
/* 8052F4F8  4E 80 00 20 */	blr 
