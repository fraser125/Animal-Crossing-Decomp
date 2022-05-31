lbl_8051B154:
/* 8051B154  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8051B158  7C 08 02 A6 */	mflr r0
/* 8051B15C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8051B160  39 61 00 30 */	addi r11, r1, 0x30
/* 8051B164  4B B7 FD 71 */	bl func_8009AED4
/* 8051B168  7C 7E 1B 78 */	mr r30, r3
/* 8051B16C  7C 83 23 78 */	mr r3, r4
/* 8051B170  4B EB E4 D1 */	bl get_player_actor_withoutCheck
/* 8051B174  28 03 00 00 */	cmplwi r3, 0
/* 8051B178  3B E0 00 00 */	li r31, 0
/* 8051B17C  41 82 01 78 */	beq lbl_8051B2F4
/* 8051B180  A0 03 13 94 */	lhz r0, 0x1394(r3)
/* 8051B184  28 00 40 81 */	cmplwi r0, 0x4081
/* 8051B188  40 82 00 18 */	bne lbl_8051B1A0
/* 8051B18C  7F C3 F3 78 */	mr r3, r30
/* 8051B190  38 80 00 0A */	li r4, 0xa
/* 8051B194  48 00 09 D1 */	bl aEBR2_setupAction
/* 8051B198  3B E0 00 01 */	li r31, 1
/* 8051B19C  48 00 01 58 */	b lbl_8051B2F4
lbl_8051B1A0:
/* 8051B1A0  80 03 13 8C */	lwz r0, 0x138c(r3)
/* 8051B1A4  2C 00 00 01 */	cmpwi r0, 1
/* 8051B1A8  40 82 00 80 */	bne lbl_8051B228
/* 8051B1AC  80 C3 13 98 */	lwz r6, 0x1398(r3)
/* 8051B1B0  38 81 00 08 */	addi r4, r1, 8
/* 8051B1B4  80 03 13 9C */	lwz r0, 0x139c(r3)
/* 8051B1B8  38 A1 00 10 */	addi r5, r1, 0x10
/* 8051B1BC  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8051B1C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B1C4  80 03 13 A0 */	lwz r0, 0x13a0(r3)
/* 8051B1C8  38 61 00 0C */	addi r3, r1, 0xc
/* 8051B1CC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8051B1D0  4B E8 A1 99 */	bl mFI_Wpos2UtNum
/* 8051B1D4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051B1D8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8051B1DC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8051B1E0  80 81 00 08 */	lwz r4, 8(r1)
/* 8051B1E4  3C A5 00 02 */	addis r5, r5, 2
/* 8051B1E8  80 A5 60 A4 */	lwz r5, 0x60a4(r5)
/* 8051B1EC  81 85 00 00 */	lwz r12, 0(r5)
/* 8051B1F0  7D 89 03 A6 */	mtctr r12
/* 8051B1F4  4E 80 04 21 */	bctrl 
/* 8051B1F8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8051B1FC  41 82 00 2C */	beq lbl_8051B228
/* 8051B200  28 00 FF FF */	cmplwi r0, 0xffff
/* 8051B204  41 82 00 24 */	beq lbl_8051B228
/* 8051B208  4B FF FA 49 */	bl aEBR2_get_item_idx
/* 8051B20C  3C 80 80 52 */	lis r4, aEBR2_set_talk_info_sell_item@ha /* 0x8051AFE8@ha */
/* 8051B210  7C 7D 1B 78 */	mr r29, r3
/* 8051B214  38 A4 AF E8 */	addi r5, r4, aEBR2_set_talk_info_sell_item@l /* 0x8051AFE8@l */
/* 8051B218  38 60 00 08 */	li r3, 8
/* 8051B21C  7F C4 F3 78 */	mr r4, r30
/* 8051B220  4B E7 EF 3D */	bl mDemo_Request
/* 8051B224  9B BE 09 A4 */	stb r29, 0x9a4(r30)
lbl_8051B228:
/* 8051B228  7F C4 F3 78 */	mr r4, r30
/* 8051B22C  38 60 00 08 */	li r3, 8
/* 8051B230  4B E7 F0 35 */	bl mDemo_Check
/* 8051B234  2C 03 00 01 */	cmpwi r3, 1
/* 8051B238  40 82 00 4C */	bne lbl_8051B284
/* 8051B23C  4B E7 F1 D5 */	bl mDemo_Check_ListenAble
/* 8051B240  2C 03 00 00 */	cmpwi r3, 0
/* 8051B244  40 82 00 B0 */	bne lbl_8051B2F4
/* 8051B248  A8 9E 09 A2 */	lha r4, 0x9a2(r30)
/* 8051B24C  38 7E 00 DE */	addi r3, r30, 0xde
/* 8051B250  38 A0 08 00 */	li r5, 0x800
/* 8051B254  4B E9 F8 F1 */	bl chase_angle
/* 8051B258  2C 03 00 01 */	cmpwi r3, 1
/* 8051B25C  40 82 00 1C */	bne lbl_8051B278
/* 8051B260  7F C3 F3 78 */	mr r3, r30
/* 8051B264  38 80 00 08 */	li r4, 8
/* 8051B268  48 00 08 FD */	bl aEBR2_setupAction
/* 8051B26C  7F C3 F3 78 */	mr r3, r30
/* 8051B270  4B FF F7 89 */	bl aEBR2_Set_ListenAble
/* 8051B274  3B E0 00 01 */	li r31, 1
lbl_8051B278:
/* 8051B278  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8051B27C  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 8051B280  48 00 00 74 */	b lbl_8051B2F4
lbl_8051B284:
/* 8051B284  7F C4 F3 78 */	mr r4, r30
/* 8051B288  38 60 00 07 */	li r3, 7
/* 8051B28C  4B E7 EF D9 */	bl mDemo_Check
/* 8051B290  2C 03 00 01 */	cmpwi r3, 1
/* 8051B294  40 82 00 4C */	bne lbl_8051B2E0
/* 8051B298  4B E7 F1 79 */	bl mDemo_Check_ListenAble
/* 8051B29C  2C 03 00 00 */	cmpwi r3, 0
/* 8051B2A0  40 82 00 54 */	bne lbl_8051B2F4
/* 8051B2A4  A8 9E 09 A2 */	lha r4, 0x9a2(r30)
/* 8051B2A8  38 7E 00 DE */	addi r3, r30, 0xde
/* 8051B2AC  38 A0 08 00 */	li r5, 0x800
/* 8051B2B0  4B E9 F8 95 */	bl chase_angle
/* 8051B2B4  2C 03 00 01 */	cmpwi r3, 1
/* 8051B2B8  40 82 00 1C */	bne lbl_8051B2D4
/* 8051B2BC  7F C3 F3 78 */	mr r3, r30
/* 8051B2C0  38 80 00 06 */	li r4, 6
/* 8051B2C4  48 00 08 A1 */	bl aEBR2_setupAction
/* 8051B2C8  7F C3 F3 78 */	mr r3, r30
/* 8051B2CC  4B FF F7 2D */	bl aEBR2_Set_ListenAble
/* 8051B2D0  3B E0 00 01 */	li r31, 1
lbl_8051B2D4:
/* 8051B2D4  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8051B2D8  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 8051B2DC  48 00 00 18 */	b lbl_8051B2F4
lbl_8051B2E0:
/* 8051B2E0  3C 60 80 52 */	lis r3, aEBR2_set_talk_info_message_ctrl@ha /* 0x8051B098@ha */
/* 8051B2E4  7F C4 F3 78 */	mr r4, r30
/* 8051B2E8  38 A3 B0 98 */	addi r5, r3, aEBR2_set_talk_info_message_ctrl@l /* 0x8051B098@l */
/* 8051B2EC  38 60 00 07 */	li r3, 7
/* 8051B2F0  4B E7 EE 6D */	bl mDemo_Request
lbl_8051B2F4:
/* 8051B2F4  7F E3 FB 78 */	mr r3, r31
/* 8051B2F8  39 61 00 30 */	addi r11, r1, 0x30
/* 8051B2FC  4B B7 FC 25 */	bl func_8009AF20
/* 8051B300  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8051B304  7C 08 03 A6 */	mtlr r0
/* 8051B308  38 21 00 30 */	addi r1, r1, 0x30
/* 8051B30C  4E 80 00 20 */	blr 
