lbl_80564924:
/* 80564924  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80564928  7C 08 02 A6 */	mflr r0
/* 8056492C  3C A0 80 3C */	lis r5, none_proc1@ha /* 0x803BB54C@ha */
/* 80564930  90 01 00 24 */	stw r0, 0x24(r1)
/* 80564934  38 05 B5 4C */	addi r0, r5, none_proc1@l /* 0x803BB54C@l */
/* 80564938  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8056493C  7C 7F 1B 78 */	mr r31, r3
/* 80564940  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80564944  7C 9E 23 78 */	mr r30, r4
/* 80564948  90 03 09 64 */	stw r0, 0x964(r3)
/* 8056494C  4B E3 5A 69 */	bl mDemo_Set_ListenAble
/* 80564950  7F E3 FB 78 */	mr r3, r31
/* 80564954  4B E3 59 45 */	bl mDemo_Start
/* 80564958  38 61 00 08 */	addi r3, r1, 8
/* 8056495C  38 80 00 08 */	li r4, 8
/* 80564960  38 A0 06 D5 */	li r5, 0x6d5
/* 80564964  4B E8 A3 69 */	bl mString_Load_StringFromRom
/* 80564968  4B E5 AD 41 */	bl func_803BF6A8
/* 8056496C  38 A1 00 08 */	addi r5, r1, 8
/* 80564970  38 80 00 00 */	li r4, 0
/* 80564974  38 C0 00 08 */	li r6, 8
/* 80564978  4B E5 B2 DD */	bl mMsg_Set_free_str
/* 8056497C  38 61 00 08 */	addi r3, r1, 8
/* 80564980  38 80 00 08 */	li r4, 8
/* 80564984  38 A0 06 D6 */	li r5, 0x6d6
/* 80564988  4B E8 A3 45 */	bl mString_Load_StringFromRom
/* 8056498C  4B E5 AD 1D */	bl func_803BF6A8
/* 80564990  38 A1 00 08 */	addi r5, r1, 8
/* 80564994  38 80 00 01 */	li r4, 1
/* 80564998  38 C0 00 08 */	li r6, 8
/* 8056499C  4B E5 B2 B9 */	bl mMsg_Set_free_str
/* 805649A0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D071@ha */
/* 805649A4  A0 9F 00 06 */	lhz r4, 6(r31)
/* 805649A8  38 03 D0 71 */	addi r0, r3, 0xD071 /* 0x0000D071@l */
/* 805649AC  7C 04 00 00 */	cmpw r4, r0
/* 805649B0  41 82 00 38 */	beq lbl_805649E8
/* 805649B4  40 80 01 0C */	bge lbl_80564AC0
/* 805649B8  38 03 D0 70 */	addi r0, r3, -12176
/* 805649BC  7C 04 00 00 */	cmpw r4, r0
/* 805649C0  40 80 00 08 */	bge lbl_805649C8
/* 805649C4  48 00 00 FC */	b lbl_80564AC0
lbl_805649C8:
/* 805649C8  88 1F 09 B2 */	lbz r0, 0x9b2(r31)
/* 805649CC  28 00 00 09 */	cmplwi r0, 9
/* 805649D0  41 82 00 F0 */	beq lbl_80564AC0
/* 805649D4  28 00 00 0B */	cmplwi r0, 0xb
/* 805649D8  41 82 00 E8 */	beq lbl_80564AC0
/* 805649DC  7F E3 FB 78 */	mr r3, r31
/* 805649E0  4B FF CF A5 */	bl aNNW_turn_player
/* 805649E4  48 00 00 DC */	b lbl_80564AC0
lbl_805649E8:
/* 805649E8  7F C3 F3 78 */	mr r3, r30
/* 805649EC  7F E4 FB 78 */	mr r4, r31
/* 805649F0  4B FF CF 69 */	bl aNNW_search_sister
/* 805649F4  88 03 09 BA */	lbz r0, 0x9ba(r3)
/* 805649F8  2C 00 00 01 */	cmpwi r0, 1
/* 805649FC  41 82 00 28 */	beq lbl_80564A24
/* 80564A00  40 80 00 10 */	bge lbl_80564A10
/* 80564A04  2C 00 00 00 */	cmpwi r0, 0
/* 80564A08  40 80 00 10 */	bge lbl_80564A18
/* 80564A0C  48 00 00 18 */	b lbl_80564A24
lbl_80564A10:
/* 80564A10  2C 00 00 03 */	cmpwi r0, 3
/* 80564A14  40 80 00 10 */	bge lbl_80564A24
lbl_80564A18:
/* 80564A18  88 83 09 BA */	lbz r4, 0x9ba(r3)
/* 80564A1C  38 04 00 01 */	addi r0, r4, 1
/* 80564A20  98 03 09 BA */	stb r0, 0x9ba(r3)
lbl_80564A24:
/* 80564A24  4B FF CC F1 */	bl aNNW_day_day
/* 80564A28  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80564A2C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80564A30  3C 83 00 02 */	addis r4, r3, 2
/* 80564A34  80 64 61 3C */	lwz r3, 0x613c(r4)
/* 80564A38  88 03 23 BC */	lbz r0, 0x23bc(r3)
/* 80564A3C  28 00 00 05 */	cmplwi r0, 5
/* 80564A40  41 80 00 24 */	blt lbl_80564A64
/* 80564A44  88 04 60 03 */	lbz r0, 0x6003(r4)
/* 80564A48  28 00 00 04 */	cmplwi r0, 4
/* 80564A4C  41 82 00 18 */	beq lbl_80564A64
/* 80564A50  88 1F 09 B2 */	lbz r0, 0x9b2(r31)
/* 80564A54  28 00 00 3C */	cmplwi r0, 0x3c
/* 80564A58  41 82 00 0C */	beq lbl_80564A64
/* 80564A5C  7F E3 FB 78 */	mr r3, r31
/* 80564A60  4B FF CF 25 */	bl aNNW_turn_player
lbl_80564A64:
/* 80564A64  88 1F 09 AF */	lbz r0, 0x9af(r31)
/* 80564A68  28 00 00 03 */	cmplwi r0, 3
/* 80564A6C  40 82 00 54 */	bne lbl_80564AC0
/* 80564A70  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80564A74  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80564A78  3F C3 00 02 */	addis r30, r3, 2
/* 80564A7C  80 7E 60 34 */	lwz r3, 0x6034(r30)
/* 80564A80  28 03 00 00 */	cmplwi r3, 0
/* 80564A84  41 82 00 20 */	beq lbl_80564AA4
/* 80564A88  81 83 00 04 */	lwz r12, 4(r3)
/* 80564A8C  7D 89 03 A6 */	mtctr r12
/* 80564A90  4E 80 04 21 */	bctrl 
/* 80564A94  80 7E 60 34 */	lwz r3, 0x6034(r30)
/* 80564A98  81 83 00 0C */	lwz r12, 0xc(r3)
/* 80564A9C  7D 89 03 A6 */	mtctr r12
/* 80564AA0  4E 80 04 21 */	bctrl 
lbl_80564AA4:
/* 80564AA4  38 00 00 01 */	li r0, 1
/* 80564AA8  3C 60 80 65 */	lis r3, lit_1446@ha /* 0x80649788@ha */
/* 80564AAC  98 1F 09 BB */	stb r0, 0x9bb(r31)
/* 80564AB0  38 00 00 00 */	li r0, 0
/* 80564AB4  C0 03 97 88 */	lfs f0, lit_1446@l(r3)  /* 0x80649788@l */
/* 80564AB8  98 1F 07 52 */	stb r0, 0x752(r31)
/* 80564ABC  D0 1F 07 64 */	stfs f0, 0x764(r31)
lbl_80564AC0:
/* 80564AC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80564AC4  38 60 00 01 */	li r3, 1
/* 80564AC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80564ACC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80564AD0  7C 08 03 A6 */	mtlr r0
/* 80564AD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80564AD8  4E 80 00 20 */	blr 
