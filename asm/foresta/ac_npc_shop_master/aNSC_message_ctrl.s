lbl_80578614:
/* 80578614  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80578618  7C 08 02 A6 */	mflr r0
/* 8057861C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80578620  39 61 00 40 */	addi r11, r1, 0x40
/* 80578624  4B B2 28 A9 */	bl func_8009AECC
/* 80578628  7C 9D 23 78 */	mr r29, r4
/* 8057862C  7C 7E 1B 78 */	mr r30, r3
/* 80578630  7F A3 EB 78 */	mr r3, r29
/* 80578634  4B E6 10 0D */	bl get_player_actor_withoutCheck
/* 80578638  7C 7C 1B 79 */	or. r28, r3, r3
/* 8057863C  3B E0 00 00 */	li r31, 0
/* 80578640  41 82 03 98 */	beq lbl_805789D8
/* 80578644  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80578648  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057864C  3F 63 00 02 */	addis r27, r3, 2
/* 80578650  80 1B 60 60 */	lwz r0, 0x6060(r27)
/* 80578654  28 00 00 00 */	cmplwi r0, 0
/* 80578658  41 82 03 80 */	beq lbl_805789D8
/* 8057865C  A0 1C 13 94 */	lhz r0, 0x1394(r28)
/* 80578660  28 00 40 81 */	cmplwi r0, 0x4081
/* 80578664  40 82 00 1C */	bne lbl_80578680
/* 80578668  7F C3 F3 78 */	mr r3, r30
/* 8057866C  7F A4 EB 78 */	mr r4, r29
/* 80578670  38 A0 00 43 */	li r5, 0x43
/* 80578674  48 00 3E 41 */	bl aNSC_setupAction
/* 80578678  3B E0 00 01 */	li r31, 1
/* 8057867C  48 00 03 5C */	b lbl_805789D8
lbl_80578680:
/* 80578680  7F C4 F3 78 */	mr r4, r30
/* 80578684  38 60 00 08 */	li r3, 8
/* 80578688  4B E2 1B DD */	bl mDemo_Check
/* 8057868C  2C 03 00 01 */	cmpwi r3, 1
/* 80578690  40 82 00 E8 */	bne lbl_80578778
/* 80578694  4B E2 1D 7D */	bl mDemo_Check_ListenAble
/* 80578698  2C 03 00 00 */	cmpwi r3, 0
/* 8057869C  40 82 03 3C */	bne lbl_805789D8
/* 805786A0  7F C3 F3 78 */	mr r3, r30
/* 805786A4  4B FF EA 89 */	bl aNSC_calc_talk_start_tim
/* 805786A8  3C 60 80 65 */	lis r3, lit_1128@ha /* 0x806499F4@ha */
/* 805786AC  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 805786B0  C0 03 99 F4 */	lfs f0, lit_1128@l(r3)  /* 0x806499F4@l */
/* 805786B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805786B8  41 80 00 10 */	blt lbl_805786C8
/* 805786BC  80 1E 09 C0 */	lwz r0, 0x9c0(r30)
/* 805786C0  2C 00 00 00 */	cmpwi r0, 0
/* 805786C4  40 82 03 14 */	bne lbl_805789D8
lbl_805786C8:
/* 805786C8  A8 9E 09 A6 */	lha r4, 0x9a6(r30)
/* 805786CC  38 7E 00 DE */	addi r3, r30, 0xde
/* 805786D0  38 A0 08 00 */	li r5, 0x800
/* 805786D4  4B E4 24 71 */	bl chase_angle
/* 805786D8  2C 03 00 01 */	cmpwi r3, 1
/* 805786DC  40 82 00 90 */	bne lbl_8057876C
/* 805786E0  A0 7E 09 B4 */	lhz r3, 0x9b4(r30)
/* 805786E4  28 03 00 00 */	cmplwi r3, 0
/* 805786E8  41 82 00 70 */	beq lbl_80578758
/* 805786EC  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 805786F0  3B 60 00 1E */	li r27, 0x1e
/* 805786F4  2C 00 00 02 */	cmpwi r0, 2
/* 805786F8  40 82 00 50 */	bne lbl_80578748
/* 805786FC  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 80578700  2C 00 00 05 */	cmpwi r0, 5
/* 80578704  41 82 00 24 */	beq lbl_80578728
/* 80578708  40 80 00 10 */	bge lbl_80578718
/* 8057870C  2C 00 00 04 */	cmpwi r0, 4
/* 80578710  40 80 00 10 */	bge lbl_80578720
/* 80578714  48 00 00 14 */	b lbl_80578728
lbl_80578718:
/* 80578718  2C 00 00 08 */	cmpwi r0, 8
/* 8057871C  40 80 00 0C */	bge lbl_80578728
lbl_80578720:
/* 80578720  3B 60 00 26 */	li r27, 0x26
/* 80578724  48 00 00 24 */	b lbl_80578748
lbl_80578728:
/* 80578728  28 03 22 2D */	cmplwi r3, 0x222d
/* 8057872C  41 80 00 1C */	blt lbl_80578748
/* 80578730  28 03 22 38 */	cmplwi r3, 0x2238
/* 80578734  41 81 00 14 */	bgt lbl_80578748
/* 80578738  4B E3 B3 D1 */	bl mLd_PlayerManKindCheck
/* 8057873C  2C 03 00 00 */	cmpwi r3, 0
/* 80578740  41 82 00 08 */	beq lbl_80578748
/* 80578744  3B 60 00 0F */	li r27, 0xf
lbl_80578748:
/* 80578748  7F C3 F3 78 */	mr r3, r30
/* 8057874C  7F A4 EB 78 */	mr r4, r29
/* 80578750  7F 65 DB 78 */	mr r5, r27
/* 80578754  48 00 3D 61 */	bl aNSC_setupAction
lbl_80578758:
/* 80578758  7F C3 F3 78 */	mr r3, r30
/* 8057875C  4B FF EA 6D */	bl aNSC_Set_ListenAble
/* 80578760  38 00 FF FF */	li r0, -1
/* 80578764  3B E0 00 01 */	li r31, 1
/* 80578768  90 1E 09 C0 */	stw r0, 0x9c0(r30)
lbl_8057876C:
/* 8057876C  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 80578770  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 80578774  48 00 02 64 */	b lbl_805789D8
lbl_80578778:
/* 80578778  7F C4 F3 78 */	mr r4, r30
/* 8057877C  38 60 00 07 */	li r3, 7
/* 80578780  4B E2 1A E5 */	bl mDemo_Check
/* 80578784  2C 03 00 01 */	cmpwi r3, 1
/* 80578788  40 82 00 BC */	bne lbl_80578844
/* 8057878C  4B E2 1C 85 */	bl mDemo_Check_ListenAble
/* 80578790  2C 03 00 00 */	cmpwi r3, 0
/* 80578794  40 82 02 44 */	bne lbl_805789D8
/* 80578798  A8 9E 09 A6 */	lha r4, 0x9a6(r30)
/* 8057879C  38 7E 00 DE */	addi r3, r30, 0xde
/* 805787A0  38 A0 08 00 */	li r5, 0x800
/* 805787A4  4B E4 23 A1 */	bl chase_angle
/* 805787A8  2C 03 00 01 */	cmpwi r3, 1
/* 805787AC  40 82 00 8C */	bne lbl_80578838
/* 805787B0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805787B4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805787B8  3F 83 00 02 */	addis r28, r3, 2
/* 805787BC  80 7C 60 F8 */	lwz r3, 0x60f8(r28)
/* 805787C0  28 03 00 00 */	cmplwi r3, 0
/* 805787C4  41 82 00 40 */	beq lbl_80578804
/* 805787C8  81 83 00 00 */	lwz r12, 0(r3)
/* 805787CC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D008@ha */
/* 805787D0  38 63 D0 08 */	addi r3, r3, 0xD008 /* 0x0000D008@l */
/* 805787D4  7D 89 03 A6 */	mtctr r12
/* 805787D8  4E 80 04 21 */	bctrl 
/* 805787DC  2C 03 00 00 */	cmpwi r3, 0
/* 805787E0  40 82 00 24 */	bne lbl_80578804
/* 805787E4  80 9C 60 F8 */	lwz r4, 0x60f8(r28)
/* 805787E8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D008@ha */
/* 805787EC  38 63 D0 08 */	addi r3, r3, 0xD008 /* 0x0000D008@l */
/* 805787F0  3B 60 00 0F */	li r27, 0xf
/* 805787F4  81 84 00 04 */	lwz r12, 4(r4)
/* 805787F8  7D 89 03 A6 */	mtctr r12
/* 805787FC  4E 80 04 21 */	bctrl 
/* 80578800  48 00 00 1C */	b lbl_8057881C
lbl_80578804:
/* 80578804  88 1E 09 B9 */	lbz r0, 0x9b9(r30)
/* 80578808  28 00 00 01 */	cmplwi r0, 1
/* 8057880C  40 82 00 0C */	bne lbl_80578818
/* 80578810  3B 60 00 0F */	li r27, 0xf
/* 80578814  48 00 00 08 */	b lbl_8057881C
lbl_80578818:
/* 80578818  3B 60 00 0D */	li r27, 0xd
lbl_8057881C:
/* 8057881C  7F C3 F3 78 */	mr r3, r30
/* 80578820  7F A4 EB 78 */	mr r4, r29
/* 80578824  7F 65 DB 78 */	mr r5, r27
/* 80578828  48 00 3C 8D */	bl aNSC_setupAction
/* 8057882C  7F C3 F3 78 */	mr r3, r30
/* 80578830  4B FF E9 99 */	bl aNSC_Set_ListenAble
/* 80578834  3B E0 00 01 */	li r31, 1
lbl_80578838:
/* 80578838  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8057883C  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 80578840  48 00 01 98 */	b lbl_805789D8
lbl_80578844:
/* 80578844  38 00 00 00 */	li r0, 0
/* 80578848  B0 1E 09 B4 */	sth r0, 0x9b4(r30)
/* 8057884C  80 1C 13 8C */	lwz r0, 0x138c(r28)
/* 80578850  2C 00 00 01 */	cmpwi r0, 1
/* 80578854  40 82 01 0C */	bne lbl_80578960
/* 80578858  80 DC 13 98 */	lwz r6, 0x1398(r28)
/* 8057885C  38 61 00 0C */	addi r3, r1, 0xc
/* 80578860  80 1C 13 9C */	lwz r0, 0x139c(r28)
/* 80578864  38 81 00 08 */	addi r4, r1, 8
/* 80578868  38 A1 00 10 */	addi r5, r1, 0x10
/* 8057886C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80578870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80578874  80 1C 13 A0 */	lwz r0, 0x13a0(r28)
/* 80578878  90 01 00 18 */	stw r0, 0x18(r1)
/* 8057887C  4B E2 CA ED */	bl mFI_Wpos2UtNum
/* 80578880  80 9B 60 60 */	lwz r4, 0x6060(r27)
/* 80578884  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80578888  81 84 00 04 */	lwz r12, 4(r4)
/* 8057888C  80 81 00 08 */	lwz r4, 8(r1)
/* 80578890  7D 89 03 A6 */	mtctr r12
/* 80578894  4E 80 04 21 */	bctrl 
/* 80578898  54 66 04 3F */	clrlwi. r6, r3, 0x10
/* 8057889C  41 82 00 C4 */	beq lbl_80578960
/* 805788A0  28 06 FF FF */	cmplwi r6, 0xffff
/* 805788A4  41 82 00 BC */	beq lbl_80578960
/* 805788A8  B0 7E 09 B4 */	sth r3, 0x9b4(r30)
/* 805788AC  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 805788B0  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 805788B4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805788B8  38 84 B5 4C */	addi r4, r4, none_proc1@l /* 0x803BB54C@l */
/* 805788BC  2C 00 00 02 */	cmpwi r0, 2
/* 805788C0  98 7E 09 B6 */	stb r3, 0x9b6(r30)
/* 805788C4  7C 85 23 78 */	mr r5, r4
/* 805788C8  80 61 00 08 */	lwz r3, 8(r1)
/* 805788CC  98 7E 09 B7 */	stb r3, 0x9b7(r30)
/* 805788D0  41 82 00 2C */	beq lbl_805788FC
/* 805788D4  40 80 00 10 */	bge lbl_805788E4
/* 805788D8  2C 00 00 01 */	cmpwi r0, 1
/* 805788DC  40 80 00 10 */	bge lbl_805788EC
/* 805788E0  48 00 00 6C */	b lbl_8057894C
lbl_805788E4:
/* 805788E4  2C 00 00 04 */	cmpwi r0, 4
/* 805788E8  40 80 00 64 */	bge lbl_8057894C
lbl_805788EC:
/* 805788EC  3C 60 80 58 */	lis r3, aNSC_set_talk_info_sell_item@ha /* 0x805784BC@ha */
/* 805788F0  38 03 84 BC */	addi r0, r3, aNSC_set_talk_info_sell_item@l /* 0x805784BC@l */
/* 805788F4  7C 05 03 78 */	mr r5, r0
/* 805788F8  48 00 00 54 */	b lbl_8057894C
lbl_805788FC:
/* 805788FC  54 C0 C7 3E */	rlwinm r0, r6, 0x18, 0x1c, 0x1f
/* 80578900  2C 00 00 05 */	cmpwi r0, 5
/* 80578904  41 82 00 3C */	beq lbl_80578940
/* 80578908  40 80 00 10 */	bge lbl_80578918
/* 8057890C  2C 00 00 04 */	cmpwi r0, 4
/* 80578910  40 80 00 20 */	bge lbl_80578930
/* 80578914  48 00 00 2C */	b lbl_80578940
lbl_80578918:
/* 80578918  2C 00 00 08 */	cmpwi r0, 8
/* 8057891C  40 80 00 24 */	bge lbl_80578940
/* 80578920  3C 60 80 58 */	lis r3, aNSC_set_talk_info_show_item@ha /* 0x8057844C@ha */
/* 80578924  38 03 84 4C */	addi r0, r3, aNSC_set_talk_info_show_item@l /* 0x8057844C@l */
/* 80578928  7C 05 03 78 */	mr r5, r0
/* 8057892C  48 00 00 20 */	b lbl_8057894C
lbl_80578930:
/* 80578930  3C 60 80 58 */	lis r3, aNSC_set_talk_info_show_cloth@ha /* 0x80578484@ha */
/* 80578934  38 03 84 84 */	addi r0, r3, aNSC_set_talk_info_show_cloth@l /* 0x80578484@l */
/* 80578938  7C 05 03 78 */	mr r5, r0
/* 8057893C  48 00 00 10 */	b lbl_8057894C
lbl_80578940:
/* 80578940  3C 60 80 58 */	lis r3, aNSC_set_talk_info_sell_item@ha /* 0x805784BC@ha */
/* 80578944  38 03 84 BC */	addi r0, r3, aNSC_set_talk_info_sell_item@l /* 0x805784BC@l */
/* 80578948  7C 05 03 78 */	mr r5, r0
lbl_8057894C:
/* 8057894C  7F C4 F3 78 */	mr r4, r30
/* 80578950  38 60 00 08 */	li r3, 8
/* 80578954  4B E2 18 09 */	bl mDemo_Request
/* 80578958  38 00 FF FF */	li r0, -1
/* 8057895C  90 1E 09 C0 */	stw r0, 0x9c0(r30)
lbl_80578960:
/* 80578960  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80578964  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80578968  3C 63 00 02 */	addis r3, r3, 2
/* 8057896C  80 63 60 F8 */	lwz r3, 0x60f8(r3)
/* 80578970  28 03 00 00 */	cmplwi r3, 0
/* 80578974  41 82 00 30 */	beq lbl_805789A4
/* 80578978  81 83 00 00 */	lwz r12, 0(r3)
/* 8057897C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D008@ha */
/* 80578980  38 63 D0 08 */	addi r3, r3, 0xD008 /* 0x0000D008@l */
/* 80578984  7D 89 03 A6 */	mtctr r12
/* 80578988  4E 80 04 21 */	bctrl 
/* 8057898C  2C 03 00 00 */	cmpwi r3, 0
/* 80578990  40 82 00 14 */	bne lbl_805789A4
/* 80578994  3C 60 80 58 */	lis r3, aNSC_set_talk_info_message_ctrl_aprilfool@ha /* 0x805785A4@ha */
/* 80578998  38 03 85 A4 */	addi r0, r3, aNSC_set_talk_info_message_ctrl_aprilfool@l /* 0x805785A4@l */
/* 8057899C  7C 05 03 78 */	mr r5, r0
/* 805789A0  48 00 00 2C */	b lbl_805789CC
lbl_805789A4:
/* 805789A4  88 1E 09 B9 */	lbz r0, 0x9b9(r30)
/* 805789A8  28 00 00 01 */	cmplwi r0, 1
/* 805789AC  40 82 00 14 */	bne lbl_805789C0
/* 805789B0  3C 60 80 58 */	lis r3, aNSC_set_talk_info_message_ctrl_tokubai@ha /* 0x805785EC@ha */
/* 805789B4  38 03 85 EC */	addi r0, r3, aNSC_set_talk_info_message_ctrl_tokubai@l /* 0x805785EC@l */
/* 805789B8  7C 05 03 78 */	mr r5, r0
/* 805789BC  48 00 00 10 */	b lbl_805789CC
lbl_805789C0:
/* 805789C0  3C 60 80 58 */	lis r3, aNSC_set_talk_info_message_ctrl@ha /* 0x8057857C@ha */
/* 805789C4  38 03 85 7C */	addi r0, r3, aNSC_set_talk_info_message_ctrl@l /* 0x8057857C@l */
/* 805789C8  7C 05 03 78 */	mr r5, r0
lbl_805789CC:
/* 805789CC  7F C4 F3 78 */	mr r4, r30
/* 805789D0  38 60 00 07 */	li r3, 7
/* 805789D4  4B E2 17 89 */	bl mDemo_Request
lbl_805789D8:
/* 805789D8  7F E3 FB 78 */	mr r3, r31
/* 805789DC  39 61 00 40 */	addi r11, r1, 0x40
/* 805789E0  4B B2 25 39 */	bl func_8009AF18
/* 805789E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805789E8  7C 08 03 A6 */	mtlr r0
/* 805789EC  38 21 00 40 */	addi r1, r1, 0x40
/* 805789F0  4E 80 00 20 */	blr 
