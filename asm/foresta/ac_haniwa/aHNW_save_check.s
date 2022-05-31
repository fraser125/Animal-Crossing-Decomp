lbl_80428430:
/* 80428430  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80428434  7C 08 02 A6 */	mflr r0
/* 80428438  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042843C  39 61 00 20 */	addi r11, r1, 0x20
/* 80428440  4B C7 2A 91 */	bl func_8009AED0
/* 80428444  7C 7C 1B 78 */	mr r28, r3
/* 80428448  7C 9D 23 78 */	mr r29, r4
/* 8042844C  4B F9 72 5D */	bl func_803BF6A8
/* 80428450  7C 60 1B 78 */	mr r0, r3
/* 80428454  38 60 00 04 */	li r3, 4
/* 80428458  7C 1F 03 78 */	mr r31, r0
/* 8042845C  38 80 00 09 */	li r4, 9
/* 80428460  4B F7 00 1D */	bl mDemo_Get_OrderValue
/* 80428464  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80428468  3B C0 FF FF */	li r30, -1
/* 8042846C  41 82 00 80 */	beq lbl_804284EC
/* 80428470  7F E3 FB 78 */	mr r3, r31
/* 80428474  4B F9 88 25 */	bl mMsg_Check_MainNormalContinue
/* 80428478  2C 03 00 01 */	cmpwi r3, 1
/* 8042847C  40 82 00 70 */	bne lbl_804284EC
/* 80428480  4B F5 B0 C1 */	bl func_80383540
/* 80428484  4B F5 B6 E9 */	bl mChoice_Get_ChoseNum
/* 80428488  2C 03 00 01 */	cmpwi r3, 1
/* 8042848C  41 82 00 34 */	beq lbl_804284C0
/* 80428490  40 80 00 34 */	bge lbl_804284C4
/* 80428494  2C 03 00 00 */	cmpwi r3, 0
/* 80428498  40 80 00 08 */	bge lbl_804284A0
/* 8042849C  48 00 00 28 */	b lbl_804284C4
lbl_804284A0:
/* 804284A0  3B C0 00 0D */	li r30, 0xd
/* 804284A4  38 60 00 0D */	li r3, 0xd
/* 804284A8  4B F5 43 79 */	bl mBGMPsComp_scene_mode
/* 804284AC  38 60 00 01 */	li r3, 1
/* 804284B0  4B F7 03 09 */	bl mDemo_Set_talk_return_demo_wait
/* 804284B4  7F 83 E3 78 */	mr r3, r28
/* 804284B8  4B FB 1B 0D */	bl mPlib_Set_able_force_speak_label
/* 804284BC  48 00 00 08 */	b lbl_804284C4
lbl_804284C0:
/* 804284C0  3B C0 00 03 */	li r30, 3
lbl_804284C4:
/* 804284C4  2C 1E FF FF */	cmpwi r30, -1
/* 804284C8  41 82 00 24 */	beq lbl_804284EC
/* 804284CC  38 60 00 04 */	li r3, 4
/* 804284D0  38 80 00 09 */	li r4, 9
/* 804284D4  38 A0 00 00 */	li r5, 0
/* 804284D8  4B F6 FF 61 */	bl mDemo_Set_OrderValue
/* 804284DC  7F 83 E3 78 */	mr r3, r28
/* 804284E0  7F A4 EB 78 */	mr r4, r29
/* 804284E4  7F C5 F3 78 */	mr r5, r30
/* 804284E8  48 00 05 6D */	bl aHNW_setupAction
lbl_804284EC:
/* 804284EC  39 61 00 20 */	addi r11, r1, 0x20
/* 804284F0  4B C7 2A 2D */	bl func_8009AF1C
/* 804284F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804284F8  7C 08 03 A6 */	mtlr r0
/* 804284FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80428500  4E 80 00 20 */	blr 
