lbl_8059BFDC:
/* 8059BFDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059BFE0  7C 08 02 A6 */	mflr r0
/* 8059BFE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059BFE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059BFEC  7C 7F 1B 78 */	mr r31, r3
/* 8059BFF0  93 C1 00 08 */	stw r30, 8(r1)
/* 8059BFF4  7C 9E 23 78 */	mr r30, r4
/* 8059BFF8  4B FF F8 71 */	bl aIHT_light_proc
/* 8059BFFC  7F C3 F3 78 */	mr r3, r30
/* 8059C000  4B E3 D6 71 */	bl mPlib_get_player_actor_main_index
/* 8059C004  2C 03 00 30 */	cmpwi r3, 0x30
/* 8059C008  41 82 00 0C */	beq lbl_8059C014
/* 8059C00C  7F E3 FB 78 */	mr r3, r31
/* 8059C010  4B FF F5 B1 */	bl aIHT_anime_proc
lbl_8059C014:
/* 8059C014  4B E4 00 A5 */	bl mPlib_Get_item_net_catch_label
/* 8059C018  7C 03 F8 40 */	cmplw r3, r31
/* 8059C01C  40 82 00 18 */	bne lbl_8059C034
/* 8059C020  7F E3 FB 78 */	mr r3, r31
/* 8059C024  7F C5 F3 78 */	mr r5, r30
/* 8059C028  38 80 00 01 */	li r4, 1
/* 8059C02C  4B FF FF 65 */	bl aIHT_setupAction
/* 8059C030  48 00 00 44 */	b lbl_8059C074
lbl_8059C034:
/* 8059C034  88 7F 02 1E */	lbz r3, 0x21e(r31)
/* 8059C038  54 60 E7 FE */	rlwinm r0, r3, 0x1c, 0x1f, 0x1f
/* 8059C03C  28 00 00 01 */	cmplwi r0, 1
/* 8059C040  40 82 00 20 */	bne lbl_8059C060
/* 8059C044  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 8059C048  40 82 00 18 */	bne lbl_8059C060
/* 8059C04C  7F E3 FB 78 */	mr r3, r31
/* 8059C050  7F C5 F3 78 */	mr r5, r30
/* 8059C054  38 80 00 01 */	li r4, 1
/* 8059C058  4B FF FF 39 */	bl aIHT_setupAction
/* 8059C05C  48 00 00 18 */	b lbl_8059C074
lbl_8059C060:
/* 8059C060  81 9F 01 DC */	lwz r12, 0x1dc(r31)
/* 8059C064  7F E3 FB 78 */	mr r3, r31
/* 8059C068  7F C4 F3 78 */	mr r4, r30
/* 8059C06C  7D 89 03 A6 */	mtctr r12
/* 8059C070  4E 80 04 21 */	bctrl 
lbl_8059C074:
/* 8059C074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059C078  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059C07C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059C080  7C 08 03 A6 */	mtlr r0
/* 8059C084  38 21 00 10 */	addi r1, r1, 0x10
/* 8059C088  4E 80 00 20 */	blr 
