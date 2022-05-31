lbl_80563014:
/* 80563014  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80563018  7C 08 02 A6 */	mflr r0
/* 8056301C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80563020  39 61 00 20 */	addi r11, r1, 0x20
/* 80563024  4B B3 7E B1 */	bl func_8009AED4
/* 80563028  7C 7D 1B 78 */	mr r29, r3
/* 8056302C  7C 9E 23 78 */	mr r30, r4
/* 80563030  38 60 00 04 */	li r3, 4
/* 80563034  38 80 00 09 */	li r4, 9
/* 80563038  4B E3 54 45 */	bl mDemo_Get_OrderValue
/* 8056303C  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80563040  4B E5 C6 69 */	bl func_803BF6A8
/* 80563044  2C 1F 00 00 */	cmpwi r31, 0
/* 80563048  41 82 00 48 */	beq lbl_80563090
/* 8056304C  4B E5 C6 5D */	bl func_803BF6A8
/* 80563050  4B E5 DC 49 */	bl mMsg_Check_MainNormalContinue
/* 80563054  2C 03 00 01 */	cmpwi r3, 1
/* 80563058  40 82 00 38 */	bne lbl_80563090
/* 8056305C  38 60 00 04 */	li r3, 4
/* 80563060  38 80 00 09 */	li r4, 9
/* 80563064  38 A0 00 00 */	li r5, 0
/* 80563068  4B E3 53 D1 */	bl mDemo_Set_OrderValue
/* 8056306C  38 60 00 47 */	li r3, 0x47
/* 80563070  48 0C AE 95 */	bl sAdo_SysLevStart
/* 80563074  4B E5 C6 35 */	bl func_803BF6A8
/* 80563078  4B E5 DC C9 */	bl mMsg_Set_LockContinue
/* 8056307C  7F A3 EB 78 */	mr r3, r29
/* 80563080  48 00 14 1D */	bl aNNW_change_talk_proc_next
/* 80563084  4B FF E0 B9 */	bl func_8056113C
/* 80563088  38 7E 1D EC */	addi r3, r30, 0x1dec
/* 8056308C  4B FF E0 D1 */	bl aNNW_gba_trance_data_init
lbl_80563090:
/* 80563090  39 61 00 20 */	addi r11, r1, 0x20
/* 80563094  4B B3 7E 8D */	bl func_8009AF20
/* 80563098  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056309C  7C 08 03 A6 */	mtlr r0
/* 805630A0  38 21 00 20 */	addi r1, r1, 0x20
/* 805630A4  4E 80 00 20 */	blr 
