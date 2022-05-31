lbl_80582120:
/* 80582120  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80582124  7C 08 02 A6 */	mflr r0
/* 80582128  90 01 00 44 */	stw r0, 0x44(r1)
/* 8058212C  39 61 00 40 */	addi r11, r1, 0x40
/* 80582130  4B B1 8D 9D */	bl func_8009AECC
/* 80582134  7C 9D 23 78 */	mr r29, r4
/* 80582138  7C 7E 1B 78 */	mr r30, r3
/* 8058213C  7F A3 EB 78 */	mr r3, r29
/* 80582140  4B E5 75 01 */	bl get_player_actor_withoutCheck
/* 80582144  7C 7C 1B 79 */	or. r28, r3, r3
/* 80582148  3B E0 00 00 */	li r31, 0
/* 8058214C  41 82 03 98 */	beq lbl_805824E4
/* 80582150  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80582154  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80582158  3F 63 00 02 */	addis r27, r3, 2
/* 8058215C  80 1B 60 60 */	lwz r0, 0x6060(r27)
/* 80582160  28 00 00 00 */	cmplwi r0, 0
/* 80582164  41 82 03 80 */	beq lbl_805824E4
/* 80582168  A0 1C 13 94 */	lhz r0, 0x1394(r28)
/* 8058216C  28 00 40 81 */	cmplwi r0, 0x4081
/* 80582170  40 82 00 1C */	bne lbl_8058218C
/* 80582174  7F C3 F3 78 */	mr r3, r30
/* 80582178  7F A4 EB 78 */	mr r4, r29
/* 8058217C  38 A0 00 43 */	li r5, 0x43
/* 80582180  48 00 3E 41 */	bl aNSC_setupAction
/* 80582184  3B E0 00 01 */	li r31, 1
/* 80582188  48 00 03 5C */	b lbl_805824E4
lbl_8058218C:
/* 8058218C  7F C4 F3 78 */	mr r4, r30
/* 80582190  38 60 00 08 */	li r3, 8
/* 80582194  4B E1 80 D1 */	bl mDemo_Check
/* 80582198  2C 03 00 01 */	cmpwi r3, 1
/* 8058219C  40 82 00 E8 */	bne lbl_80582284
/* 805821A0  4B E1 82 71 */	bl mDemo_Check_ListenAble
/* 805821A4  2C 03 00 00 */	cmpwi r3, 0
/* 805821A8  40 82 03 3C */	bne lbl_805824E4
/* 805821AC  7F C3 F3 78 */	mr r3, r30
/* 805821B0  4B FF EA 89 */	bl aNSC_calc_talk_start_tim
/* 805821B4  3C 60 80 65 */	lis r3, lit_1168@ha /* 0x80649AC4@ha */
/* 805821B8  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 805821BC  C0 03 9A C4 */	lfs f0, lit_1168@l(r3)  /* 0x80649AC4@l */
/* 805821C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805821C4  41 80 00 10 */	blt lbl_805821D4
/* 805821C8  80 1E 09 C0 */	lwz r0, 0x9c0(r30)
/* 805821CC  2C 00 00 00 */	cmpwi r0, 0
/* 805821D0  40 82 03 14 */	bne lbl_805824E4
lbl_805821D4:
/* 805821D4  A8 9E 09 A6 */	lha r4, 0x9a6(r30)
/* 805821D8  38 7E 00 DE */	addi r3, r30, 0xde
/* 805821DC  38 A0 08 00 */	li r5, 0x800
/* 805821E0  4B E3 89 65 */	bl chase_angle
/* 805821E4  2C 03 00 01 */	cmpwi r3, 1
/* 805821E8  40 82 00 90 */	bne lbl_80582278
/* 805821EC  A0 7E 09 B4 */	lhz r3, 0x9b4(r30)
/* 805821F0  28 03 00 00 */	cmplwi r3, 0
/* 805821F4  41 82 00 70 */	beq lbl_80582264
/* 805821F8  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 805821FC  3B 60 00 1E */	li r27, 0x1e
/* 80582200  2C 00 00 02 */	cmpwi r0, 2
/* 80582204  40 82 00 50 */	bne lbl_80582254
/* 80582208  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 8058220C  2C 00 00 05 */	cmpwi r0, 5
/* 80582210  41 82 00 24 */	beq lbl_80582234
/* 80582214  40 80 00 10 */	bge lbl_80582224
/* 80582218  2C 00 00 04 */	cmpwi r0, 4
/* 8058221C  40 80 00 10 */	bge lbl_8058222C
/* 80582220  48 00 00 14 */	b lbl_80582234
lbl_80582224:
/* 80582224  2C 00 00 08 */	cmpwi r0, 8
/* 80582228  40 80 00 0C */	bge lbl_80582234
lbl_8058222C:
/* 8058222C  3B 60 00 26 */	li r27, 0x26
/* 80582230  48 00 00 24 */	b lbl_80582254
lbl_80582234:
/* 80582234  28 03 22 2D */	cmplwi r3, 0x222d
/* 80582238  41 80 00 1C */	blt lbl_80582254
/* 8058223C  28 03 22 38 */	cmplwi r3, 0x2238
/* 80582240  41 81 00 14 */	bgt lbl_80582254
/* 80582244  4B E3 18 C5 */	bl mLd_PlayerManKindCheck
/* 80582248  2C 03 00 00 */	cmpwi r3, 0
/* 8058224C  41 82 00 08 */	beq lbl_80582254
/* 80582250  3B 60 00 0F */	li r27, 0xf
lbl_80582254:
/* 80582254  7F C3 F3 78 */	mr r3, r30
/* 80582258  7F A4 EB 78 */	mr r4, r29
/* 8058225C  7F 65 DB 78 */	mr r5, r27
/* 80582260  48 00 3D 61 */	bl aNSC_setupAction
lbl_80582264:
/* 80582264  7F C3 F3 78 */	mr r3, r30
/* 80582268  4B FF EA 6D */	bl aNSC_Set_ListenAble
/* 8058226C  38 00 FF FF */	li r0, -1
/* 80582270  3B E0 00 01 */	li r31, 1
/* 80582274  90 1E 09 C0 */	stw r0, 0x9c0(r30)
lbl_80582278:
/* 80582278  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8058227C  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 80582280  48 00 02 64 */	b lbl_805824E4
lbl_80582284:
/* 80582284  7F C4 F3 78 */	mr r4, r30
/* 80582288  38 60 00 07 */	li r3, 7
/* 8058228C  4B E1 7F D9 */	bl mDemo_Check
/* 80582290  2C 03 00 01 */	cmpwi r3, 1
/* 80582294  40 82 00 BC */	bne lbl_80582350
/* 80582298  4B E1 81 79 */	bl mDemo_Check_ListenAble
/* 8058229C  2C 03 00 00 */	cmpwi r3, 0
/* 805822A0  40 82 02 44 */	bne lbl_805824E4
/* 805822A4  A8 9E 09 A6 */	lha r4, 0x9a6(r30)
/* 805822A8  38 7E 00 DE */	addi r3, r30, 0xde
/* 805822AC  38 A0 08 00 */	li r5, 0x800
/* 805822B0  4B E3 88 95 */	bl chase_angle
/* 805822B4  2C 03 00 01 */	cmpwi r3, 1
/* 805822B8  40 82 00 8C */	bne lbl_80582344
/* 805822BC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805822C0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805822C4  3F 83 00 02 */	addis r28, r3, 2
/* 805822C8  80 7C 60 F8 */	lwz r3, 0x60f8(r28)
/* 805822CC  28 03 00 00 */	cmplwi r3, 0
/* 805822D0  41 82 00 40 */	beq lbl_80582310
/* 805822D4  81 83 00 00 */	lwz r12, 0(r3)
/* 805822D8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D008@ha */
/* 805822DC  38 63 D0 08 */	addi r3, r3, 0xD008 /* 0x0000D008@l */
/* 805822E0  7D 89 03 A6 */	mtctr r12
/* 805822E4  4E 80 04 21 */	bctrl 
/* 805822E8  2C 03 00 00 */	cmpwi r3, 0
/* 805822EC  40 82 00 24 */	bne lbl_80582310
/* 805822F0  80 9C 60 F8 */	lwz r4, 0x60f8(r28)
/* 805822F4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D008@ha */
/* 805822F8  38 63 D0 08 */	addi r3, r3, 0xD008 /* 0x0000D008@l */
/* 805822FC  3B 60 00 0F */	li r27, 0xf
/* 80582300  81 84 00 04 */	lwz r12, 4(r4)
/* 80582304  7D 89 03 A6 */	mtctr r12
/* 80582308  4E 80 04 21 */	bctrl 
/* 8058230C  48 00 00 1C */	b lbl_80582328
lbl_80582310:
/* 80582310  88 1E 09 B9 */	lbz r0, 0x9b9(r30)
/* 80582314  28 00 00 01 */	cmplwi r0, 1
/* 80582318  40 82 00 0C */	bne lbl_80582324
/* 8058231C  3B 60 00 0F */	li r27, 0xf
/* 80582320  48 00 00 08 */	b lbl_80582328
lbl_80582324:
/* 80582324  3B 60 00 0D */	li r27, 0xd
lbl_80582328:
/* 80582328  7F C3 F3 78 */	mr r3, r30
/* 8058232C  7F A4 EB 78 */	mr r4, r29
/* 80582330  7F 65 DB 78 */	mr r5, r27
/* 80582334  48 00 3C 8D */	bl aNSC_setupAction
/* 80582338  7F C3 F3 78 */	mr r3, r30
/* 8058233C  4B FF E9 99 */	bl aNSC_Set_ListenAble
/* 80582340  3B E0 00 01 */	li r31, 1
lbl_80582344:
/* 80582344  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 80582348  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 8058234C  48 00 01 98 */	b lbl_805824E4
lbl_80582350:
/* 80582350  38 00 00 00 */	li r0, 0
/* 80582354  B0 1E 09 B4 */	sth r0, 0x9b4(r30)
/* 80582358  80 1C 13 8C */	lwz r0, 0x138c(r28)
/* 8058235C  2C 00 00 01 */	cmpwi r0, 1
/* 80582360  40 82 01 0C */	bne lbl_8058246C
/* 80582364  80 DC 13 98 */	lwz r6, 0x1398(r28)
/* 80582368  38 61 00 0C */	addi r3, r1, 0xc
/* 8058236C  80 1C 13 9C */	lwz r0, 0x139c(r28)
/* 80582370  38 81 00 08 */	addi r4, r1, 8
/* 80582374  38 A1 00 10 */	addi r5, r1, 0x10
/* 80582378  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8058237C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80582380  80 1C 13 A0 */	lwz r0, 0x13a0(r28)
/* 80582384  90 01 00 18 */	stw r0, 0x18(r1)
/* 80582388  4B E2 2F E1 */	bl mFI_Wpos2UtNum
/* 8058238C  80 9B 60 60 */	lwz r4, 0x6060(r27)
/* 80582390  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80582394  81 84 00 04 */	lwz r12, 4(r4)
/* 80582398  80 81 00 08 */	lwz r4, 8(r1)
/* 8058239C  7D 89 03 A6 */	mtctr r12
/* 805823A0  4E 80 04 21 */	bctrl 
/* 805823A4  54 66 04 3F */	clrlwi. r6, r3, 0x10
/* 805823A8  41 82 00 C4 */	beq lbl_8058246C
/* 805823AC  28 06 FF FF */	cmplwi r6, 0xffff
/* 805823B0  41 82 00 BC */	beq lbl_8058246C
/* 805823B4  B0 7E 09 B4 */	sth r3, 0x9b4(r30)
/* 805823B8  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 805823BC  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 805823C0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805823C4  38 84 B5 4C */	addi r4, r4, none_proc1@l /* 0x803BB54C@l */
/* 805823C8  2C 00 00 02 */	cmpwi r0, 2
/* 805823CC  98 7E 09 B6 */	stb r3, 0x9b6(r30)
/* 805823D0  7C 85 23 78 */	mr r5, r4
/* 805823D4  80 61 00 08 */	lwz r3, 8(r1)
/* 805823D8  98 7E 09 B7 */	stb r3, 0x9b7(r30)
/* 805823DC  41 82 00 2C */	beq lbl_80582408
/* 805823E0  40 80 00 10 */	bge lbl_805823F0
/* 805823E4  2C 00 00 01 */	cmpwi r0, 1
/* 805823E8  40 80 00 10 */	bge lbl_805823F8
/* 805823EC  48 00 00 6C */	b lbl_80582458
lbl_805823F0:
/* 805823F0  2C 00 00 04 */	cmpwi r0, 4
/* 805823F4  40 80 00 64 */	bge lbl_80582458
lbl_805823F8:
/* 805823F8  3C 60 80 58 */	lis r3, aNSC_set_talk_info_sell_item@ha /* 0x80581FC8@ha */
/* 805823FC  38 03 1F C8 */	addi r0, r3, aNSC_set_talk_info_sell_item@l /* 0x80581FC8@l */
/* 80582400  7C 05 03 78 */	mr r5, r0
/* 80582404  48 00 00 54 */	b lbl_80582458
lbl_80582408:
/* 80582408  54 C0 C7 3E */	rlwinm r0, r6, 0x18, 0x1c, 0x1f
/* 8058240C  2C 00 00 05 */	cmpwi r0, 5
/* 80582410  41 82 00 3C */	beq lbl_8058244C
/* 80582414  40 80 00 10 */	bge lbl_80582424
/* 80582418  2C 00 00 04 */	cmpwi r0, 4
/* 8058241C  40 80 00 20 */	bge lbl_8058243C
/* 80582420  48 00 00 2C */	b lbl_8058244C
lbl_80582424:
/* 80582424  2C 00 00 08 */	cmpwi r0, 8
/* 80582428  40 80 00 24 */	bge lbl_8058244C
/* 8058242C  3C 60 80 58 */	lis r3, aNSC_set_talk_info_show_item@ha /* 0x80581F58@ha */
/* 80582430  38 03 1F 58 */	addi r0, r3, aNSC_set_talk_info_show_item@l /* 0x80581F58@l */
/* 80582434  7C 05 03 78 */	mr r5, r0
/* 80582438  48 00 00 20 */	b lbl_80582458
lbl_8058243C:
/* 8058243C  3C 60 80 58 */	lis r3, aNSC_set_talk_info_show_cloth@ha /* 0x80581F90@ha */
/* 80582440  38 03 1F 90 */	addi r0, r3, aNSC_set_talk_info_show_cloth@l /* 0x80581F90@l */
/* 80582444  7C 05 03 78 */	mr r5, r0
/* 80582448  48 00 00 10 */	b lbl_80582458
lbl_8058244C:
/* 8058244C  3C 60 80 58 */	lis r3, aNSC_set_talk_info_sell_item@ha /* 0x80581FC8@ha */
/* 80582450  38 03 1F C8 */	addi r0, r3, aNSC_set_talk_info_sell_item@l /* 0x80581FC8@l */
/* 80582454  7C 05 03 78 */	mr r5, r0
lbl_80582458:
/* 80582458  7F C4 F3 78 */	mr r4, r30
/* 8058245C  38 60 00 08 */	li r3, 8
/* 80582460  4B E1 7C FD */	bl mDemo_Request
/* 80582464  38 00 FF FF */	li r0, -1
/* 80582468  90 1E 09 C0 */	stw r0, 0x9c0(r30)
lbl_8058246C:
/* 8058246C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80582470  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80582474  3C 63 00 02 */	addis r3, r3, 2
/* 80582478  80 63 60 F8 */	lwz r3, 0x60f8(r3)
/* 8058247C  28 03 00 00 */	cmplwi r3, 0
/* 80582480  41 82 00 30 */	beq lbl_805824B0
/* 80582484  81 83 00 00 */	lwz r12, 0(r3)
/* 80582488  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D008@ha */
/* 8058248C  38 63 D0 08 */	addi r3, r3, 0xD008 /* 0x0000D008@l */
/* 80582490  7D 89 03 A6 */	mtctr r12
/* 80582494  4E 80 04 21 */	bctrl 
/* 80582498  2C 03 00 00 */	cmpwi r3, 0
/* 8058249C  40 82 00 14 */	bne lbl_805824B0
/* 805824A0  3C 60 80 58 */	lis r3, aNSC_set_talk_info_message_ctrl_aprilfool@ha /* 0x805820B0@ha */
/* 805824A4  38 03 20 B0 */	addi r0, r3, aNSC_set_talk_info_message_ctrl_aprilfool@l /* 0x805820B0@l */
/* 805824A8  7C 05 03 78 */	mr r5, r0
/* 805824AC  48 00 00 2C */	b lbl_805824D8
lbl_805824B0:
/* 805824B0  88 1E 09 B9 */	lbz r0, 0x9b9(r30)
/* 805824B4  28 00 00 01 */	cmplwi r0, 1
/* 805824B8  40 82 00 14 */	bne lbl_805824CC
/* 805824BC  3C 60 80 58 */	lis r3, aNSC_set_talk_info_message_ctrl_tokubai@ha /* 0x805820F8@ha */
/* 805824C0  38 03 20 F8 */	addi r0, r3, aNSC_set_talk_info_message_ctrl_tokubai@l /* 0x805820F8@l */
/* 805824C4  7C 05 03 78 */	mr r5, r0
/* 805824C8  48 00 00 10 */	b lbl_805824D8
lbl_805824CC:
/* 805824CC  3C 60 80 58 */	lis r3, aNSC_set_talk_info_message_ctrl@ha /* 0x80582088@ha */
/* 805824D0  38 03 20 88 */	addi r0, r3, aNSC_set_talk_info_message_ctrl@l /* 0x80582088@l */
/* 805824D4  7C 05 03 78 */	mr r5, r0
lbl_805824D8:
/* 805824D8  7F C4 F3 78 */	mr r4, r30
/* 805824DC  38 60 00 07 */	li r3, 7
/* 805824E0  4B E1 7C 7D */	bl mDemo_Request
lbl_805824E4:
/* 805824E4  7F E3 FB 78 */	mr r3, r31
/* 805824E8  39 61 00 40 */	addi r11, r1, 0x40
/* 805824EC  4B B1 8A 2D */	bl func_8009AF18
/* 805824F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805824F4  7C 08 03 A6 */	mtlr r0
/* 805824F8  38 21 00 40 */	addi r1, r1, 0x40
/* 805824FC  4E 80 00 20 */	blr 
