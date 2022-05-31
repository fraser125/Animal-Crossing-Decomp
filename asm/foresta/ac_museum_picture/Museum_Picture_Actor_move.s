lbl_8042F494:
/* 8042F494  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8042F498  7C 08 02 A6 */	mflr r0
/* 8042F49C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8042F4A0  39 61 00 40 */	addi r11, r1, 0x40
/* 8042F4A4  4B C6 BA 21 */	bl func_8009AEC4
/* 8042F4A8  7C 7B 1B 78 */	mr r27, r3
/* 8042F4AC  7C 9C 23 78 */	mr r28, r4
/* 8042F4B0  7F 64 DB 78 */	mr r4, r27
/* 8042F4B4  38 60 00 08 */	li r3, 8
/* 8042F4B8  4B F6 AD AD */	bl mDemo_Check
/* 8042F4BC  2C 03 00 00 */	cmpwi r3, 0
/* 8042F4C0  41 82 00 E0 */	beq lbl_8042F5A0
/* 8042F4C4  7F 83 E3 78 */	mr r3, r28
/* 8042F4C8  4B FA A1 79 */	bl get_player_actor_withoutCheck
/* 8042F4CC  3C 80 80 64 */	lis r4, lit_577@ha /* 0x80644234@ha */
/* 8042F4D0  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 8042F4D4  38 C4 42 34 */	addi r6, r4, lit_577@l /* 0x80644234@l */
/* 8042F4D8  3C A0 80 64 */	lis r5, lit_514@ha /* 0x8064420C@ha */
/* 8042F4DC  C8 A6 00 00 */	lfd f5, 0(r6)
/* 8042F4E0  38 C5 42 0C */	addi r6, r5, lit_514@l /* 0x8064420C@l */
/* 8042F4E4  3C 80 80 64 */	lis r4, lit_515@ha /* 0x80644214@ha */
/* 8042F4E8  C8 86 00 00 */	lfd f4, 0(r6)
/* 8042F4EC  FC 40 28 34 */	frsqrte f2, f5
/* 8042F4F0  38 A4 42 14 */	addi r5, r4, lit_515@l /* 0x80644214@l */
/* 8042F4F4  C8 65 00 00 */	lfd f3, 0(r5)
/* 8042F4F8  3C 80 80 64 */	lis r4, lit_578@ha /* 0x8064423C@ha */
/* 8042F4FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8042F500  38 A0 08 00 */	li r5, 0x800
/* 8042F504  FC 22 00 B2 */	fmul f1, f2, f2
/* 8042F508  A0 03 00 E0 */	lhz r0, 0xe0(r3)
/* 8042F50C  C0 04 42 3C */	lfs f0, lit_578@l(r4)  /* 0x8064423C@l */
/* 8042F510  38 61 00 0E */	addi r3, r1, 0xe
/* 8042F514  FC 44 00 B2 */	fmul f2, f4, f2
/* 8042F518  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8042F51C  FC 25 00 72 */	fmul f1, f5, f1
/* 8042F520  38 80 80 00 */	li r4, -32768
/* 8042F524  38 C0 00 00 */	li r6, 0
/* 8042F528  FC 23 08 28 */	fsub f1, f3, f1
/* 8042F52C  FC 42 00 72 */	fmul f2, f2, f1
/* 8042F530  FC 22 00 B2 */	fmul f1, f2, f2
/* 8042F534  FC 44 00 B2 */	fmul f2, f4, f2
/* 8042F538  FC 25 00 72 */	fmul f1, f5, f1
/* 8042F53C  FC 23 08 28 */	fsub f1, f3, f1
/* 8042F540  FC 42 00 72 */	fmul f2, f2, f1
/* 8042F544  FC 22 00 B2 */	fmul f1, f2, f2
/* 8042F548  FC 44 00 B2 */	fmul f2, f4, f2
/* 8042F54C  FC 25 00 72 */	fmul f1, f5, f1
/* 8042F550  FC 23 08 28 */	fsub f1, f3, f1
/* 8042F554  FC 22 00 72 */	fmul f1, f2, f1
/* 8042F558  FC 25 00 72 */	fmul f1, f5, f1
/* 8042F55C  FC 20 08 18 */	frsp f1, f1
/* 8042F560  D0 21 00 08 */	stfs f1, 8(r1)
/* 8042F564  C0 21 00 08 */	lfs f1, 8(r1)
/* 8042F568  EC 20 08 28 */	fsubs f1, f0, f1
/* 8042F56C  4B F8 BD A5 */	bl add_calc_short_angle2
/* 8042F570  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8042F574  83 23 52 F0 */	lwz r25, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 8042F578  7F 23 CB 78 */	mr r3, r25
/* 8042F57C  4B FA A0 C5 */	bl get_player_actor_withoutCheck
/* 8042F580  81 83 13 10 */	lwz r12, 0x1310(r3)
/* 8042F584  7F 23 CB 78 */	mr r3, r25
/* 8042F588  38 A1 00 0C */	addi r5, r1, 0xc
/* 8042F58C  38 80 00 00 */	li r4, 0
/* 8042F590  38 C0 00 20 */	li r6, 0x20
/* 8042F594  7D 89 03 A6 */	mtctr r12
/* 8042F598  4E 80 04 21 */	bctrl 
/* 8042F59C  48 00 01 60 */	b lbl_8042F6FC
lbl_8042F5A0:
/* 8042F5A0  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 8042F5A4  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 8042F5A8  4B F6 69 69 */	bl chkTrigger
/* 8042F5AC  2C 03 00 00 */	cmpwi r3, 0
/* 8042F5B0  41 82 01 4C */	beq lbl_8042F6FC
/* 8042F5B4  4B F6 8E 45 */	bl mDemo_Get_talk_actor
/* 8042F5B8  28 03 00 00 */	cmplwi r3, 0
/* 8042F5BC  40 82 01 40 */	bne lbl_8042F6FC
/* 8042F5C0  3C 60 80 68 */	lis r3, aMP_art_data_table@ha /* 0x80684D5C@ha */
/* 8042F5C4  3B A0 00 00 */	li r29, 0
/* 8042F5C8  3B E3 4D 5C */	addi r31, r3, aMP_art_data_table@l /* 0x80684D5C@l */
/* 8042F5CC  3B 40 00 00 */	li r26, 0
lbl_8042F5D0:
/* 8042F5D0  7F A3 EB 78 */	mr r3, r29
/* 8042F5D4  4B F9 7E 55 */	bl mMmd_ArtInfo
/* 8042F5D8  7C BF D2 14 */	add r5, r31, r26
/* 8042F5DC  7C 7E 1B 78 */	mr r30, r3
/* 8042F5E0  7F 84 E3 78 */	mr r4, r28
/* 8042F5E4  38 65 00 08 */	addi r3, r5, 8
/* 8042F5E8  4B FF FD 81 */	bl aMP_CheckTalkAbleDist
/* 8042F5EC  2C 03 00 00 */	cmpwi r3, 0
/* 8042F5F0  41 82 00 FC */	beq lbl_8042F6EC
/* 8042F5F4  2C 1E 00 00 */	cmpwi r30, 0
/* 8042F5F8  40 82 00 0C */	bne lbl_8042F604
/* 8042F5FC  38 00 2F A1 */	li r0, 0x2fa1
/* 8042F600  48 00 00 14 */	b lbl_8042F614
lbl_8042F604:
/* 8042F604  20 1E 00 05 */	subfic r0, r30, 5
/* 8042F608  7C 00 00 34 */	cntlzw r0, r0
/* 8042F60C  54 03 D9 7E */	srwi r3, r0, 5
/* 8042F610  38 03 2F 9F */	addi r0, r3, 0x2f9f
lbl_8042F614:
/* 8042F614  3C 60 80 43 */	lis r3, aMP_SetTalkInfo@ha /* 0x8042F43C@ha */
/* 8042F618  90 1B 01 74 */	stw r0, 0x174(r27)
/* 8042F61C  38 A3 F4 3C */	addi r5, r3, aMP_SetTalkInfo@l /* 0x8042F43C@l */
/* 8042F620  7F 64 DB 78 */	mr r4, r27
/* 8042F624  38 60 00 08 */	li r3, 8
/* 8042F628  4B F6 AB 35 */	bl mDemo_Request
/* 8042F62C  2C 03 00 00 */	cmpwi r3, 0
/* 8042F630  41 82 00 BC */	beq lbl_8042F6EC
/* 8042F634  2C 1E 00 01 */	cmpwi r30, 1
/* 8042F638  41 80 00 B4 */	blt lbl_8042F6EC
/* 8042F63C  2C 1E 00 05 */	cmpwi r30, 5
/* 8042F640  41 81 00 AC */	bgt lbl_8042F6EC
/* 8042F644  2C 1D 00 00 */	cmpwi r29, 0
/* 8042F648  38 00 00 00 */	li r0, 0
/* 8042F64C  41 80 00 10 */	blt lbl_8042F65C
/* 8042F650  2C 1D 00 0F */	cmpwi r29, 0xf
/* 8042F654  40 80 00 08 */	bge lbl_8042F65C
/* 8042F658  38 00 00 01 */	li r0, 1
lbl_8042F65C:
/* 8042F65C  2C 00 00 00 */	cmpwi r0, 0
/* 8042F660  38 00 12 AC */	li r0, 0x12ac
/* 8042F664  41 82 00 10 */	beq lbl_8042F674
/* 8042F668  57 A3 14 3A */	rlwinm r3, r29, 2, 0x10, 0x1d
/* 8042F66C  38 03 12 AC */	addi r0, r3, 0x12ac
/* 8042F670  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8042F674:
/* 8042F674  3C 60 81 1D */	lis r3, item_name@ha /* 0x811CDFA8@ha */
/* 8042F678  54 19 04 3E */	clrlwi r25, r0, 0x10
/* 8042F67C  38 63 DF A8 */	addi r3, r3, item_name@l /* 0x811CDFA8@l */
/* 8042F680  7F 24 CB 78 */	mr r4, r25
/* 8042F684  4B F8 63 21 */	bl mIN_copy_name_str
/* 8042F688  7F 23 CB 78 */	mr r3, r25
/* 8042F68C  4B F8 64 8D */	bl mIN_get_item_article
/* 8042F690  7C 79 1B 78 */	mr r25, r3
/* 8042F694  4B F9 00 15 */	bl func_803BF6A8
/* 8042F698  3C 80 81 1D */	lis r4, item_name@ha /* 0x811CDFA8@ha */
/* 8042F69C  7F 27 CB 78 */	mr r7, r25
/* 8042F6A0  38 A4 DF A8 */	addi r5, r4, item_name@l /* 0x811CDFA8@l */
/* 8042F6A4  38 C0 00 10 */	li r6, 0x10
/* 8042F6A8  38 80 00 00 */	li r4, 0
/* 8042F6AC  4B F9 07 A5 */	bl mMsg_Set_item_str_art
/* 8042F6B0  2C 1E 00 01 */	cmpwi r30, 1
/* 8042F6B4  41 80 00 38 */	blt lbl_8042F6EC
/* 8042F6B8  2C 1E 00 04 */	cmpwi r30, 4
/* 8042F6BC  41 81 00 30 */	bgt lbl_8042F6EC
/* 8042F6C0  4B F8 FF E9 */	bl func_803BF6A8
/* 8042F6C4  38 1E FF FF */	addi r0, r30, -1
/* 8042F6C8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8042F6CC  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 8042F6D0  38 80 00 00 */	li r4, 0
/* 8042F6D4  1C E0 24 40 */	mulli r7, r0, 0x2440
/* 8042F6D8  38 05 85 38 */	addi r0, r5, common_data@l /* 0x81138538@l */
/* 8042F6DC  38 C0 00 08 */	li r6, 8
/* 8042F6E0  7C A0 3A 14 */	add r5, r0, r7
/* 8042F6E4  38 A5 00 20 */	addi r5, r5, 0x20
/* 8042F6E8  4B F9 05 6D */	bl mMsg_Set_free_str
lbl_8042F6EC:
/* 8042F6EC  3B BD 00 01 */	addi r29, r29, 1
/* 8042F6F0  3B 5A 00 0C */	addi r26, r26, 0xc
/* 8042F6F4  2C 1D 00 0F */	cmpwi r29, 0xf
/* 8042F6F8  41 80 FE D8 */	blt lbl_8042F5D0
lbl_8042F6FC:
/* 8042F6FC  39 61 00 40 */	addi r11, r1, 0x40
/* 8042F700  4B C6 B8 11 */	bl func_8009AF10
/* 8042F704  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8042F708  7C 08 03 A6 */	mtlr r0
/* 8042F70C  38 21 00 40 */	addi r1, r1, 0x40
/* 8042F710  4E 80 00 20 */	blr 
