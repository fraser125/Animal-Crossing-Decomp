lbl_805641AC:
/* 805641AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805641B0  7C 08 02 A6 */	mflr r0
/* 805641B4  38 80 00 09 */	li r4, 9
/* 805641B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805641BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805641C0  93 C1 00 08 */	stw r30, 8(r1)
/* 805641C4  7C 7E 1B 78 */	mr r30, r3
/* 805641C8  38 60 00 04 */	li r3, 4
/* 805641CC  4B E3 42 B1 */	bl mDemo_Get_OrderValue
/* 805641D0  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 805641D4  4B E5 B4 D5 */	bl func_803BF6A8
/* 805641D8  2C 1F 00 00 */	cmpwi r31, 0
/* 805641DC  7C 7F 1B 78 */	mr r31, r3
/* 805641E0  41 82 00 3C */	beq lbl_8056421C
/* 805641E4  4B E5 CA B5 */	bl mMsg_Check_MainNormalContinue
/* 805641E8  2C 03 00 01 */	cmpwi r3, 1
/* 805641EC  40 82 00 30 */	bne lbl_8056421C
/* 805641F0  38 60 00 01 */	li r3, 1
/* 805641F4  4B E3 45 C5 */	bl mDemo_Set_talk_return_demo_wait
/* 805641F8  7F E3 FB 78 */	mr r3, r31
/* 805641FC  4B E5 B8 49 */	bl mMsg_request_main_disappear_wait_type1
/* 80564200  7F C3 F3 78 */	mr r3, r30
/* 80564204  38 80 00 0A */	li r4, 0xa
/* 80564208  48 00 02 81 */	bl aNNW_change_talk_proc
/* 8056420C  38 60 00 04 */	li r3, 4
/* 80564210  38 80 00 09 */	li r4, 9
/* 80564214  38 A0 00 00 */	li r5, 0
/* 80564218  4B E3 42 21 */	bl mDemo_Set_OrderValue
lbl_8056421C:
/* 8056421C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80564220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80564224  83 C1 00 08 */	lwz r30, 8(r1)
/* 80564228  7C 08 03 A6 */	mtlr r0
/* 8056422C  38 21 00 10 */	addi r1, r1, 0x10
/* 80564230  4E 80 00 20 */	blr 
