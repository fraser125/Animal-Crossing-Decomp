lbl_8062B288:
/* 8062B288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062B28C  7C 08 02 A6 */	mflr r0
/* 8062B290  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062B294  38 00 00 00 */	li r0, 0
/* 8062B298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062B29C  7C 7F 1B 78 */	mr r31, r3
/* 8062B2A0  93 C1 00 08 */	stw r30, 8(r1)
/* 8062B2A4  98 03 00 9C */	stb r0, 0x9c(r3)
/* 8062B2A8  38 00 00 6E */	li r0, 0x6e
/* 8062B2AC  98 03 00 9D */	stb r0, 0x9d(r3)
/* 8062B2B0  4B A3 1A 45 */	bl fqrand
/* 8062B2B4  38 60 00 00 */	li r3, 0
/* 8062B2B8  38 00 00 78 */	li r0, 0x78
/* 8062B2BC  98 7F 00 9C */	stb r3, 0x9c(r31)
/* 8062B2C0  7F E3 FB 78 */	mr r3, r31
/* 8062B2C4  98 1F 00 9D */	stb r0, 0x9d(r31)
/* 8062B2C8  4B D6 AB 1D */	bl mCon_main
/* 8062B2CC  38 60 00 00 */	li r3, 0
/* 8062B2D0  38 00 00 82 */	li r0, 0x82
/* 8062B2D4  98 7F 00 9C */	stb r3, 0x9c(r31)
/* 8062B2D8  98 1F 00 9D */	stb r0, 0x9d(r31)
/* 8062B2DC  4B D6 AD D5 */	bl func_803960B0
/* 8062B2E0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8062B2E4  38 E3 61 38 */	addi r7, r3, debug_mode@l /* 0x81166138@l */
/* 8062B2E8  80 67 00 00 */	lwz r3, 0(r7)
/* 8062B2EC  A8 03 10 74 */	lha r0, 0x1074(r3)
/* 8062B2F0  2C 00 00 0A */	cmpwi r0, 0xa
/* 8062B2F4  40 82 00 8C */	bne lbl_8062B380
/* 8062B2F8  A8 03 10 90 */	lha r0, 0x1090(r3)
/* 8062B2FC  2C 00 00 0A */	cmpwi r0, 0xa
/* 8062B300  41 82 00 80 */	beq lbl_8062B380
/* 8062B304  38 C0 00 01 */	li r6, 1
/* 8062B308  38 A0 00 03 */	li r5, 3
/* 8062B30C  B0 C3 10 76 */	sth r6, 0x1076(r3)
/* 8062B310  38 80 00 0F */	li r4, 0xf
/* 8062B314  38 00 00 0A */	li r0, 0xa
/* 8062B318  80 67 00 00 */	lwz r3, 0(r7)
/* 8062B31C  B0 C3 10 78 */	sth r6, 0x1078(r3)
/* 8062B320  80 67 00 00 */	lwz r3, 0(r7)
/* 8062B324  B0 C3 10 7A */	sth r6, 0x107a(r3)
/* 8062B328  80 67 00 00 */	lwz r3, 0(r7)
/* 8062B32C  B0 A3 10 7C */	sth r5, 0x107c(r3)
/* 8062B330  80 67 00 00 */	lwz r3, 0(r7)
/* 8062B334  B0 C3 10 7E */	sth r6, 0x107e(r3)
/* 8062B338  80 67 00 00 */	lwz r3, 0(r7)
/* 8062B33C  B0 C3 10 80 */	sth r6, 0x1080(r3)
/* 8062B340  80 67 00 00 */	lwz r3, 0(r7)
/* 8062B344  B0 C3 10 82 */	sth r6, 0x1082(r3)
/* 8062B348  80 67 00 00 */	lwz r3, 0(r7)
/* 8062B34C  B0 C3 10 84 */	sth r6, 0x1084(r3)
/* 8062B350  80 67 00 00 */	lwz r3, 0(r7)
/* 8062B354  B0 C3 10 86 */	sth r6, 0x1086(r3)
/* 8062B358  80 67 00 00 */	lwz r3, 0(r7)
/* 8062B35C  B0 83 10 88 */	sth r4, 0x1088(r3)
/* 8062B360  80 67 00 00 */	lwz r3, 0(r7)
/* 8062B364  B0 C3 10 8A */	sth r6, 0x108a(r3)
/* 8062B368  80 67 00 00 */	lwz r3, 0(r7)
/* 8062B36C  B0 C3 10 8C */	sth r6, 0x108c(r3)
/* 8062B370  80 67 00 00 */	lwz r3, 0(r7)
/* 8062B374  B0 C3 10 8E */	sth r6, 0x108e(r3)
/* 8062B378  80 67 00 00 */	lwz r3, 0(r7)
/* 8062B37C  B0 03 10 90 */	sth r0, 0x1090(r3)
lbl_8062B380:
/* 8062B380  38 00 00 00 */	li r0, 0
/* 8062B384  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8062B388  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062B38C  38 00 00 8C */	li r0, 0x8c
/* 8062B390  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8062B394  98 1F 00 9D */	stb r0, 0x9d(r31)
/* 8062B398  80 63 00 00 */	lwz r3, 0(r3)
/* 8062B39C  A8 03 10 74 */	lha r0, 0x1074(r3)
/* 8062B3A0  2C 00 00 0A */	cmpwi r0, 0xa
/* 8062B3A4  40 82 00 10 */	bne lbl_8062B3B4
/* 8062B3A8  A8 03 10 76 */	lha r0, 0x1076(r3)
/* 8062B3AC  7C 00 07 35 */	extsh. r0, r0
/* 8062B3B0  41 82 00 0C */	beq lbl_8062B3BC
lbl_8062B3B4:
/* 8062B3B4  7F E3 FB 78 */	mr r3, r31
/* 8062B3B8  4B FF F5 DD */	bl Game_play_move
lbl_8062B3BC:
/* 8062B3BC  38 60 00 00 */	li r3, 0
/* 8062B3C0  38 00 00 AA */	li r0, 0xaa
/* 8062B3C4  98 7F 00 9C */	stb r3, 0x9c(r31)
/* 8062B3C8  7F E3 FB 78 */	mr r3, r31
/* 8062B3CC  98 1F 00 9D */	stb r0, 0x9d(r31)
/* 8062B3D0  4B FF FD 8D */	bl Game_play_draw
/* 8062B3D4  38 60 00 00 */	li r3, 0
/* 8062B3D8  38 00 00 B4 */	li r0, 0xb4
/* 8062B3DC  98 7F 00 9C */	stb r3, 0x9c(r31)
/* 8062B3E0  7F E3 FB 78 */	mr r3, r31
/* 8062B3E4  98 1F 00 9D */	stb r0, 0x9d(r31)
/* 8062B3E8  83 DF 00 00 */	lwz r30, 0(r31)
/* 8062B3EC  7F C4 F3 78 */	mr r4, r30
/* 8062B3F0  4B DD 98 05 */	bl game_debug_draw_last
/* 8062B3F4  7F C3 F3 78 */	mr r3, r30
/* 8062B3F8  4B DD 99 81 */	bl game_draw_last
/* 8062B3FC  38 60 00 00 */	li r3, 0
/* 8062B400  38 00 00 BE */	li r0, 0xbe
/* 8062B404  98 7F 00 9C */	stb r3, 0x9c(r31)
/* 8062B408  98 1F 00 9D */	stb r0, 0x9d(r31)
/* 8062B40C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062B410  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062B414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062B418  7C 08 03 A6 */	mtlr r0
/* 8062B41C  38 21 00 10 */	addi r1, r1, 0x10
/* 8062B420  4E 80 00 20 */	blr 