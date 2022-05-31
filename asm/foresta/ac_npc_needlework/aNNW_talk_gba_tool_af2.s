lbl_805632B8:
/* 805632B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805632BC  7C 08 02 A6 */	mflr r0
/* 805632C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805632C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805632C8  93 C1 00 08 */	stw r30, 8(r1)
/* 805632CC  7C 7E 1B 78 */	mr r30, r3
/* 805632D0  4B E5 C3 D9 */	bl func_803BF6A8
/* 805632D4  7C 60 1B 78 */	mr r0, r3
/* 805632D8  38 7E 09 BC */	addi r3, r30, 0x9bc
/* 805632DC  7C 1F 03 78 */	mr r31, r0
/* 805632E0  4B FF E0 E1 */	bl aNNW_SendPrg
/* 805632E4  2C 03 00 00 */	cmpwi r3, 0
/* 805632E8  41 82 00 58 */	beq lbl_80563340
/* 805632EC  40 80 00 10 */	bge lbl_805632FC
/* 805632F0  2C 03 FF FF */	cmpwi r3, -1
/* 805632F4  40 80 00 20 */	bge lbl_80563314
/* 805632F8  48 00 00 48 */	b lbl_80563340
lbl_805632FC:
/* 805632FC  2C 03 00 02 */	cmpwi r3, 2
/* 80563300  40 80 00 40 */	bge lbl_80563340
/* 80563304  7F C3 F3 78 */	mr r3, r30
/* 80563308  38 80 00 27 */	li r4, 0x27
/* 8056330C  48 00 11 7D */	bl aNNW_change_talk_proc
/* 80563310  48 00 00 30 */	b lbl_80563340
lbl_80563314:
/* 80563314  38 60 00 47 */	li r3, 0x47
/* 80563318  48 0C AC 0D */	bl sAdo_SysLevStop
/* 8056331C  4B E5 C3 8D */	bl func_803BF6A8
/* 80563320  4B E5 DA 2D */	bl mMsg_Unset_LockContinue
/* 80563324  7F E3 FB 78 */	mr r3, r31
/* 80563328  38 80 30 0A */	li r4, 0x300a
/* 8056332C  4B E5 CC 99 */	bl mMsg_Set_continue_msg_num
/* 80563330  7F C3 F3 78 */	mr r3, r30
/* 80563334  38 80 00 01 */	li r4, 1
/* 80563338  48 00 11 51 */	bl aNNW_change_talk_proc
/* 8056333C  4B AE 64 B1 */	bl mGcgba_EndComm
lbl_80563340:
/* 80563340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563348  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056334C  7C 08 03 A6 */	mtlr r0
/* 80563350  38 21 00 10 */	addi r1, r1, 0x10
/* 80563354  4E 80 00 20 */	blr 
