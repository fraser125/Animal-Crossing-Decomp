lbl_8054E994:
/* 8054E994  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8054E998  7C 08 02 A6 */	mflr r0
/* 8054E99C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8054E9A0  39 61 00 40 */	addi r11, r1, 0x40
/* 8054E9A4  4B B4 C5 29 */	bl func_8009AECC
/* 8054E9A8  7C 9D 23 78 */	mr r29, r4
/* 8054E9AC  7C 7E 1B 78 */	mr r30, r3
/* 8054E9B0  7F A3 EB 78 */	mr r3, r29
/* 8054E9B4  4B E8 AC 8D */	bl get_player_actor_withoutCheck
/* 8054E9B8  7C 7C 1B 79 */	or. r28, r3, r3
/* 8054E9BC  3B E0 00 00 */	li r31, 0
/* 8054E9C0  41 82 03 98 */	beq lbl_8054ED58
/* 8054E9C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054E9C8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054E9CC  3F 63 00 02 */	addis r27, r3, 2
/* 8054E9D0  80 1B 60 60 */	lwz r0, 0x6060(r27)
/* 8054E9D4  28 00 00 00 */	cmplwi r0, 0
/* 8054E9D8  41 82 03 80 */	beq lbl_8054ED58
/* 8054E9DC  A0 1C 13 94 */	lhz r0, 0x1394(r28)
/* 8054E9E0  28 00 40 81 */	cmplwi r0, 0x4081
/* 8054E9E4  40 82 00 1C */	bne lbl_8054EA00
/* 8054E9E8  7F C3 F3 78 */	mr r3, r30
/* 8054E9EC  7F A4 EB 78 */	mr r4, r29
/* 8054E9F0  38 A0 00 43 */	li r5, 0x43
/* 8054E9F4  48 00 3E 41 */	bl aNSC_setupAction
/* 8054E9F8  3B E0 00 01 */	li r31, 1
/* 8054E9FC  48 00 03 5C */	b lbl_8054ED58
lbl_8054EA00:
/* 8054EA00  7F C4 F3 78 */	mr r4, r30
/* 8054EA04  38 60 00 08 */	li r3, 8
/* 8054EA08  4B E4 B8 5D */	bl mDemo_Check
/* 8054EA0C  2C 03 00 01 */	cmpwi r3, 1
/* 8054EA10  40 82 00 E8 */	bne lbl_8054EAF8
/* 8054EA14  4B E4 B9 FD */	bl mDemo_Check_ListenAble
/* 8054EA18  2C 03 00 00 */	cmpwi r3, 0
/* 8054EA1C  40 82 03 3C */	bne lbl_8054ED58
/* 8054EA20  7F C3 F3 78 */	mr r3, r30
/* 8054EA24  4B FF EA 89 */	bl aNSC_calc_talk_start_tim
/* 8054EA28  3C 60 80 65 */	lis r3, lit_1153@ha /* 0x80649524@ha */
/* 8054EA2C  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 8054EA30  C0 03 95 24 */	lfs f0, lit_1153@l(r3)  /* 0x80649524@l */
/* 8054EA34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8054EA38  41 80 00 10 */	blt lbl_8054EA48
/* 8054EA3C  80 1E 09 C0 */	lwz r0, 0x9c0(r30)
/* 8054EA40  2C 00 00 00 */	cmpwi r0, 0
/* 8054EA44  40 82 03 14 */	bne lbl_8054ED58
lbl_8054EA48:
/* 8054EA48  A8 9E 09 A6 */	lha r4, 0x9a6(r30)
/* 8054EA4C  38 7E 00 DE */	addi r3, r30, 0xde
/* 8054EA50  38 A0 08 00 */	li r5, 0x800
/* 8054EA54  4B E6 C0 F1 */	bl chase_angle
/* 8054EA58  2C 03 00 01 */	cmpwi r3, 1
/* 8054EA5C  40 82 00 90 */	bne lbl_8054EAEC
/* 8054EA60  A0 7E 09 B4 */	lhz r3, 0x9b4(r30)
/* 8054EA64  28 03 00 00 */	cmplwi r3, 0
/* 8054EA68  41 82 00 70 */	beq lbl_8054EAD8
/* 8054EA6C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8054EA70  3B 60 00 1E */	li r27, 0x1e
/* 8054EA74  2C 00 00 02 */	cmpwi r0, 2
/* 8054EA78  40 82 00 50 */	bne lbl_8054EAC8
/* 8054EA7C  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 8054EA80  2C 00 00 05 */	cmpwi r0, 5
/* 8054EA84  41 82 00 24 */	beq lbl_8054EAA8
/* 8054EA88  40 80 00 10 */	bge lbl_8054EA98
/* 8054EA8C  2C 00 00 04 */	cmpwi r0, 4
/* 8054EA90  40 80 00 10 */	bge lbl_8054EAA0
/* 8054EA94  48 00 00 14 */	b lbl_8054EAA8
lbl_8054EA98:
/* 8054EA98  2C 00 00 08 */	cmpwi r0, 8
/* 8054EA9C  40 80 00 0C */	bge lbl_8054EAA8
lbl_8054EAA0:
/* 8054EAA0  3B 60 00 26 */	li r27, 0x26
/* 8054EAA4  48 00 00 24 */	b lbl_8054EAC8
lbl_8054EAA8:
/* 8054EAA8  28 03 22 2D */	cmplwi r3, 0x222d
/* 8054EAAC  41 80 00 1C */	blt lbl_8054EAC8
/* 8054EAB0  28 03 22 38 */	cmplwi r3, 0x2238
/* 8054EAB4  41 81 00 14 */	bgt lbl_8054EAC8
/* 8054EAB8  4B E6 50 51 */	bl mLd_PlayerManKindCheck
/* 8054EABC  2C 03 00 00 */	cmpwi r3, 0
/* 8054EAC0  41 82 00 08 */	beq lbl_8054EAC8
/* 8054EAC4  3B 60 00 0F */	li r27, 0xf
lbl_8054EAC8:
/* 8054EAC8  7F C3 F3 78 */	mr r3, r30
/* 8054EACC  7F A4 EB 78 */	mr r4, r29
/* 8054EAD0  7F 65 DB 78 */	mr r5, r27
/* 8054EAD4  48 00 3D 61 */	bl aNSC_setupAction
lbl_8054EAD8:
/* 8054EAD8  7F C3 F3 78 */	mr r3, r30
/* 8054EADC  4B FF EA 6D */	bl aNSC_Set_ListenAble
/* 8054EAE0  38 00 FF FF */	li r0, -1
/* 8054EAE4  3B E0 00 01 */	li r31, 1
/* 8054EAE8  90 1E 09 C0 */	stw r0, 0x9c0(r30)
lbl_8054EAEC:
/* 8054EAEC  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8054EAF0  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 8054EAF4  48 00 02 64 */	b lbl_8054ED58
lbl_8054EAF8:
/* 8054EAF8  7F C4 F3 78 */	mr r4, r30
/* 8054EAFC  38 60 00 07 */	li r3, 7
/* 8054EB00  4B E4 B7 65 */	bl mDemo_Check
/* 8054EB04  2C 03 00 01 */	cmpwi r3, 1
/* 8054EB08  40 82 00 BC */	bne lbl_8054EBC4
/* 8054EB0C  4B E4 B9 05 */	bl mDemo_Check_ListenAble
/* 8054EB10  2C 03 00 00 */	cmpwi r3, 0
/* 8054EB14  40 82 02 44 */	bne lbl_8054ED58
/* 8054EB18  A8 9E 09 A6 */	lha r4, 0x9a6(r30)
/* 8054EB1C  38 7E 00 DE */	addi r3, r30, 0xde
/* 8054EB20  38 A0 08 00 */	li r5, 0x800
/* 8054EB24  4B E6 C0 21 */	bl chase_angle
/* 8054EB28  2C 03 00 01 */	cmpwi r3, 1
/* 8054EB2C  40 82 00 8C */	bne lbl_8054EBB8
/* 8054EB30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054EB34  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054EB38  3F 83 00 02 */	addis r28, r3, 2
/* 8054EB3C  80 7C 60 F8 */	lwz r3, 0x60f8(r28)
/* 8054EB40  28 03 00 00 */	cmplwi r3, 0
/* 8054EB44  41 82 00 40 */	beq lbl_8054EB84
/* 8054EB48  81 83 00 00 */	lwz r12, 0(r3)
/* 8054EB4C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D008@ha */
/* 8054EB50  38 63 D0 08 */	addi r3, r3, 0xD008 /* 0x0000D008@l */
/* 8054EB54  7D 89 03 A6 */	mtctr r12
/* 8054EB58  4E 80 04 21 */	bctrl 
/* 8054EB5C  2C 03 00 00 */	cmpwi r3, 0
/* 8054EB60  40 82 00 24 */	bne lbl_8054EB84
/* 8054EB64  80 9C 60 F8 */	lwz r4, 0x60f8(r28)
/* 8054EB68  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D008@ha */
/* 8054EB6C  38 63 D0 08 */	addi r3, r3, 0xD008 /* 0x0000D008@l */
/* 8054EB70  3B 60 00 0F */	li r27, 0xf
/* 8054EB74  81 84 00 04 */	lwz r12, 4(r4)
/* 8054EB78  7D 89 03 A6 */	mtctr r12
/* 8054EB7C  4E 80 04 21 */	bctrl 
/* 8054EB80  48 00 00 1C */	b lbl_8054EB9C
lbl_8054EB84:
/* 8054EB84  88 1E 09 B9 */	lbz r0, 0x9b9(r30)
/* 8054EB88  28 00 00 01 */	cmplwi r0, 1
/* 8054EB8C  40 82 00 0C */	bne lbl_8054EB98
/* 8054EB90  3B 60 00 0F */	li r27, 0xf
/* 8054EB94  48 00 00 08 */	b lbl_8054EB9C
lbl_8054EB98:
/* 8054EB98  3B 60 00 0D */	li r27, 0xd
lbl_8054EB9C:
/* 8054EB9C  7F C3 F3 78 */	mr r3, r30
/* 8054EBA0  7F A4 EB 78 */	mr r4, r29
/* 8054EBA4  7F 65 DB 78 */	mr r5, r27
/* 8054EBA8  48 00 3C 8D */	bl aNSC_setupAction
/* 8054EBAC  7F C3 F3 78 */	mr r3, r30
/* 8054EBB0  4B FF E9 99 */	bl aNSC_Set_ListenAble
/* 8054EBB4  3B E0 00 01 */	li r31, 1
lbl_8054EBB8:
/* 8054EBB8  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8054EBBC  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 8054EBC0  48 00 01 98 */	b lbl_8054ED58
lbl_8054EBC4:
/* 8054EBC4  38 00 00 00 */	li r0, 0
/* 8054EBC8  B0 1E 09 B4 */	sth r0, 0x9b4(r30)
/* 8054EBCC  80 1C 13 8C */	lwz r0, 0x138c(r28)
/* 8054EBD0  2C 00 00 01 */	cmpwi r0, 1
/* 8054EBD4  40 82 01 0C */	bne lbl_8054ECE0
/* 8054EBD8  80 DC 13 98 */	lwz r6, 0x1398(r28)
/* 8054EBDC  38 61 00 0C */	addi r3, r1, 0xc
/* 8054EBE0  80 1C 13 9C */	lwz r0, 0x139c(r28)
/* 8054EBE4  38 81 00 08 */	addi r4, r1, 8
/* 8054EBE8  38 A1 00 10 */	addi r5, r1, 0x10
/* 8054EBEC  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8054EBF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054EBF4  80 1C 13 A0 */	lwz r0, 0x13a0(r28)
/* 8054EBF8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8054EBFC  4B E5 67 6D */	bl mFI_Wpos2UtNum
/* 8054EC00  80 9B 60 60 */	lwz r4, 0x6060(r27)
/* 8054EC04  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8054EC08  81 84 00 04 */	lwz r12, 4(r4)
/* 8054EC0C  80 81 00 08 */	lwz r4, 8(r1)
/* 8054EC10  7D 89 03 A6 */	mtctr r12
/* 8054EC14  4E 80 04 21 */	bctrl 
/* 8054EC18  54 66 04 3F */	clrlwi. r6, r3, 0x10
/* 8054EC1C  41 82 00 C4 */	beq lbl_8054ECE0
/* 8054EC20  28 06 FF FF */	cmplwi r6, 0xffff
/* 8054EC24  41 82 00 BC */	beq lbl_8054ECE0
/* 8054EC28  B0 7E 09 B4 */	sth r3, 0x9b4(r30)
/* 8054EC2C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8054EC30  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 8054EC34  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8054EC38  38 84 B5 4C */	addi r4, r4, none_proc1@l /* 0x803BB54C@l */
/* 8054EC3C  2C 00 00 02 */	cmpwi r0, 2
/* 8054EC40  98 7E 09 B6 */	stb r3, 0x9b6(r30)
/* 8054EC44  7C 85 23 78 */	mr r5, r4
/* 8054EC48  80 61 00 08 */	lwz r3, 8(r1)
/* 8054EC4C  98 7E 09 B7 */	stb r3, 0x9b7(r30)
/* 8054EC50  41 82 00 2C */	beq lbl_8054EC7C
/* 8054EC54  40 80 00 10 */	bge lbl_8054EC64
/* 8054EC58  2C 00 00 01 */	cmpwi r0, 1
/* 8054EC5C  40 80 00 10 */	bge lbl_8054EC6C
/* 8054EC60  48 00 00 6C */	b lbl_8054ECCC
lbl_8054EC64:
/* 8054EC64  2C 00 00 04 */	cmpwi r0, 4
/* 8054EC68  40 80 00 64 */	bge lbl_8054ECCC
lbl_8054EC6C:
/* 8054EC6C  3C 60 80 55 */	lis r3, aNSC_set_talk_info_sell_item@ha /* 0x8054E83C@ha */
/* 8054EC70  38 03 E8 3C */	addi r0, r3, aNSC_set_talk_info_sell_item@l /* 0x8054E83C@l */
/* 8054EC74  7C 05 03 78 */	mr r5, r0
/* 8054EC78  48 00 00 54 */	b lbl_8054ECCC
lbl_8054EC7C:
/* 8054EC7C  54 C0 C7 3E */	rlwinm r0, r6, 0x18, 0x1c, 0x1f
/* 8054EC80  2C 00 00 05 */	cmpwi r0, 5
/* 8054EC84  41 82 00 3C */	beq lbl_8054ECC0
/* 8054EC88  40 80 00 10 */	bge lbl_8054EC98
/* 8054EC8C  2C 00 00 04 */	cmpwi r0, 4
/* 8054EC90  40 80 00 20 */	bge lbl_8054ECB0
/* 8054EC94  48 00 00 2C */	b lbl_8054ECC0
lbl_8054EC98:
/* 8054EC98  2C 00 00 08 */	cmpwi r0, 8
/* 8054EC9C  40 80 00 24 */	bge lbl_8054ECC0
/* 8054ECA0  3C 60 80 55 */	lis r3, aNSC_set_talk_info_show_item@ha /* 0x8054E7CC@ha */
/* 8054ECA4  38 03 E7 CC */	addi r0, r3, aNSC_set_talk_info_show_item@l /* 0x8054E7CC@l */
/* 8054ECA8  7C 05 03 78 */	mr r5, r0
/* 8054ECAC  48 00 00 20 */	b lbl_8054ECCC
lbl_8054ECB0:
/* 8054ECB0  3C 60 80 55 */	lis r3, aNSC_set_talk_info_show_cloth@ha /* 0x8054E804@ha */
/* 8054ECB4  38 03 E8 04 */	addi r0, r3, aNSC_set_talk_info_show_cloth@l /* 0x8054E804@l */
/* 8054ECB8  7C 05 03 78 */	mr r5, r0
/* 8054ECBC  48 00 00 10 */	b lbl_8054ECCC
lbl_8054ECC0:
/* 8054ECC0  3C 60 80 55 */	lis r3, aNSC_set_talk_info_sell_item@ha /* 0x8054E83C@ha */
/* 8054ECC4  38 03 E8 3C */	addi r0, r3, aNSC_set_talk_info_sell_item@l /* 0x8054E83C@l */
/* 8054ECC8  7C 05 03 78 */	mr r5, r0
lbl_8054ECCC:
/* 8054ECCC  7F C4 F3 78 */	mr r4, r30
/* 8054ECD0  38 60 00 08 */	li r3, 8
/* 8054ECD4  4B E4 B4 89 */	bl mDemo_Request
/* 8054ECD8  38 00 FF FF */	li r0, -1
/* 8054ECDC  90 1E 09 C0 */	stw r0, 0x9c0(r30)
lbl_8054ECE0:
/* 8054ECE0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054ECE4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054ECE8  3C 63 00 02 */	addis r3, r3, 2
/* 8054ECEC  80 63 60 F8 */	lwz r3, 0x60f8(r3)
/* 8054ECF0  28 03 00 00 */	cmplwi r3, 0
/* 8054ECF4  41 82 00 30 */	beq lbl_8054ED24
/* 8054ECF8  81 83 00 00 */	lwz r12, 0(r3)
/* 8054ECFC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D008@ha */
/* 8054ED00  38 63 D0 08 */	addi r3, r3, 0xD008 /* 0x0000D008@l */
/* 8054ED04  7D 89 03 A6 */	mtctr r12
/* 8054ED08  4E 80 04 21 */	bctrl 
/* 8054ED0C  2C 03 00 00 */	cmpwi r3, 0
/* 8054ED10  40 82 00 14 */	bne lbl_8054ED24
/* 8054ED14  3C 60 80 55 */	lis r3, aNSC_set_talk_info_message_ctrl_aprilfool@ha /* 0x8054E924@ha */
/* 8054ED18  38 03 E9 24 */	addi r0, r3, aNSC_set_talk_info_message_ctrl_aprilfool@l /* 0x8054E924@l */
/* 8054ED1C  7C 05 03 78 */	mr r5, r0
/* 8054ED20  48 00 00 2C */	b lbl_8054ED4C
lbl_8054ED24:
/* 8054ED24  88 1E 09 B9 */	lbz r0, 0x9b9(r30)
/* 8054ED28  28 00 00 01 */	cmplwi r0, 1
/* 8054ED2C  40 82 00 14 */	bne lbl_8054ED40
/* 8054ED30  3C 60 80 55 */	lis r3, aNSC_set_talk_info_message_ctrl_tokubai@ha /* 0x8054E96C@ha */
/* 8054ED34  38 03 E9 6C */	addi r0, r3, aNSC_set_talk_info_message_ctrl_tokubai@l /* 0x8054E96C@l */
/* 8054ED38  7C 05 03 78 */	mr r5, r0
/* 8054ED3C  48 00 00 10 */	b lbl_8054ED4C
lbl_8054ED40:
/* 8054ED40  3C 60 80 55 */	lis r3, aNSC_set_talk_info_message_ctrl@ha /* 0x8054E8FC@ha */
/* 8054ED44  38 03 E8 FC */	addi r0, r3, aNSC_set_talk_info_message_ctrl@l /* 0x8054E8FC@l */
/* 8054ED48  7C 05 03 78 */	mr r5, r0
lbl_8054ED4C:
/* 8054ED4C  7F C4 F3 78 */	mr r4, r30
/* 8054ED50  38 60 00 07 */	li r3, 7
/* 8054ED54  4B E4 B4 09 */	bl mDemo_Request
lbl_8054ED58:
/* 8054ED58  7F E3 FB 78 */	mr r3, r31
/* 8054ED5C  39 61 00 40 */	addi r11, r1, 0x40
/* 8054ED60  4B B4 C1 B9 */	bl func_8009AF18
/* 8054ED64  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8054ED68  7C 08 03 A6 */	mtlr r0
/* 8054ED6C  38 21 00 40 */	addi r1, r1, 0x40
/* 8054ED70  4E 80 00 20 */	blr 
