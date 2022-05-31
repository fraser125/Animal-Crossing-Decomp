lbl_803AD4B4:
/* 803AD4B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AD4B8  7C 08 02 A6 */	mflr r0
/* 803AD4BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AD4C0  39 61 00 20 */	addi r11, r1, 0x20
/* 803AD4C4  4B CE DA 11 */	bl func_8009AED4
/* 803AD4C8  7C 7D 1B 78 */	mr r29, r3
/* 803AD4CC  7C 9E 23 78 */	mr r30, r4
/* 803AD4D0  38 7D 00 14 */	addi r3, r29, 0x14
/* 803AD4D4  4B FF F7 AD */	bl sChk_OSRTCTime_sub
/* 803AD4D8  7C 7F 1B 78 */	mr r31, r3
/* 803AD4DC  38 7D 00 32 */	addi r3, r29, 0x32
/* 803AD4E0  38 9E 00 01 */	addi r4, r30, 1
/* 803AD4E4  4B FF FF 65 */	bl sChk_Anmplmail_c_sub
/* 803AD4E8  7F FF 1B 78 */	or r31, r31, r3
/* 803AD4EC  39 61 00 20 */	addi r11, r1, 0x20
/* 803AD4F0  7F E3 FB 78 */	mr r3, r31
/* 803AD4F4  4B CE DA 2D */	bl func_8009AF20
/* 803AD4F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AD4FC  7C 08 03 A6 */	mtlr r0
/* 803AD500  38 21 00 20 */	addi r1, r1, 0x20
/* 803AD504  4E 80 00 20 */	blr 
