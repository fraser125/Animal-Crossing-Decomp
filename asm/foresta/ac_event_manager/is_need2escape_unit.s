lbl_8041D494:
/* 8041D494  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041D498  7C 08 02 A6 */	mflr r0
/* 8041D49C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041D4A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8041D4A4  4B C7 DA 2D */	bl func_8009AED0
/* 8041D4A8  7C BE 2B 78 */	mr r30, r5
/* 8041D4AC  7C DF 33 78 */	mr r31, r6
/* 8041D4B0  7C 7C 1B 78 */	mr r28, r3
/* 8041D4B4  7C 9D 23 78 */	mr r29, r4
/* 8041D4B8  7F C3 F3 78 */	mr r3, r30
/* 8041D4BC  7F E4 FB 78 */	mr r4, r31
/* 8041D4C0  4B F8 2C 9D */	bl mEvMN_CheckLapPlayer
/* 8041D4C4  2C 03 00 00 */	cmpwi r3, 0
/* 8041D4C8  41 82 00 0C */	beq lbl_8041D4D4
/* 8041D4CC  38 60 00 01 */	li r3, 1
/* 8041D4D0  48 00 00 44 */	b lbl_8041D514
lbl_8041D4D4:
/* 8041D4D4  7F 83 E3 78 */	mr r3, r28
/* 8041D4D8  7F A4 EB 78 */	mr r4, r29
/* 8041D4DC  7F C5 F3 78 */	mr r5, r30
/* 8041D4E0  7F E6 FB 78 */	mr r6, r31
/* 8041D4E4  4B FF FF 35 */	bl lap_fixed_actor
/* 8041D4E8  2C 03 00 00 */	cmpwi r3, 0
/* 8041D4EC  41 82 00 0C */	beq lbl_8041D4F8
/* 8041D4F0  38 60 00 01 */	li r3, 1
/* 8041D4F4  48 00 00 20 */	b lbl_8041D514
lbl_8041D4F8:
/* 8041D4F8  7F 83 E3 78 */	mr r3, r28
/* 8041D4FC  7F A4 EB 78 */	mr r4, r29
/* 8041D500  7F C5 F3 78 */	mr r5, r30
/* 8041D504  7F E6 FB 78 */	mr r6, r31
/* 8041D508  4B FB 58 9D */	bl mNpc_CheckNpcSet
/* 8041D50C  7C 60 00 34 */	cntlzw r0, r3
/* 8041D510  54 03 D9 7E */	srwi r3, r0, 5
lbl_8041D514:
/* 8041D514  39 61 00 20 */	addi r11, r1, 0x20
/* 8041D518  4B C7 DA 05 */	bl func_8009AF1C
/* 8041D51C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041D520  7C 08 03 A6 */	mtlr r0
/* 8041D524  38 21 00 20 */	addi r1, r1, 0x20
/* 8041D528  4E 80 00 20 */	blr 
