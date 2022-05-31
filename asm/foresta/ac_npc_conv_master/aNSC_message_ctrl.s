lbl_8054707C:
/* 8054707C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80547080  7C 08 02 A6 */	mflr r0
/* 80547084  90 01 00 44 */	stw r0, 0x44(r1)
/* 80547088  39 61 00 40 */	addi r11, r1, 0x40
/* 8054708C  4B B5 3E 41 */	bl func_8009AECC
/* 80547090  7C 9D 23 78 */	mr r29, r4
/* 80547094  7C 7E 1B 78 */	mr r30, r3
/* 80547098  7F A3 EB 78 */	mr r3, r29
/* 8054709C  4B E9 25 A5 */	bl get_player_actor_withoutCheck
/* 805470A0  7C 7C 1B 79 */	or. r28, r3, r3
/* 805470A4  3B E0 00 00 */	li r31, 0
/* 805470A8  41 82 03 98 */	beq lbl_80547440
/* 805470AC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805470B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805470B4  3F 63 00 02 */	addis r27, r3, 2
/* 805470B8  80 1B 60 60 */	lwz r0, 0x6060(r27)
/* 805470BC  28 00 00 00 */	cmplwi r0, 0
/* 805470C0  41 82 03 80 */	beq lbl_80547440
/* 805470C4  A0 1C 13 94 */	lhz r0, 0x1394(r28)
/* 805470C8  28 00 40 81 */	cmplwi r0, 0x4081
/* 805470CC  40 82 00 1C */	bne lbl_805470E8
/* 805470D0  7F C3 F3 78 */	mr r3, r30
/* 805470D4  7F A4 EB 78 */	mr r4, r29
/* 805470D8  38 A0 00 43 */	li r5, 0x43
/* 805470DC  48 00 3E 41 */	bl aNSC_setupAction
/* 805470E0  3B E0 00 01 */	li r31, 1
/* 805470E4  48 00 03 5C */	b lbl_80547440
lbl_805470E8:
/* 805470E8  7F C4 F3 78 */	mr r4, r30
/* 805470EC  38 60 00 08 */	li r3, 8
/* 805470F0  4B E5 31 75 */	bl mDemo_Check
/* 805470F4  2C 03 00 01 */	cmpwi r3, 1
/* 805470F8  40 82 00 E8 */	bne lbl_805471E0
/* 805470FC  4B E5 33 15 */	bl mDemo_Check_ListenAble
/* 80547100  2C 03 00 00 */	cmpwi r3, 0
/* 80547104  40 82 03 3C */	bne lbl_80547440
/* 80547108  7F C3 F3 78 */	mr r3, r30
/* 8054710C  4B FF EA 89 */	bl aNSC_calc_talk_start_tim
/* 80547110  3C 60 80 65 */	lis r3, lit_507@ha /* 0x8064946C@ha */
/* 80547114  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 80547118  C0 03 94 6C */	lfs f0, lit_507@l(r3)  /* 0x8064946C@l */
/* 8054711C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80547120  41 80 00 10 */	blt lbl_80547130
/* 80547124  80 1E 09 C0 */	lwz r0, 0x9c0(r30)
/* 80547128  2C 00 00 00 */	cmpwi r0, 0
/* 8054712C  40 82 03 14 */	bne lbl_80547440
lbl_80547130:
/* 80547130  A8 9E 09 A6 */	lha r4, 0x9a6(r30)
/* 80547134  38 7E 00 DE */	addi r3, r30, 0xde
/* 80547138  38 A0 08 00 */	li r5, 0x800
/* 8054713C  4B E7 3A 09 */	bl chase_angle
/* 80547140  2C 03 00 01 */	cmpwi r3, 1
/* 80547144  40 82 00 90 */	bne lbl_805471D4
/* 80547148  A0 7E 09 B4 */	lhz r3, 0x9b4(r30)
/* 8054714C  28 03 00 00 */	cmplwi r3, 0
/* 80547150  41 82 00 70 */	beq lbl_805471C0
/* 80547154  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 80547158  3B 60 00 1E */	li r27, 0x1e
/* 8054715C  2C 00 00 02 */	cmpwi r0, 2
/* 80547160  40 82 00 50 */	bne lbl_805471B0
/* 80547164  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 80547168  2C 00 00 05 */	cmpwi r0, 5
/* 8054716C  41 82 00 24 */	beq lbl_80547190
/* 80547170  40 80 00 10 */	bge lbl_80547180
/* 80547174  2C 00 00 04 */	cmpwi r0, 4
/* 80547178  40 80 00 10 */	bge lbl_80547188
/* 8054717C  48 00 00 14 */	b lbl_80547190
lbl_80547180:
/* 80547180  2C 00 00 08 */	cmpwi r0, 8
/* 80547184  40 80 00 0C */	bge lbl_80547190
lbl_80547188:
/* 80547188  3B 60 00 26 */	li r27, 0x26
/* 8054718C  48 00 00 24 */	b lbl_805471B0
lbl_80547190:
/* 80547190  28 03 22 2D */	cmplwi r3, 0x222d
/* 80547194  41 80 00 1C */	blt lbl_805471B0
/* 80547198  28 03 22 38 */	cmplwi r3, 0x2238
/* 8054719C  41 81 00 14 */	bgt lbl_805471B0
/* 805471A0  4B E6 C9 69 */	bl mLd_PlayerManKindCheck
/* 805471A4  2C 03 00 00 */	cmpwi r3, 0
/* 805471A8  41 82 00 08 */	beq lbl_805471B0
/* 805471AC  3B 60 00 0F */	li r27, 0xf
lbl_805471B0:
/* 805471B0  7F C3 F3 78 */	mr r3, r30
/* 805471B4  7F A4 EB 78 */	mr r4, r29
/* 805471B8  7F 65 DB 78 */	mr r5, r27
/* 805471BC  48 00 3D 61 */	bl aNSC_setupAction
lbl_805471C0:
/* 805471C0  7F C3 F3 78 */	mr r3, r30
/* 805471C4  4B FF EA 6D */	bl aNSC_Set_ListenAble
/* 805471C8  38 00 FF FF */	li r0, -1
/* 805471CC  3B E0 00 01 */	li r31, 1
/* 805471D0  90 1E 09 C0 */	stw r0, 0x9c0(r30)
lbl_805471D4:
/* 805471D4  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 805471D8  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 805471DC  48 00 02 64 */	b lbl_80547440
lbl_805471E0:
/* 805471E0  7F C4 F3 78 */	mr r4, r30
/* 805471E4  38 60 00 07 */	li r3, 7
/* 805471E8  4B E5 30 7D */	bl mDemo_Check
/* 805471EC  2C 03 00 01 */	cmpwi r3, 1
/* 805471F0  40 82 00 BC */	bne lbl_805472AC
/* 805471F4  4B E5 32 1D */	bl mDemo_Check_ListenAble
/* 805471F8  2C 03 00 00 */	cmpwi r3, 0
/* 805471FC  40 82 02 44 */	bne lbl_80547440
/* 80547200  A8 9E 09 A6 */	lha r4, 0x9a6(r30)
/* 80547204  38 7E 00 DE */	addi r3, r30, 0xde
/* 80547208  38 A0 08 00 */	li r5, 0x800
/* 8054720C  4B E7 39 39 */	bl chase_angle
/* 80547210  2C 03 00 01 */	cmpwi r3, 1
/* 80547214  40 82 00 8C */	bne lbl_805472A0
/* 80547218  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054721C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80547220  3F 83 00 02 */	addis r28, r3, 2
/* 80547224  80 7C 60 F8 */	lwz r3, 0x60f8(r28)
/* 80547228  28 03 00 00 */	cmplwi r3, 0
/* 8054722C  41 82 00 40 */	beq lbl_8054726C
/* 80547230  81 83 00 00 */	lwz r12, 0(r3)
/* 80547234  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D008@ha */
/* 80547238  38 63 D0 08 */	addi r3, r3, 0xD008 /* 0x0000D008@l */
/* 8054723C  7D 89 03 A6 */	mtctr r12
/* 80547240  4E 80 04 21 */	bctrl 
/* 80547244  2C 03 00 00 */	cmpwi r3, 0
/* 80547248  40 82 00 24 */	bne lbl_8054726C
/* 8054724C  80 9C 60 F8 */	lwz r4, 0x60f8(r28)
/* 80547250  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D008@ha */
/* 80547254  38 63 D0 08 */	addi r3, r3, 0xD008 /* 0x0000D008@l */
/* 80547258  3B 60 00 0F */	li r27, 0xf
/* 8054725C  81 84 00 04 */	lwz r12, 4(r4)
/* 80547260  7D 89 03 A6 */	mtctr r12
/* 80547264  4E 80 04 21 */	bctrl 
/* 80547268  48 00 00 1C */	b lbl_80547284
lbl_8054726C:
/* 8054726C  88 1E 09 B9 */	lbz r0, 0x9b9(r30)
/* 80547270  28 00 00 01 */	cmplwi r0, 1
/* 80547274  40 82 00 0C */	bne lbl_80547280
/* 80547278  3B 60 00 0F */	li r27, 0xf
/* 8054727C  48 00 00 08 */	b lbl_80547284
lbl_80547280:
/* 80547280  3B 60 00 0D */	li r27, 0xd
lbl_80547284:
/* 80547284  7F C3 F3 78 */	mr r3, r30
/* 80547288  7F A4 EB 78 */	mr r4, r29
/* 8054728C  7F 65 DB 78 */	mr r5, r27
/* 80547290  48 00 3C 8D */	bl aNSC_setupAction
/* 80547294  7F C3 F3 78 */	mr r3, r30
/* 80547298  4B FF E9 99 */	bl aNSC_Set_ListenAble
/* 8054729C  3B E0 00 01 */	li r31, 1
lbl_805472A0:
/* 805472A0  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 805472A4  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 805472A8  48 00 01 98 */	b lbl_80547440
lbl_805472AC:
/* 805472AC  38 00 00 00 */	li r0, 0
/* 805472B0  B0 1E 09 B4 */	sth r0, 0x9b4(r30)
/* 805472B4  80 1C 13 8C */	lwz r0, 0x138c(r28)
/* 805472B8  2C 00 00 01 */	cmpwi r0, 1
/* 805472BC  40 82 01 0C */	bne lbl_805473C8
/* 805472C0  80 DC 13 98 */	lwz r6, 0x1398(r28)
/* 805472C4  38 61 00 0C */	addi r3, r1, 0xc
/* 805472C8  80 1C 13 9C */	lwz r0, 0x139c(r28)
/* 805472CC  38 81 00 08 */	addi r4, r1, 8
/* 805472D0  38 A1 00 10 */	addi r5, r1, 0x10
/* 805472D4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 805472D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805472DC  80 1C 13 A0 */	lwz r0, 0x13a0(r28)
/* 805472E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 805472E4  4B E5 E0 85 */	bl mFI_Wpos2UtNum
/* 805472E8  80 9B 60 60 */	lwz r4, 0x6060(r27)
/* 805472EC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805472F0  81 84 00 04 */	lwz r12, 4(r4)
/* 805472F4  80 81 00 08 */	lwz r4, 8(r1)
/* 805472F8  7D 89 03 A6 */	mtctr r12
/* 805472FC  4E 80 04 21 */	bctrl 
/* 80547300  54 66 04 3F */	clrlwi. r6, r3, 0x10
/* 80547304  41 82 00 C4 */	beq lbl_805473C8
/* 80547308  28 06 FF FF */	cmplwi r6, 0xffff
/* 8054730C  41 82 00 BC */	beq lbl_805473C8
/* 80547310  B0 7E 09 B4 */	sth r3, 0x9b4(r30)
/* 80547314  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 80547318  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 8054731C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80547320  38 84 B5 4C */	addi r4, r4, none_proc1@l /* 0x803BB54C@l */
/* 80547324  2C 00 00 02 */	cmpwi r0, 2
/* 80547328  98 7E 09 B6 */	stb r3, 0x9b6(r30)
/* 8054732C  7C 85 23 78 */	mr r5, r4
/* 80547330  80 61 00 08 */	lwz r3, 8(r1)
/* 80547334  98 7E 09 B7 */	stb r3, 0x9b7(r30)
/* 80547338  41 82 00 2C */	beq lbl_80547364
/* 8054733C  40 80 00 10 */	bge lbl_8054734C
/* 80547340  2C 00 00 01 */	cmpwi r0, 1
/* 80547344  40 80 00 10 */	bge lbl_80547354
/* 80547348  48 00 00 6C */	b lbl_805473B4
lbl_8054734C:
/* 8054734C  2C 00 00 04 */	cmpwi r0, 4
/* 80547350  40 80 00 64 */	bge lbl_805473B4
lbl_80547354:
/* 80547354  3C 60 80 54 */	lis r3, aNSC_set_talk_info_sell_item@ha /* 0x80546F24@ha */
/* 80547358  38 03 6F 24 */	addi r0, r3, aNSC_set_talk_info_sell_item@l /* 0x80546F24@l */
/* 8054735C  7C 05 03 78 */	mr r5, r0
/* 80547360  48 00 00 54 */	b lbl_805473B4
lbl_80547364:
/* 80547364  54 C0 C7 3E */	rlwinm r0, r6, 0x18, 0x1c, 0x1f
/* 80547368  2C 00 00 05 */	cmpwi r0, 5
/* 8054736C  41 82 00 3C */	beq lbl_805473A8
/* 80547370  40 80 00 10 */	bge lbl_80547380
/* 80547374  2C 00 00 04 */	cmpwi r0, 4
/* 80547378  40 80 00 20 */	bge lbl_80547398
/* 8054737C  48 00 00 2C */	b lbl_805473A8
lbl_80547380:
/* 80547380  2C 00 00 08 */	cmpwi r0, 8
/* 80547384  40 80 00 24 */	bge lbl_805473A8
/* 80547388  3C 60 80 54 */	lis r3, aNSC_set_talk_info_show_item@ha /* 0x80546EB4@ha */
/* 8054738C  38 03 6E B4 */	addi r0, r3, aNSC_set_talk_info_show_item@l /* 0x80546EB4@l */
/* 80547390  7C 05 03 78 */	mr r5, r0
/* 80547394  48 00 00 20 */	b lbl_805473B4
lbl_80547398:
/* 80547398  3C 60 80 54 */	lis r3, aNSC_set_talk_info_show_cloth@ha /* 0x80546EEC@ha */
/* 8054739C  38 03 6E EC */	addi r0, r3, aNSC_set_talk_info_show_cloth@l /* 0x80546EEC@l */
/* 805473A0  7C 05 03 78 */	mr r5, r0
/* 805473A4  48 00 00 10 */	b lbl_805473B4
lbl_805473A8:
/* 805473A8  3C 60 80 54 */	lis r3, aNSC_set_talk_info_sell_item@ha /* 0x80546F24@ha */
/* 805473AC  38 03 6F 24 */	addi r0, r3, aNSC_set_talk_info_sell_item@l /* 0x80546F24@l */
/* 805473B0  7C 05 03 78 */	mr r5, r0
lbl_805473B4:
/* 805473B4  7F C4 F3 78 */	mr r4, r30
/* 805473B8  38 60 00 08 */	li r3, 8
/* 805473BC  4B E5 2D A1 */	bl mDemo_Request
/* 805473C0  38 00 FF FF */	li r0, -1
/* 805473C4  90 1E 09 C0 */	stw r0, 0x9c0(r30)
lbl_805473C8:
/* 805473C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805473CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805473D0  3C 63 00 02 */	addis r3, r3, 2
/* 805473D4  80 63 60 F8 */	lwz r3, 0x60f8(r3)
/* 805473D8  28 03 00 00 */	cmplwi r3, 0
/* 805473DC  41 82 00 30 */	beq lbl_8054740C
/* 805473E0  81 83 00 00 */	lwz r12, 0(r3)
/* 805473E4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D008@ha */
/* 805473E8  38 63 D0 08 */	addi r3, r3, 0xD008 /* 0x0000D008@l */
/* 805473EC  7D 89 03 A6 */	mtctr r12
/* 805473F0  4E 80 04 21 */	bctrl 
/* 805473F4  2C 03 00 00 */	cmpwi r3, 0
/* 805473F8  40 82 00 14 */	bne lbl_8054740C
/* 805473FC  3C 60 80 54 */	lis r3, aNSC_set_talk_info_message_ctrl_aprilfool@ha /* 0x8054700C@ha */
/* 80547400  38 03 70 0C */	addi r0, r3, aNSC_set_talk_info_message_ctrl_aprilfool@l /* 0x8054700C@l */
/* 80547404  7C 05 03 78 */	mr r5, r0
/* 80547408  48 00 00 2C */	b lbl_80547434
lbl_8054740C:
/* 8054740C  88 1E 09 B9 */	lbz r0, 0x9b9(r30)
/* 80547410  28 00 00 01 */	cmplwi r0, 1
/* 80547414  40 82 00 14 */	bne lbl_80547428
/* 80547418  3C 60 80 54 */	lis r3, aNSC_set_talk_info_message_ctrl_tokubai@ha /* 0x80547054@ha */
/* 8054741C  38 03 70 54 */	addi r0, r3, aNSC_set_talk_info_message_ctrl_tokubai@l /* 0x80547054@l */
/* 80547420  7C 05 03 78 */	mr r5, r0
/* 80547424  48 00 00 10 */	b lbl_80547434
lbl_80547428:
/* 80547428  3C 60 80 54 */	lis r3, aNSC_set_talk_info_message_ctrl@ha /* 0x80546FE4@ha */
/* 8054742C  38 03 6F E4 */	addi r0, r3, aNSC_set_talk_info_message_ctrl@l /* 0x80546FE4@l */
/* 80547430  7C 05 03 78 */	mr r5, r0
lbl_80547434:
/* 80547434  7F C4 F3 78 */	mr r4, r30
/* 80547438  38 60 00 07 */	li r3, 7
/* 8054743C  4B E5 2D 21 */	bl mDemo_Request
lbl_80547440:
/* 80547440  7F E3 FB 78 */	mr r3, r31
/* 80547444  39 61 00 40 */	addi r11, r1, 0x40
/* 80547448  4B B5 3A D1 */	bl func_8009AF18
/* 8054744C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80547450  7C 08 03 A6 */	mtlr r0
/* 80547454  38 21 00 40 */	addi r1, r1, 0x40
/* 80547458  4E 80 00 20 */	blr 
