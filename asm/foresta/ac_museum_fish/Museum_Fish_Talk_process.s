lbl_8042FE48:
/* 8042FE48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042FE4C  7C 08 02 A6 */	mflr r0
/* 8042FE50  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042FE54  39 61 00 20 */	addi r11, r1, 0x20
/* 8042FE58  4B C6 B0 79 */	bl func_8009AED0
/* 8042FE5C  7C 7C 1B 78 */	mr r28, r3
/* 8042FE60  7C 9D 23 78 */	mr r29, r4
/* 8042FE64  7F 84 E3 78 */	mr r4, r28
/* 8042FE68  38 60 00 08 */	li r3, 8
/* 8042FE6C  4B F6 A3 F9 */	bl mDemo_Check
/* 8042FE70  2C 03 00 00 */	cmpwi r3, 0
/* 8042FE74  41 82 00 D8 */	beq lbl_8042FF4C
/* 8042FE78  7F A3 EB 78 */	mr r3, r29
/* 8042FE7C  4B FA 97 C5 */	bl get_player_actor_withoutCheck
/* 8042FE80  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 8042FE84  3C 80 80 64 */	lis r4, lit_1071@ha /* 0x80644314@ha */
/* 8042FE88  38 C4 43 14 */	addi r6, r4, lit_1071@l /* 0x80644314@l */
/* 8042FE8C  38 80 80 00 */	li r4, -32768
/* 8042FE90  90 01 00 08 */	stw r0, 8(r1)
/* 8042FE94  38 A0 10 00 */	li r5, 0x1000
/* 8042FE98  C0 26 00 00 */	lfs f1, 0(r6)
/* 8042FE9C  38 C0 00 00 */	li r6, 0
/* 8042FEA0  A0 03 00 E0 */	lhz r0, 0xe0(r3)
/* 8042FEA4  38 61 00 0A */	addi r3, r1, 0xa
/* 8042FEA8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8042FEAC  4B F8 B4 65 */	bl add_calc_short_angle2
/* 8042FEB0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8042FEB4  83 E3 52 F0 */	lwz r31, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 8042FEB8  7F E3 FB 78 */	mr r3, r31
/* 8042FEBC  4B FA 97 85 */	bl get_player_actor_withoutCheck
/* 8042FEC0  81 83 13 10 */	lwz r12, 0x1310(r3)
/* 8042FEC4  7F E3 FB 78 */	mr r3, r31
/* 8042FEC8  38 A1 00 08 */	addi r5, r1, 8
/* 8042FECC  38 80 00 00 */	li r4, 0
/* 8042FED0  38 C0 00 20 */	li r6, 0x20
/* 8042FED4  7D 89 03 A6 */	mtctr r12
/* 8042FED8  4E 80 04 21 */	bctrl 
/* 8042FEDC  4B F8 F7 CD */	bl func_803BF6A8
/* 8042FEE0  4B F9 0D B9 */	bl mMsg_Check_MainNormalContinue
/* 8042FEE4  2C 03 00 00 */	cmpwi r3, 0
/* 8042FEE8  41 82 00 CC */	beq lbl_8042FFB4
/* 8042FEEC  4B F5 36 55 */	bl func_80383540
/* 8042FEF0  4B F5 3C 7D */	bl mChoice_Get_ChoseNum
/* 8042FEF4  2C 03 FF FF */	cmpwi r3, -1
/* 8042FEF8  41 82 00 BC */	beq lbl_8042FFB4
/* 8042FEFC  2C 03 00 00 */	cmpwi r3, 0
/* 8042FF00  40 82 00 38 */	bne lbl_8042FF38
/* 8042FF04  7F 83 E3 78 */	mr r3, r28
/* 8042FF08  4B FF FC 11 */	bl Museum_Fish_GetMsgNo
/* 8042FF0C  3C BC 00 01 */	addis r5, r28, 1
/* 8042FF10  7C 7F 1B 78 */	mr r31, r3
/* 8042FF14  80 85 4D 24 */	lwz r4, 0x4d24(r5)
/* 8042FF18  38 04 00 01 */	addi r0, r4, 1
/* 8042FF1C  90 05 4D 24 */	stw r0, 0x4d24(r5)
/* 8042FF20  4B F8 F7 89 */	bl func_803BF6A8
/* 8042FF24  7F E4 FB 78 */	mr r4, r31
/* 8042FF28  4B F9 00 9D */	bl mMsg_Set_continue_msg_num
/* 8042FF2C  4B F8 F7 7D */	bl func_803BF6A8
/* 8042FF30  4B F9 0E 1D */	bl mMsg_Unset_LockContinue
/* 8042FF34  48 00 00 80 */	b lbl_8042FFB4
lbl_8042FF38:
/* 8042FF38  4B F8 F7 71 */	bl func_803BF6A8
/* 8042FF3C  4B F9 0D D5 */	bl mMsg_Set_CancelNormalContinue
/* 8042FF40  4B F8 F7 69 */	bl func_803BF6A8
/* 8042FF44  4B F9 0E 09 */	bl mMsg_Unset_LockContinue
/* 8042FF48  48 00 00 6C */	b lbl_8042FFB4
lbl_8042FF4C:
/* 8042FF4C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 8042FF50  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 8042FF54  4B F6 5F BD */	bl chkTrigger
/* 8042FF58  2C 03 00 00 */	cmpwi r3, 0
/* 8042FF5C  41 82 00 58 */	beq lbl_8042FFB4
/* 8042FF60  4B F6 84 99 */	bl mDemo_Get_talk_actor
/* 8042FF64  28 03 00 00 */	cmplwi r3, 0
/* 8042FF68  40 82 00 4C */	bne lbl_8042FFB4
/* 8042FF6C  3C 60 80 43 */	lis r3, Museum_Fish_set_talk_info@ha /* 0x8042FDC8@ha */
/* 8042FF70  3B C0 00 00 */	li r30, 0
/* 8042FF74  3B E3 FD C8 */	addi r31, r3, Museum_Fish_set_talk_info@l /* 0x8042FDC8@l */
lbl_8042FF78:
/* 8042FF78  7F A3 EB 78 */	mr r3, r29
/* 8042FF7C  7F C4 F3 78 */	mr r4, r30
/* 8042FF80  4B FF FC AD */	bl Museum_Fish_Check_Talk_Distance
/* 8042FF84  2C 03 00 00 */	cmpwi r3, 0
/* 8042FF88  41 82 00 20 */	beq lbl_8042FFA8
/* 8042FF8C  7F 83 E3 78 */	mr r3, r28
/* 8042FF90  7F C4 F3 78 */	mr r4, r30
/* 8042FF94  4B FF FD 71 */	bl Museum_Fish_Set_MsgFishInfo
/* 8042FF98  7F 84 E3 78 */	mr r4, r28
/* 8042FF9C  7F E5 FB 78 */	mr r5, r31
/* 8042FFA0  38 60 00 08 */	li r3, 8
/* 8042FFA4  4B F6 A1 B9 */	bl mDemo_Request
lbl_8042FFA8:
/* 8042FFA8  3B DE 00 01 */	addi r30, r30, 1
/* 8042FFAC  2C 1E 00 05 */	cmpwi r30, 5
/* 8042FFB0  41 80 FF C8 */	blt lbl_8042FF78
lbl_8042FFB4:
/* 8042FFB4  39 61 00 20 */	addi r11, r1, 0x20
/* 8042FFB8  4B C6 AF 65 */	bl func_8009AF1C
/* 8042FFBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042FFC0  7C 08 03 A6 */	mtlr r0
/* 8042FFC4  38 21 00 20 */	addi r1, r1, 0x20
/* 8042FFC8  4E 80 00 20 */	blr 
