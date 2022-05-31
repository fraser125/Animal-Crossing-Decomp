lbl_804296A4:
/* 804296A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804296A8  7C 08 02 A6 */	mflr r0
/* 804296AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804296B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804296B4  7C 7F 1B 78 */	mr r31, r3
/* 804296B8  4B F9 5F F1 */	bl func_803BF6A8
/* 804296BC  4B F9 75 DD */	bl mMsg_Check_MainNormalContinue
/* 804296C0  2C 03 00 00 */	cmpwi r3, 0
/* 804296C4  41 82 00 68 */	beq lbl_8042972C
/* 804296C8  4B F5 9E 79 */	bl func_80383540
/* 804296CC  4B F5 A4 A1 */	bl mChoice_Get_ChoseNum
/* 804296D0  2C 03 00 00 */	cmpwi r3, 0
/* 804296D4  40 82 00 3C */	bne lbl_80429710
/* 804296D8  7F E3 FB 78 */	mr r3, r31
/* 804296DC  38 80 00 01 */	li r4, 1
/* 804296E0  48 00 00 61 */	bl aHN0_change_talk_proc
/* 804296E4  4B F9 5F C5 */	bl func_803BF6A8
/* 804296E8  80 9F 09 98 */	lwz r4, 0x998(r31)
/* 804296EC  38 84 00 01 */	addi r4, r4, 1
/* 804296F0  4B F9 68 D5 */	bl mMsg_Set_continue_msg_num
/* 804296F4  38 60 00 22 */	li r3, 0x22
/* 804296F8  38 00 00 00 */	li r0, 0
/* 804296FC  98 7F 09 A3 */	stb r3, 0x9a3(r31)
/* 80429700  38 60 00 01 */	li r3, 1
/* 80429704  98 1F 09 A9 */	stb r0, 0x9a9(r31)
/* 80429708  4B F6 F0 B1 */	bl mDemo_Set_talk_return_demo_wait
/* 8042970C  48 00 00 20 */	b lbl_8042972C
lbl_80429710:
/* 80429710  7F E3 FB 78 */	mr r3, r31
/* 80429714  38 80 00 00 */	li r4, 0
/* 80429718  48 00 00 29 */	bl aHN0_change_talk_proc
/* 8042971C  4B F9 5F 8D */	bl func_803BF6A8
/* 80429720  80 9F 09 98 */	lwz r4, 0x998(r31)
/* 80429724  38 84 00 02 */	addi r4, r4, 2
/* 80429728  4B F9 68 9D */	bl mMsg_Set_continue_msg_num
lbl_8042972C:
/* 8042972C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80429730  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80429734  7C 08 03 A6 */	mtlr r0
/* 80429738  38 21 00 10 */	addi r1, r1, 0x10
/* 8042973C  4E 80 00 20 */	blr 
