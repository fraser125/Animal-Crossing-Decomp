lbl_80563418:
/* 80563418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056341C  7C 08 02 A6 */	mflr r0
/* 80563420  38 80 00 09 */	li r4, 9
/* 80563424  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056342C  93 C1 00 08 */	stw r30, 8(r1)
/* 80563430  7C 7E 1B 78 */	mr r30, r3
/* 80563434  38 60 00 04 */	li r3, 4
/* 80563438  4B E3 50 45 */	bl mDemo_Get_OrderValue
/* 8056343C  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80563440  4B E5 C2 69 */	bl func_803BF6A8
/* 80563444  2C 1F 00 00 */	cmpwi r31, 0
/* 80563448  41 82 00 44 */	beq lbl_8056348C
/* 8056344C  4B E5 C2 5D */	bl func_803BF6A8
/* 80563450  4B E5 D8 49 */	bl mMsg_Check_MainNormalContinue
/* 80563454  2C 03 00 01 */	cmpwi r3, 1
/* 80563458  40 82 00 34 */	bne lbl_8056348C
/* 8056345C  38 60 00 04 */	li r3, 4
/* 80563460  38 80 00 09 */	li r4, 9
/* 80563464  38 A0 00 00 */	li r5, 0
/* 80563468  4B E3 4F D1 */	bl mDemo_Set_OrderValue
/* 8056346C  38 60 00 47 */	li r3, 0x47
/* 80563470  48 0C AA 95 */	bl sAdo_SysLevStart
/* 80563474  4B E5 C2 35 */	bl func_803BF6A8
/* 80563478  4B E5 D8 C9 */	bl mMsg_Set_LockContinue
/* 8056347C  7F C3 F3 78 */	mr r3, r30
/* 80563480  48 00 10 1D */	bl aNNW_change_talk_proc_next
/* 80563484  4B FF DC B9 */	bl func_8056113C
/* 80563488  4B FF DD 71 */	bl aNNW_gba_trance_data_clear
lbl_8056348C:
/* 8056348C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563494  83 C1 00 08 */	lwz r30, 8(r1)
/* 80563498  7C 08 03 A6 */	mtlr r0
/* 8056349C  38 21 00 10 */	addi r1, r1, 0x10
/* 805634A0  4E 80 00 20 */	blr 
