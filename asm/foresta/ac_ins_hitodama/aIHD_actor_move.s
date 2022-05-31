lbl_8059B198:
/* 8059B198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059B19C  7C 08 02 A6 */	mflr r0
/* 8059B1A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059B1A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059B1A8  7C 7F 1B 78 */	mr r31, r3
/* 8059B1AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8059B1B0  7C 9E 23 78 */	mr r30, r4
/* 8059B1B4  4B FF FA C5 */	bl aIHD_light_proc
/* 8059B1B8  7F C3 F3 78 */	mr r3, r30
/* 8059B1BC  4B E3 E4 B5 */	bl mPlib_get_player_actor_main_index
/* 8059B1C0  2C 03 00 30 */	cmpwi r3, 0x30
/* 8059B1C4  41 82 00 0C */	beq lbl_8059B1D0
/* 8059B1C8  7F E3 FB 78 */	mr r3, r31
/* 8059B1CC  4B FF F8 15 */	bl aIHD_anime_proc
lbl_8059B1D0:
/* 8059B1D0  4B E4 0E E9 */	bl mPlib_Get_item_net_catch_label
/* 8059B1D4  7C 03 F8 40 */	cmplw r3, r31
/* 8059B1D8  40 82 00 18 */	bne lbl_8059B1F0
/* 8059B1DC  7F E3 FB 78 */	mr r3, r31
/* 8059B1E0  7F C5 F3 78 */	mr r5, r30
/* 8059B1E4  38 80 00 01 */	li r4, 1
/* 8059B1E8  4B FF FF 65 */	bl aIHD_setupAction
/* 8059B1EC  48 00 00 68 */	b lbl_8059B254
lbl_8059B1F0:
/* 8059B1F0  38 60 00 72 */	li r3, 0x72
/* 8059B1F4  38 80 00 10 */	li r4, 0x10
/* 8059B1F8  4B E0 29 09 */	bl mEv_check_status
/* 8059B1FC  2C 03 00 00 */	cmpwi r3, 0
/* 8059B200  40 82 00 14 */	bne lbl_8059B214
/* 8059B204  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 8059B208  38 60 00 01 */	li r3, 1
/* 8059B20C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8059B210  98 1F 02 1E */	stb r0, 0x21e(r31)
lbl_8059B214:
/* 8059B214  88 7F 02 1E */	lbz r3, 0x21e(r31)
/* 8059B218  54 60 E7 FE */	rlwinm r0, r3, 0x1c, 0x1f, 0x1f
/* 8059B21C  28 00 00 01 */	cmplwi r0, 1
/* 8059B220  40 82 00 20 */	bne lbl_8059B240
/* 8059B224  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 8059B228  40 82 00 18 */	bne lbl_8059B240
/* 8059B22C  7F E3 FB 78 */	mr r3, r31
/* 8059B230  7F C5 F3 78 */	mr r5, r30
/* 8059B234  38 80 00 01 */	li r4, 1
/* 8059B238  4B FF FF 15 */	bl aIHD_setupAction
/* 8059B23C  48 00 00 18 */	b lbl_8059B254
lbl_8059B240:
/* 8059B240  81 9F 01 DC */	lwz r12, 0x1dc(r31)
/* 8059B244  7F E3 FB 78 */	mr r3, r31
/* 8059B248  7F C4 F3 78 */	mr r4, r30
/* 8059B24C  7D 89 03 A6 */	mtctr r12
/* 8059B250  4E 80 04 21 */	bctrl 
lbl_8059B254:
/* 8059B254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059B258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059B25C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059B260  7C 08 03 A6 */	mtlr r0
/* 8059B264  38 21 00 10 */	addi r1, r1, 0x10
/* 8059B268  4E 80 00 20 */	blr 
