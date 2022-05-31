lbl_8059C80C:
/* 8059C80C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059C810  7C 08 02 A6 */	mflr r0
/* 8059C814  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059C818  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059C81C  7C 7F 1B 78 */	mr r31, r3
/* 8059C820  93 C1 00 08 */	stw r30, 8(r1)
/* 8059C824  7C 9E 23 78 */	mr r30, r4
/* 8059C828  7F C3 F3 78 */	mr r3, r30
/* 8059C82C  4B E3 CE 45 */	bl mPlib_get_player_actor_main_index
/* 8059C830  2C 03 00 30 */	cmpwi r3, 0x30
/* 8059C834  41 82 00 24 */	beq lbl_8059C858
/* 8059C838  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 8059C83C  2C 00 00 05 */	cmpwi r0, 5
/* 8059C840  41 82 00 18 */	beq lbl_8059C858
/* 8059C844  7F E3 FB 78 */	mr r3, r31
/* 8059C848  4B FF F9 E5 */	bl aIKA_anime_proc
/* 8059C84C  7F E3 FB 78 */	mr r3, r31
/* 8059C850  4B FF F9 05 */	bl aIKA_fuwafuwa
/* 8059C854  48 00 00 10 */	b lbl_8059C864
lbl_8059C858:
/* 8059C858  3C 60 80 65 */	lis r3, lit_478@ha /* 0x8064A0D8@ha */
/* 8059C85C  C0 03 A0 D8 */	lfs f0, lit_478@l(r3)  /* 0x8064A0D8@l */
/* 8059C860  D0 1F 01 E0 */	stfs f0, 0x1e0(r31)
lbl_8059C864:
/* 8059C864  4B E3 F8 55 */	bl mPlib_Get_item_net_catch_label
/* 8059C868  7C 03 F8 40 */	cmplw r3, r31
/* 8059C86C  40 82 00 18 */	bne lbl_8059C884
/* 8059C870  7F E3 FB 78 */	mr r3, r31
/* 8059C874  7F C5 F3 78 */	mr r5, r30
/* 8059C878  38 80 00 01 */	li r4, 1
/* 8059C87C  4B FF FF 45 */	bl aIKA_setupAction
/* 8059C880  48 00 00 6C */	b lbl_8059C8EC
lbl_8059C884:
/* 8059C884  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 8059C888  2C 00 00 05 */	cmpwi r0, 5
/* 8059C88C  41 82 00 14 */	beq lbl_8059C8A0
/* 8059C890  7F E3 FB 78 */	mr r3, r31
/* 8059C894  38 BF 00 28 */	addi r5, r31, 0x28
/* 8059C898  38 80 00 CF */	li r4, 0xcf
/* 8059C89C  48 09 16 A9 */	bl sAdo_OngenPos
lbl_8059C8A0:
/* 8059C8A0  88 7F 02 1E */	lbz r3, 0x21e(r31)
/* 8059C8A4  54 60 E7 FE */	rlwinm r0, r3, 0x1c, 0x1f, 0x1f
/* 8059C8A8  28 00 00 01 */	cmplwi r0, 1
/* 8059C8AC  40 82 00 2C */	bne lbl_8059C8D8
/* 8059C8B0  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 8059C8B4  40 82 00 24 */	bne lbl_8059C8D8
/* 8059C8B8  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 8059C8BC  2C 00 00 01 */	cmpwi r0, 1
/* 8059C8C0  41 82 00 18 */	beq lbl_8059C8D8
/* 8059C8C4  7F E3 FB 78 */	mr r3, r31
/* 8059C8C8  7F C5 F3 78 */	mr r5, r30
/* 8059C8CC  38 80 00 01 */	li r4, 1
/* 8059C8D0  4B FF FE F1 */	bl aIKA_setupAction
/* 8059C8D4  48 00 00 18 */	b lbl_8059C8EC
lbl_8059C8D8:
/* 8059C8D8  81 9F 01 DC */	lwz r12, 0x1dc(r31)
/* 8059C8DC  7F E3 FB 78 */	mr r3, r31
/* 8059C8E0  7F C4 F3 78 */	mr r4, r30
/* 8059C8E4  7D 89 03 A6 */	mtctr r12
/* 8059C8E8  4E 80 04 21 */	bctrl 
lbl_8059C8EC:
/* 8059C8EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059C8F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059C8F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059C8F8  7C 08 03 A6 */	mtlr r0
/* 8059C8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8059C900  4E 80 00 20 */	blr 
