lbl_80535254:
/* 80535254  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80535258  7C 08 02 A6 */	mflr r0
/* 8053525C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80535260  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80535264  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80535268  39 61 00 30 */	addi r11, r1, 0x30
/* 8053526C  4B B6 5C 59 */	bl func_8009AEC4
/* 80535270  3C A0 80 6A */	lis r5, data_806A1400@ha /* 0x806A1400@ha */
/* 80535274  7C 7B 1B 78 */	mr r27, r3
/* 80535278  7C 9C 23 78 */	mr r28, r4
/* 8053527C  3B C0 00 00 */	li r30, 0
/* 80535280  3B E5 14 00 */	addi r31, r5, data_806A1400@l /* 0x806A1400@l */
/* 80535284  4B E6 5C 35 */	bl mEv_CheckTitleDemo
/* 80535288  2C 03 00 00 */	cmpwi r3, 0
/* 8053528C  41 81 00 10 */	bgt lbl_8053529C
/* 80535290  80 1B 08 40 */	lwz r0, 0x840(r27)
/* 80535294  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80535298  41 82 00 14 */	beq lbl_805352AC
lbl_8053529C:
/* 8053529C  38 00 00 00 */	li r0, 0
/* 805352A0  38 60 00 00 */	li r3, 0
/* 805352A4  98 1B 08 79 */	stb r0, 0x879(r27)
/* 805352A8  48 00 01 D8 */	b lbl_80535480
lbl_805352AC:
/* 805352AC  88 1B 08 79 */	lbz r0, 0x879(r27)
/* 805352B0  28 00 00 01 */	cmplwi r0, 1
/* 805352B4  40 82 00 08 */	bne lbl_805352BC
/* 805352B8  3B C0 00 01 */	li r30, 1
lbl_805352BC:
/* 805352BC  A0 1B 00 06 */	lhz r0, 6(r27)
/* 805352C0  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 805352C4  2C 00 00 0E */	cmpwi r0, 0xe
/* 805352C8  40 82 01 B4 */	bne lbl_8053547C
/* 805352CC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805352D0  80 7B 01 7C */	lwz r3, 0x17c(r27)
/* 805352D4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805352D8  38 A0 00 07 */	li r5, 7
/* 805352DC  3C C4 00 02 */	addis r6, r4, 2
/* 805352E0  38 83 00 10 */	addi r4, r3, 0x10
/* 805352E4  80 66 61 3C */	lwz r3, 0x613c(r6)
/* 805352E8  4B E9 6A 91 */	bl mNpc_GetAnimalMemoryIdx
/* 805352EC  2C 03 FF FF */	cmpwi r3, -1
/* 805352F0  41 82 01 8C */	beq lbl_8053547C
/* 805352F4  80 1B 08 40 */	lwz r0, 0x840(r27)
/* 805352F8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 805352FC  40 82 01 80 */	bne lbl_8053547C
/* 80535300  88 1B 08 79 */	lbz r0, 0x879(r27)
/* 80535304  83 BB 08 74 */	lwz r29, 0x874(r27)
/* 80535308  28 00 00 01 */	cmplwi r0, 1
/* 8053530C  41 82 00 30 */	beq lbl_8053533C
/* 80535310  4B E6 30 E9 */	bl mDemo_Get_talk_actor
/* 80535314  28 03 00 00 */	cmplwi r3, 0
/* 80535318  40 82 00 24 */	bne lbl_8053533C
/* 8053531C  7F 63 DB 78 */	mr r3, r27
/* 80535320  7F 84 E3 78 */	mr r4, r28
/* 80535324  4B FF FE 49 */	bl func_8053516C
/* 80535328  2C 03 00 01 */	cmpwi r3, 1
/* 8053532C  40 82 00 0C */	bne lbl_80535338
/* 80535330  3B BD 00 02 */	addi r29, r29, 2
/* 80535334  48 00 00 08 */	b lbl_8053533C
lbl_80535338:
/* 80535338  3B BD FF FF */	addi r29, r29, -1
lbl_8053533C:
/* 8053533C  88 1B 08 7A */	lbz r0, 0x87a(r27)
/* 80535340  38 7F 13 EC */	addi r3, r31, 0x13ec
/* 80535344  20 00 00 01 */	subfic r0, r0, 1
/* 80535348  7C 00 00 34 */	cntlzw r0, r0
/* 8053534C  54 05 E8 FA */	rlwinm r5, r0, 0x1d, 3, 0x1d
/* 80535350  7C 03 28 2E */	lwzx r0, r3, r5
/* 80535354  7C 1D 00 00 */	cmpw r29, r0
/* 80535358  41 81 00 18 */	bgt lbl_80535370
/* 8053535C  38 7F 13 F4 */	addi r3, r31, 0x13f4
/* 80535360  88 9B 08 78 */	lbz r4, 0x878(r27)
/* 80535364  7C 03 28 2E */	lwzx r0, r3, r5
/* 80535368  7C 04 00 00 */	cmpw r4, r0
/* 8053536C  40 82 00 F8 */	bne lbl_80535464
lbl_80535370:
/* 80535370  3C 60 80 65 */	lis r3, lit_3564@ha /* 0x8064933C@ha */
/* 80535374  83 9B 01 7C */	lwz r28, 0x17c(r27)
/* 80535378  C3 E3 93 3C */	lfs f31, lit_3564@l(r3)  /* 0x8064933C@l */
/* 8053537C  3B 40 00 00 */	li r26, 0
/* 80535380  7F 83 E3 78 */	mr r3, r28
/* 80535384  3B 20 00 00 */	li r25, 0
/* 80535388  4B EA 09 75 */	bl mNpc_CheckIslandAnimal
/* 8053538C  2C 03 00 01 */	cmpwi r3, 1
/* 80535390  40 82 00 10 */	bne lbl_805353A0
/* 80535394  3C 60 80 65 */	lis r3, lit_950@ha /* 0x80649294@ha */
/* 80535398  3B 20 00 01 */	li r25, 1
/* 8053539C  C3 E3 92 94 */	lfs f31, lit_950@l(r3)  /* 0x80649294@l */
lbl_805353A0:
/* 805353A0  88 1B 08 79 */	lbz r0, 0x879(r27)
/* 805353A4  28 00 00 01 */	cmplwi r0, 1
/* 805353A8  40 82 00 18 */	bne lbl_805353C0
/* 805353AC  38 60 10 00 */	li r3, 0x1000
/* 805353B0  4B E7 EC 69 */	bl mISL_SetNowPlayerAction
/* 805353B4  38 60 04 00 */	li r3, 0x400
/* 805353B8  4B E7 EC 61 */	bl mISL_SetNowPlayerAction
/* 805353BC  48 00 00 18 */	b lbl_805353D4
lbl_805353C0:
/* 805353C0  38 60 02 00 */	li r3, 0x200
/* 805353C4  4B E7 EC 55 */	bl mISL_SetNowPlayerAction
/* 805353C8  38 00 00 02 */	li r0, 2
/* 805353CC  3B 40 00 01 */	li r26, 1
/* 805353D0  98 1B 08 79 */	stb r0, 0x879(r27)
lbl_805353D4:
/* 805353D4  88 7C 00 0D */	lbz r3, 0xd(r28)
/* 805353D8  1C 99 00 30 */	mulli r4, r25, 0x30
/* 805353DC  57 40 10 3A */	slwi r0, r26, 2
/* 805353E0  54 63 18 38 */	slwi r3, r3, 3
/* 805353E4  7C 64 1A 14 */	add r3, r4, r3
/* 805353E8  38 9F 13 FC */	addi r4, r31, 0x13fc
/* 805353EC  7C 03 02 14 */	add r0, r3, r0
/* 805353F0  7F 84 00 2E */	lwzx r28, r4, r0
/* 805353F4  4B B2 79 01 */	bl fqrand
/* 805353F8  EC 1F 00 72 */	fmuls f0, f31, f1
/* 805353FC  7F 63 DB 78 */	mr r3, r27
/* 80535400  FC 00 00 1E */	fctiwz f0, f0
/* 80535404  D8 01 00 08 */	stfd f0, 8(r1)
/* 80535408  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8053540C  7C 9C 02 14 */	add r4, r28, r0
/* 80535410  4B FF 8E 89 */	bl func_8052E298
/* 80535414  2C 03 00 01 */	cmpwi r3, 1
/* 80535418  40 82 00 60 */	bne lbl_80535478
/* 8053541C  38 60 00 00 */	li r3, 0
/* 80535420  38 00 00 01 */	li r0, 1
/* 80535424  98 7B 08 78 */	stb r3, 0x878(r27)
/* 80535428  7F 63 DB 78 */	mr r3, r27
/* 8053542C  3B A0 00 00 */	li r29, 0
/* 80535430  98 1B 08 7A */	stb r0, 0x87a(r27)
/* 80535434  4B E9 CA CD */	bl mNpc_GetNpcLooks
/* 80535438  54 60 10 3A */	slwi r0, r3, 2
/* 8053543C  38 7F 09 1C */	addi r3, r31, 0x91c
/* 80535440  7C 83 00 2E */	lwzx r4, r3, r0
/* 80535444  7F 63 DB 78 */	mr r3, r27
/* 80535448  38 A0 00 01 */	li r5, 1
/* 8053544C  4B FF B8 81 */	bl aNPC_set_feel_info
/* 80535450  38 60 00 03 */	li r3, 3
/* 80535454  38 00 00 00 */	li r0, 0
/* 80535458  98 7B 07 D0 */	stb r3, 0x7d0(r27)
/* 8053545C  98 1B 08 79 */	stb r0, 0x879(r27)
/* 80535460  48 00 00 18 */	b lbl_80535478
lbl_80535464:
/* 80535464  2C 1D 00 00 */	cmpwi r29, 0
/* 80535468  40 80 00 08 */	bge lbl_80535470
/* 8053546C  3B A0 00 00 */	li r29, 0
lbl_80535470:
/* 80535470  38 00 00 00 */	li r0, 0
/* 80535474  98 1B 08 79 */	stb r0, 0x879(r27)
lbl_80535478:
/* 80535478  93 BB 08 74 */	stw r29, 0x874(r27)
lbl_8053547C:
/* 8053547C  7F C3 F3 78 */	mr r3, r30
lbl_80535480:
/* 80535480  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80535484  39 61 00 30 */	addi r11, r1, 0x30
/* 80535488  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8053548C  4B B6 5A 85 */	bl func_8009AF10
/* 80535490  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80535494  7C 08 03 A6 */	mtlr r0
/* 80535498  38 21 00 40 */	addi r1, r1, 0x40
/* 8053549C  4E 80 00 20 */	blr 
