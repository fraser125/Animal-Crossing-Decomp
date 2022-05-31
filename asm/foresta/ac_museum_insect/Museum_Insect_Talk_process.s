lbl_8045A758:
/* 8045A758  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045A75C  7C 08 02 A6 */	mflr r0
/* 8045A760  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045A764  39 61 00 20 */	addi r11, r1, 0x20
/* 8045A768  4B C4 07 69 */	bl func_8009AED0
/* 8045A76C  7C 7F 1B 78 */	mr r31, r3
/* 8045A770  7C 9C 23 78 */	mr r28, r4
/* 8045A774  7F E4 FB 78 */	mr r4, r31
/* 8045A778  38 60 00 08 */	li r3, 8
/* 8045A77C  4B F3 FA E9 */	bl mDemo_Check
/* 8045A780  2C 03 00 00 */	cmpwi r3, 0
/* 8045A784  41 82 00 D4 */	beq lbl_8045A858
/* 8045A788  7F 83 E3 78 */	mr r3, r28
/* 8045A78C  4B F7 EE B5 */	bl get_player_actor_withoutCheck
/* 8045A790  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 8045A794  3C 80 80 64 */	lis r4, lit_677@ha /* 0x80644650@ha */
/* 8045A798  38 C4 46 50 */	addi r6, r4, lit_677@l /* 0x80644650@l */
/* 8045A79C  38 80 80 00 */	li r4, -32768
/* 8045A7A0  90 01 00 08 */	stw r0, 8(r1)
/* 8045A7A4  38 A0 10 00 */	li r5, 0x1000
/* 8045A7A8  C0 26 00 00 */	lfs f1, 0(r6)
/* 8045A7AC  38 C0 00 00 */	li r6, 0
/* 8045A7B0  A0 03 00 E0 */	lhz r0, 0xe0(r3)
/* 8045A7B4  38 61 00 0A */	addi r3, r1, 0xa
/* 8045A7B8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8045A7BC  4B F6 0B 55 */	bl add_calc_short_angle2
/* 8045A7C0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8045A7C4  83 C3 52 F0 */	lwz r30, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 8045A7C8  7F C3 F3 78 */	mr r3, r30
/* 8045A7CC  4B F7 EE 75 */	bl get_player_actor_withoutCheck
/* 8045A7D0  81 83 13 10 */	lwz r12, 0x1310(r3)
/* 8045A7D4  7F C3 F3 78 */	mr r3, r30
/* 8045A7D8  38 A1 00 08 */	addi r5, r1, 8
/* 8045A7DC  38 80 00 00 */	li r4, 0
/* 8045A7E0  38 C0 00 20 */	li r6, 0x20
/* 8045A7E4  7D 89 03 A6 */	mtctr r12
/* 8045A7E8  4E 80 04 21 */	bctrl 
/* 8045A7EC  4B F6 4E BD */	bl func_803BF6A8
/* 8045A7F0  4B F6 64 A9 */	bl mMsg_Check_MainNormalContinue
/* 8045A7F4  2C 03 00 00 */	cmpwi r3, 0
/* 8045A7F8  41 82 00 C8 */	beq lbl_8045A8C0
/* 8045A7FC  4B F2 8D 45 */	bl func_80383540
/* 8045A800  4B F2 93 6D */	bl mChoice_Get_ChoseNum
/* 8045A804  2C 03 FF FF */	cmpwi r3, -1
/* 8045A808  41 82 00 B8 */	beq lbl_8045A8C0
/* 8045A80C  2C 03 00 00 */	cmpwi r3, 0
/* 8045A810  40 82 00 34 */	bne lbl_8045A844
/* 8045A814  7F E3 FB 78 */	mr r3, r31
/* 8045A818  4B FF FC 21 */	bl func_8045A438
/* 8045A81C  80 9F 2F 7C */	lwz r4, 0x2f7c(r31)
/* 8045A820  7C 7E 1B 78 */	mr r30, r3
/* 8045A824  38 04 00 01 */	addi r0, r4, 1
/* 8045A828  90 1F 2F 7C */	stw r0, 0x2f7c(r31)
/* 8045A82C  4B F6 4E 7D */	bl func_803BF6A8
/* 8045A830  7F C4 F3 78 */	mr r4, r30
/* 8045A834  4B F6 57 91 */	bl mMsg_Set_continue_msg_num
/* 8045A838  4B F6 4E 71 */	bl func_803BF6A8
/* 8045A83C  4B F6 65 11 */	bl mMsg_Unset_LockContinue
/* 8045A840  48 00 00 80 */	b lbl_8045A8C0
lbl_8045A844:
/* 8045A844  4B F6 4E 65 */	bl func_803BF6A8
/* 8045A848  4B F6 64 C9 */	bl mMsg_Set_CancelNormalContinue
/* 8045A84C  4B F6 4E 5D */	bl func_803BF6A8
/* 8045A850  4B F6 64 FD */	bl mMsg_Unset_LockContinue
/* 8045A854  48 00 00 6C */	b lbl_8045A8C0
lbl_8045A858:
/* 8045A858  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 8045A85C  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 8045A860  4B F3 B6 B1 */	bl chkTrigger
/* 8045A864  2C 03 00 00 */	cmpwi r3, 0
/* 8045A868  41 82 00 58 */	beq lbl_8045A8C0
/* 8045A86C  4B F3 DB 8D */	bl mDemo_Get_talk_actor
/* 8045A870  28 03 00 00 */	cmplwi r3, 0
/* 8045A874  40 82 00 4C */	bne lbl_8045A8C0
/* 8045A878  3C 60 80 46 */	lis r3, Museum_Insect_set_talk_info@ha /* 0x8045A6D0@ha */
/* 8045A87C  3B A0 00 00 */	li r29, 0
/* 8045A880  3B C3 A6 D0 */	addi r30, r3, Museum_Insect_set_talk_info@l /* 0x8045A6D0@l */
lbl_8045A884:
/* 8045A884  7F 83 E3 78 */	mr r3, r28
/* 8045A888  7F A4 EB 78 */	mr r4, r29
/* 8045A88C  4B FF FC B9 */	bl Museum_Insect_Check_Talk_Distance
/* 8045A890  2C 03 00 00 */	cmpwi r3, 0
/* 8045A894  41 82 00 20 */	beq lbl_8045A8B4
/* 8045A898  7F E3 FB 78 */	mr r3, r31
/* 8045A89C  7F A4 EB 78 */	mr r4, r29
/* 8045A8A0  4B FF FD 7D */	bl Museum_Insect_Set_MsgInsectInfo
/* 8045A8A4  7F E4 FB 78 */	mr r4, r31
/* 8045A8A8  7F C5 F3 78 */	mr r5, r30
/* 8045A8AC  38 60 00 08 */	li r3, 8
/* 8045A8B0  4B F3 F8 AD */	bl mDemo_Request
lbl_8045A8B4:
/* 8045A8B4  3B BD 00 01 */	addi r29, r29, 1
/* 8045A8B8  2C 1D 00 06 */	cmpwi r29, 6
/* 8045A8BC  41 80 FF C8 */	blt lbl_8045A884
lbl_8045A8C0:
/* 8045A8C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8045A8C4  4B C4 06 59 */	bl func_8009AF1C
/* 8045A8C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045A8CC  7C 08 03 A6 */	mtlr r0
/* 8045A8D0  38 21 00 20 */	addi r1, r1, 0x20
/* 8045A8D4  4E 80 00 20 */	blr 
