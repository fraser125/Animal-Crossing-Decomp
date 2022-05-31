lbl_80560084:
/* 80560084  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80560088  7C 08 02 A6 */	mflr r0
/* 8056008C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80560090  39 61 00 20 */	addi r11, r1, 0x20
/* 80560094  4B B3 AE 41 */	bl func_8009AED4
/* 80560098  7C 7D 1B 78 */	mr r29, r3
/* 8056009C  7C 9E 23 78 */	mr r30, r4
/* 805600A0  4B E5 F6 09 */	bl func_803BF6A8
/* 805600A4  7C 60 1B 78 */	mr r0, r3
/* 805600A8  38 60 00 04 */	li r3, 4
/* 805600AC  7C 1F 03 78 */	mr r31, r0
/* 805600B0  38 80 00 09 */	li r4, 9
/* 805600B4  4B E3 83 C9 */	bl mDemo_Get_OrderValue
/* 805600B8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 805600BC  41 82 00 40 */	beq lbl_805600FC
/* 805600C0  7F E3 FB 78 */	mr r3, r31
/* 805600C4  4B E6 0B D5 */	bl mMsg_Check_MainNormalContinue
/* 805600C8  2C 03 00 01 */	cmpwi r3, 1
/* 805600CC  40 82 00 30 */	bne lbl_805600FC
/* 805600D0  38 60 00 04 */	li r3, 4
/* 805600D4  38 80 00 09 */	li r4, 9
/* 805600D8  38 A0 00 00 */	li r5, 0
/* 805600DC  4B E3 83 5D */	bl mDemo_Set_OrderValue
/* 805600E0  7F E3 FB 78 */	mr r3, r31
/* 805600E4  4B E6 0C 5D */	bl mMsg_Set_LockContinue
/* 805600E8  80 BD 09 94 */	lwz r5, 0x994(r29)
/* 805600EC  7F A3 EB 78 */	mr r3, r29
/* 805600F0  7F C4 F3 78 */	mr r4, r30
/* 805600F4  38 A5 00 01 */	addi r5, r5, 1
/* 805600F8  48 00 0C F9 */	bl aNM2_setupAction
lbl_805600FC:
/* 805600FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80560100  4B B3 AE 21 */	bl func_8009AF20
/* 80560104  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80560108  7C 08 03 A6 */	mtlr r0
/* 8056010C  38 21 00 20 */	addi r1, r1, 0x20
/* 80560110  4E 80 00 20 */	blr 
