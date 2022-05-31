lbl_80569088:
/* 80569088  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056908C  7C 08 02 A6 */	mflr r0
/* 80569090  90 01 00 24 */	stw r0, 0x24(r1)
/* 80569094  39 61 00 20 */	addi r11, r1, 0x20
/* 80569098  4B B3 1E 39 */	bl func_8009AED0
/* 8056909C  7C 7C 1B 78 */	mr r28, r3
/* 805690A0  7C 9D 23 78 */	mr r29, r4
/* 805690A4  38 60 00 04 */	li r3, 4
/* 805690A8  38 80 00 09 */	li r4, 9
/* 805690AC  4B E2 F3 D1 */	bl mDemo_Get_OrderValue
/* 805690B0  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 805690B4  4B E5 65 F5 */	bl func_803BF6A8
/* 805690B8  2C 1F 00 02 */	cmpwi r31, 2
/* 805690BC  7C 7E 1B 78 */	mr r30, r3
/* 805690C0  41 82 00 30 */	beq lbl_805690F0
/* 805690C4  40 80 00 E0 */	bge lbl_805691A4
/* 805690C8  2C 1F 00 01 */	cmpwi r31, 1
/* 805690CC  40 80 00 08 */	bge lbl_805690D4
/* 805690D0  48 00 00 D4 */	b lbl_805691A4
lbl_805690D4:
/* 805690D4  4B E5 65 D5 */	bl func_803BF6A8
/* 805690D8  4B E5 7C 69 */	bl mMsg_Set_LockContinue
/* 805690DC  38 60 00 04 */	li r3, 4
/* 805690E0  38 80 00 09 */	li r4, 9
/* 805690E4  38 A0 00 02 */	li r5, 2
/* 805690E8  4B E2 F3 51 */	bl mDemo_Set_OrderValue
/* 805690EC  48 00 00 B8 */	b lbl_805691A4
lbl_805690F0:
/* 805690F0  80 7C 09 C0 */	lwz r3, 0x9c0(r28)
/* 805690F4  4B E9 5C C5 */	bl mCD_ErasePassportFile_bg
/* 805690F8  2C 03 00 00 */	cmpwi r3, 0
/* 805690FC  41 82 00 A8 */	beq lbl_805691A4
/* 80569100  40 80 00 10 */	bge lbl_80569110
/* 80569104  2C 03 FF FF */	cmpwi r3, -1
/* 80569108  40 80 00 58 */	bge lbl_80569160
/* 8056910C  48 00 00 98 */	b lbl_805691A4
lbl_80569110:
/* 80569110  2C 03 00 02 */	cmpwi r3, 2
/* 80569114  40 80 00 90 */	bge lbl_805691A4
/* 80569118  38 60 00 04 */	li r3, 4
/* 8056911C  38 80 00 09 */	li r4, 9
/* 80569120  38 A0 00 00 */	li r5, 0
/* 80569124  4B E2 F3 15 */	bl mDemo_Set_OrderValue
/* 80569128  7F 83 E3 78 */	mr r3, r28
/* 8056912C  7F A4 EB 78 */	mr r4, r29
/* 80569130  38 A0 00 04 */	li r5, 4
/* 80569134  48 00 0C 95 */	bl aNPS2_change_talk_proc
/* 80569138  7F C3 F3 78 */	mr r3, r30
/* 8056913C  4B E5 7C 11 */	bl mMsg_Unset_LockContinue
/* 80569140  7F 83 E3 78 */	mr r3, r28
/* 80569144  38 80 FF FA */	li r4, -6
/* 80569148  4B FF E4 01 */	bl aNPS2_make_msg
/* 8056914C  7C 7F 1B 78 */	mr r31, r3
/* 80569150  4B E5 65 59 */	bl func_803BF6A8
/* 80569154  7F E4 FB 78 */	mr r4, r31
/* 80569158  4B E5 6E 6D */	bl mMsg_Set_continue_msg_num
/* 8056915C  48 00 00 48 */	b lbl_805691A4
lbl_80569160:
/* 80569160  38 60 00 04 */	li r3, 4
/* 80569164  38 80 00 09 */	li r4, 9
/* 80569168  38 A0 00 00 */	li r5, 0
/* 8056916C  4B E2 F2 CD */	bl mDemo_Set_OrderValue
/* 80569170  7F 83 E3 78 */	mr r3, r28
/* 80569174  7F A4 EB 78 */	mr r4, r29
/* 80569178  38 A0 00 1B */	li r5, 0x1b
/* 8056917C  48 00 0C 4D */	bl aNPS2_change_talk_proc
/* 80569180  7F C3 F3 78 */	mr r3, r30
/* 80569184  4B E5 7B C9 */	bl mMsg_Unset_LockContinue
/* 80569188  7F 83 E3 78 */	mr r3, r28
/* 8056918C  38 80 FF FC */	li r4, -4
/* 80569190  4B FF E3 B9 */	bl aNPS2_make_msg
/* 80569194  7C 7F 1B 78 */	mr r31, r3
/* 80569198  4B E5 65 11 */	bl func_803BF6A8
/* 8056919C  7F E4 FB 78 */	mr r4, r31
/* 805691A0  4B E5 6E 25 */	bl mMsg_Set_continue_msg_num
lbl_805691A4:
/* 805691A4  39 61 00 20 */	addi r11, r1, 0x20
/* 805691A8  4B B3 1D 75 */	bl func_8009AF1C
/* 805691AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805691B0  7C 08 03 A6 */	mtlr r0
/* 805691B4  38 21 00 20 */	addi r1, r1, 0x20
/* 805691B8  4E 80 00 20 */	blr 
