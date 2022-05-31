lbl_803AD0C0:
/* 803AD0C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AD0C4  7C 08 02 A6 */	mflr r0
/* 803AD0C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AD0CC  39 61 00 20 */	addi r11, r1, 0x20
/* 803AD0D0  4B CE DE 05 */	bl func_8009AED4
/* 803AD0D4  7C 9E 23 78 */	mr r30, r4
/* 803AD0D8  7C 7D 1B 78 */	mr r29, r3
/* 803AD0DC  38 9E 00 01 */	addi r4, r30, 1
/* 803AD0E0  4B FF FE 15 */	bl sChk_Mail_hdr_c_sub
/* 803AD0E4  7C 7F 1B 78 */	mr r31, r3
/* 803AD0E8  A0 7D 00 2C */	lhz r3, 0x2c(r29)
/* 803AD0EC  4B FF FA 69 */	bl sChk_ItemFG_sub
/* 803AD0F0  7F FF 1B 78 */	or r31, r31, r3
/* 803AD0F4  38 7D 00 2E */	addi r3, r29, 0x2e
/* 803AD0F8  38 9E 00 01 */	addi r4, r30, 1
/* 803AD0FC  4B FF FF 45 */	bl sChk_Mail_ct_c_sub
/* 803AD100  7F FF 1B 78 */	or r31, r31, r3
/* 803AD104  39 61 00 20 */	addi r11, r1, 0x20
/* 803AD108  7F E3 FB 78 */	mr r3, r31
/* 803AD10C  4B CE DE 15 */	bl func_8009AF20
/* 803AD110  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AD114  7C 08 03 A6 */	mtlr r0
/* 803AD118  38 21 00 20 */	addi r1, r1, 0x20
/* 803AD11C  4E 80 00 20 */	blr 
