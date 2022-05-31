lbl_803ED434:
/* 803ED434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ED438  7C 08 02 A6 */	mflr r0
/* 803ED43C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ED440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ED444  93 C1 00 08 */	stw r30, 8(r1)
/* 803ED448  7C 7E 1B 78 */	mr r30, r3
/* 803ED44C  4B FD 22 5D */	bl func_803BF6A8
/* 803ED450  7C 7F 1B 78 */	mr r31, r3
/* 803ED454  4B FD 38 45 */	bl mMsg_Check_MainNormalContinue
/* 803ED458  2C 03 00 00 */	cmpwi r3, 0
/* 803ED45C  41 82 00 6C */	beq lbl_803ED4C8
/* 803ED460  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803ED464  38 80 00 00 */	li r4, 0
/* 803ED468  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803ED46C  38 A0 00 00 */	li r5, 0
/* 803ED470  3C 63 00 02 */	addis r3, r3, 2
/* 803ED474  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803ED478  4B FF 35 55 */	bl mPr_GetPossessionItemSumWithCond
/* 803ED47C  28 03 00 00 */	cmplwi r3, 0
/* 803ED480  40 82 00 28 */	bne lbl_803ED4A8
/* 803ED484  7F C3 F3 78 */	mr r3, r30
/* 803ED488  38 80 00 02 */	li r4, 2
/* 803ED48C  4B FF F5 DD */	bl mSC_Radio_msg
/* 803ED490  7C 64 1B 78 */	mr r4, r3
/* 803ED494  7F E3 FB 78 */	mr r3, r31
/* 803ED498  4B FD 2B 2D */	bl mMsg_Set_continue_msg_num
/* 803ED49C  38 00 00 09 */	li r0, 9
/* 803ED4A0  98 1E 09 B2 */	stb r0, 0x9b2(r30)
/* 803ED4A4  48 00 00 24 */	b lbl_803ED4C8
lbl_803ED4A8:
/* 803ED4A8  7F C3 F3 78 */	mr r3, r30
/* 803ED4AC  38 80 00 03 */	li r4, 3
/* 803ED4B0  4B FF F5 B9 */	bl mSC_Radio_msg
/* 803ED4B4  7C 64 1B 78 */	mr r4, r3
/* 803ED4B8  7F E3 FB 78 */	mr r3, r31
/* 803ED4BC  4B FD 2B 09 */	bl mMsg_Set_continue_msg_num
/* 803ED4C0  38 00 00 05 */	li r0, 5
/* 803ED4C4  98 1E 09 B2 */	stb r0, 0x9b2(r30)
lbl_803ED4C8:
/* 803ED4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ED4CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ED4D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803ED4D4  7C 08 03 A6 */	mtlr r0
/* 803ED4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803ED4DC  4E 80 00 20 */	blr 
