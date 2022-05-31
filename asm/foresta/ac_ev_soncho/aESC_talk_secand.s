lbl_805243DC:
/* 805243DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805243E0  7C 08 02 A6 */	mflr r0
/* 805243E4  38 80 00 09 */	li r4, 9
/* 805243E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805243EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805243F0  7C 7F 1B 78 */	mr r31, r3
/* 805243F4  38 60 00 04 */	li r3, 4
/* 805243F8  4B E7 40 85 */	bl mDemo_Get_OrderValue
/* 805243FC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80524400  2C 00 00 01 */	cmpwi r0, 1
/* 80524404  40 82 00 34 */	bne lbl_80524438
/* 80524408  4B E9 B2 A1 */	bl func_803BF6A8
/* 8052440C  4B E9 C8 8D */	bl mMsg_Check_MainNormalContinue
/* 80524410  2C 03 00 00 */	cmpwi r3, 0
/* 80524414  41 82 00 24 */	beq lbl_80524438
/* 80524418  38 60 00 04 */	li r3, 4
/* 8052441C  38 80 00 09 */	li r4, 9
/* 80524420  38 A0 00 00 */	li r5, 0
/* 80524424  4B E7 40 15 */	bl mDemo_Set_OrderValue
/* 80524428  7F E3 FB 78 */	mr r3, r31
/* 8052442C  38 80 00 00 */	li r4, 0
/* 80524430  4B FF FE 75 */	bl aEGH_change_talk_proc
/* 80524434  4B FF FD 65 */	bl aESC_owari_message
lbl_80524438:
/* 80524438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052443C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80524440  7C 08 03 A6 */	mtlr r0
/* 80524444  38 21 00 10 */	addi r1, r1, 0x10
/* 80524448  4E 80 00 20 */	blr 
