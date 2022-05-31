lbl_805638EC:
/* 805638EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805638F0  7C 08 02 A6 */	mflr r0
/* 805638F4  38 80 00 09 */	li r4, 9
/* 805638F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805638FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563900  93 C1 00 08 */	stw r30, 8(r1)
/* 80563904  7C 7E 1B 78 */	mr r30, r3
/* 80563908  38 60 00 04 */	li r3, 4
/* 8056390C  4B E3 4B 71 */	bl mDemo_Get_OrderValue
/* 80563910  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80563914  4B E5 BD 95 */	bl func_803BF6A8
/* 80563918  2C 1F 00 00 */	cmpwi r31, 0
/* 8056391C  7C 7F 1B 78 */	mr r31, r3
/* 80563920  41 82 00 3C */	beq lbl_8056395C
/* 80563924  4B E5 D3 75 */	bl mMsg_Check_MainNormalContinue
/* 80563928  2C 03 00 01 */	cmpwi r3, 1
/* 8056392C  40 82 00 30 */	bne lbl_8056395C
/* 80563930  38 60 00 04 */	li r3, 4
/* 80563934  38 80 00 09 */	li r4, 9
/* 80563938  38 A0 00 00 */	li r5, 0
/* 8056393C  4B E3 4A FD */	bl mDemo_Set_OrderValue
/* 80563940  38 60 00 47 */	li r3, 0x47
/* 80563944  48 0C A5 C1 */	bl sAdo_SysLevStart
/* 80563948  7F E3 FB 78 */	mr r3, r31
/* 8056394C  4B E5 D3 F5 */	bl mMsg_Set_LockContinue
/* 80563950  7F C3 F3 78 */	mr r3, r30
/* 80563954  48 00 0B 49 */	bl aNNW_change_talk_proc_next
/* 80563958  4B FF D7 E5 */	bl func_8056113C
lbl_8056395C:
/* 8056395C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563960  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563964  83 C1 00 08 */	lwz r30, 8(r1)
/* 80563968  7C 08 03 A6 */	mtlr r0
/* 8056396C  38 21 00 10 */	addi r1, r1, 0x10
/* 80563970  4E 80 00 20 */	blr 
