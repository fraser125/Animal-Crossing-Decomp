lbl_8057B19C:
/* 8057B19C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057B1A0  7C 08 02 A6 */	mflr r0
/* 8057B1A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057B1A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8057B1AC  4B B1 FD 25 */	bl func_8009AED0
/* 8057B1B0  7C 7C 1B 78 */	mr r28, r3
/* 8057B1B4  7C 9D 23 78 */	mr r29, r4
/* 8057B1B8  4B E4 44 F1 */	bl func_803BF6A8
/* 8057B1BC  7C 60 1B 78 */	mr r0, r3
/* 8057B1C0  38 60 01 32 */	li r3, 0x132
/* 8057B1C4  7C 1E 03 78 */	mr r30, r0
/* 8057B1C8  4B FF D0 B5 */	bl aNSC_get_msg_no
/* 8057B1CC  7C 7F 1B 78 */	mr r31, r3
/* 8057B1D0  7F C3 F3 78 */	mr r3, r30
/* 8057B1D4  4B E4 4D F9 */	bl mMsg_Get_msg_num
/* 8057B1D8  7C 03 F8 00 */	cmpw r3, r31
/* 8057B1DC  40 82 00 D4 */	bne lbl_8057B2B0
/* 8057B1E0  7F C3 F3 78 */	mr r3, r30
/* 8057B1E4  4B E4 5A B5 */	bl mMsg_Check_MainNormalContinue
/* 8057B1E8  2C 03 00 00 */	cmpwi r3, 0
/* 8057B1EC  41 82 00 C4 */	beq lbl_8057B2B0
/* 8057B1F0  3B E0 FF FF */	li r31, -1
/* 8057B1F4  4B E0 83 4D */	bl func_80383540
/* 8057B1F8  4B E0 89 75 */	bl mChoice_Get_ChoseNum
/* 8057B1FC  2C 03 00 01 */	cmpwi r3, 1
/* 8057B200  41 82 00 78 */	beq lbl_8057B278
/* 8057B204  40 80 00 10 */	bge lbl_8057B214
/* 8057B208  2C 03 00 00 */	cmpwi r3, 0
/* 8057B20C  40 80 00 14 */	bge lbl_8057B220
/* 8057B210  48 00 00 74 */	b lbl_8057B284
lbl_8057B214:
/* 8057B214  2C 03 00 03 */	cmpwi r3, 3
/* 8057B218  40 80 00 6C */	bge lbl_8057B284
/* 8057B21C  48 00 00 64 */	b lbl_8057B280
lbl_8057B220:
/* 8057B220  83 FD 1F 60 */	lwz r31, 0x1f60(r29)
/* 8057B224  38 7C 09 D8 */	addi r3, r28, 0x9d8
/* 8057B228  A1 1C 09 F4 */	lhz r8, 0x9f4(r28)
/* 8057B22C  38 DC 09 D0 */	addi r6, r28, 0x9d0
/* 8057B230  38 FC 09 C8 */	addi r7, r28, 0x9c8
/* 8057B234  38 80 00 04 */	li r4, 4
/* 8057B238  38 A0 00 01 */	li r5, 1
/* 8057B23C  39 20 00 00 */	li r9, 0
/* 8057B240  39 40 00 00 */	li r10, 0
/* 8057B244  4B E4 2D 41 */	bl mMpswd_make_password
/* 8057B248  7F 83 E3 78 */	mr r3, r28
/* 8057B24C  4B FF C4 89 */	bl aNSC_set_pw_password_str
/* 8057B250  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057B254  88 9F 00 02 */	lbz r4, 2(r31)
/* 8057B258  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057B25C  38 A0 00 00 */	li r5, 0
/* 8057B260  3C 63 00 02 */	addis r3, r3, 2
/* 8057B264  38 C0 00 00 */	li r6, 0
/* 8057B268  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8057B26C  4B E6 5B BD */	bl mPr_SetPossessionItem
/* 8057B270  3B E0 00 00 */	li r31, 0
/* 8057B274  48 00 00 10 */	b lbl_8057B284
lbl_8057B278:
/* 8057B278  3B E0 00 01 */	li r31, 1
/* 8057B27C  48 00 00 08 */	b lbl_8057B284
lbl_8057B280:
/* 8057B280  3B E0 00 02 */	li r31, 2
lbl_8057B284:
/* 8057B284  2C 1F FF FF */	cmpwi r31, -1
/* 8057B288  41 82 00 28 */	beq lbl_8057B2B0
/* 8057B28C  7F C3 F3 78 */	mr r3, r30
/* 8057B290  4B E4 5A 99 */	bl mMsg_Set_ForceNext
/* 8057B294  3C 60 80 6C */	lis r3, next_act_idx_1805@ha /* 0x806C03DC@ha */
/* 8057B298  57 E0 10 3A */	slwi r0, r31, 2
/* 8057B29C  38 83 03 DC */	addi r4, r3, next_act_idx_1805@l /* 0x806C03DC@l */
/* 8057B2A0  7F 83 E3 78 */	mr r3, r28
/* 8057B2A4  7C A4 00 2E */	lwzx r5, r4, r0
/* 8057B2A8  7F A4 EB 78 */	mr r4, r29
/* 8057B2AC  48 00 12 09 */	bl aNSC_setupAction
lbl_8057B2B0:
/* 8057B2B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8057B2B4  4B B1 FC 69 */	bl func_8009AF1C
/* 8057B2B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057B2BC  7C 08 03 A6 */	mtlr r0
/* 8057B2C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8057B2C4  4E 80 00 20 */	blr 
