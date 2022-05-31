lbl_805A6564:
/* 805A6564  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A6568  7C 08 02 A6 */	mflr r0
/* 805A656C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A6570  39 61 00 20 */	addi r11, r1, 0x20
/* 805A6574  4B AF 49 5D */	bl func_8009AED0
/* 805A6578  83 C3 01 CC */	lwz r30, 0x1cc(r3)
/* 805A657C  7C 9C 23 78 */	mr r28, r4
/* 805A6580  7C 7F 1B 78 */	mr r31, r3
/* 805A6584  80 9E 02 68 */	lwz r4, 0x268(r30)
/* 805A6588  80 1E 02 6C */	lwz r0, 0x26c(r30)
/* 805A658C  90 83 00 28 */	stw r4, 0x28(r3)
/* 805A6590  90 03 00 2C */	stw r0, 0x2c(r3)
/* 805A6594  80 1E 02 70 */	lwz r0, 0x270(r30)
/* 805A6598  90 03 00 30 */	stw r0, 0x30(r3)
/* 805A659C  A8 9E 00 36 */	lha r4, 0x36(r30)
/* 805A65A0  4B FF E9 6D */	bl aGKK_set_angle
/* 805A65A4  80 1E 02 8C */	lwz r0, 0x28c(r30)
/* 805A65A8  2C 00 00 03 */	cmpwi r0, 3
/* 805A65AC  40 82 00 34 */	bne lbl_805A65E0
/* 805A65B0  7F E3 FB 78 */	mr r3, r31
/* 805A65B4  4B FF EE CD */	bl aGKK_position_calc
/* 805A65B8  3C 60 80 65 */	lis r3, lit_603@ha /* 0x8064A46C@ha */
/* 805A65BC  C0 23 A4 6C */	lfs f1, lit_603@l(r3)  /* 0x8064A46C@l */
/* 805A65C0  4B FF ED CD */	bl aGKK_random_check
/* 805A65C4  2C 03 00 01 */	cmpwi r3, 1
/* 805A65C8  40 82 01 10 */	bne lbl_805A66D8
/* 805A65CC  7F E3 FB 78 */	mr r3, r31
/* 805A65D0  7F 84 E3 78 */	mr r4, r28
/* 805A65D4  38 A0 00 00 */	li r5, 0
/* 805A65D8  4B FF EC C9 */	bl aGKK_effect_hamon
/* 805A65DC  48 00 00 FC */	b lbl_805A66D8
lbl_805A65E0:
/* 805A65E0  2C 00 00 05 */	cmpwi r0, 5
/* 805A65E4  40 82 00 50 */	bne lbl_805A6634
/* 805A65E8  7F 83 E3 78 */	mr r3, r28
/* 805A65EC  4B E3 30 55 */	bl get_player_actor_withoutCheck
/* 805A65F0  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A65F4  7C 7D 1B 78 */	mr r29, r3
/* 805A65F8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 805A65FC  40 82 00 DC */	bne lbl_805A66D8
/* 805A6600  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 805A6604  2C 00 00 2B */	cmpwi r0, 0x2b
/* 805A6608  40 82 00 14 */	bne lbl_805A661C
/* 805A660C  7F E3 FB 78 */	mr r3, r31
/* 805A6610  7F 84 E3 78 */	mr r4, r28
/* 805A6614  38 A0 00 01 */	li r5, 1
/* 805A6618  4B FF EB 45 */	bl aGKK_kage_make_actor
lbl_805A661C:
/* 805A661C  A8 1D 00 36 */	lha r0, 0x36(r29)
/* 805A6620  B0 1F 02 34 */	sth r0, 0x234(r31)
/* 805A6624  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A6628  60 00 00 08 */	ori r0, r0, 8
/* 805A662C  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A6630  48 00 00 A8 */	b lbl_805A66D8
lbl_805A6634:
/* 805A6634  2C 00 00 06 */	cmpwi r0, 6
/* 805A6638  40 82 00 2C */	bne lbl_805A6664
/* 805A663C  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A6640  60 00 02 00 */	ori r0, r0, 0x200
/* 805A6644  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A6648  80 1F 01 E8 */	lwz r0, 0x1e8(r31)
/* 805A664C  2C 00 00 01 */	cmpwi r0, 1
/* 805A6650  40 82 00 88 */	bne lbl_805A66D8
/* 805A6654  38 9F 00 28 */	addi r4, r31, 0x28
/* 805A6658  38 60 01 1A */	li r3, 0x11a
/* 805A665C  48 08 79 4D */	bl sAdo_OngenTrgStart
/* 805A6660  48 00 00 78 */	b lbl_805A66D8
lbl_805A6664:
/* 805A6664  2C 00 00 08 */	cmpwi r0, 8
/* 805A6668  40 82 00 28 */	bne lbl_805A6690
/* 805A666C  38 00 00 00 */	li r0, 0
/* 805A6670  7F E3 FB 78 */	mr r3, r31
/* 805A6674  90 1E 02 8C */	stw r0, 0x28c(r30)
/* 805A6678  7F 84 E3 78 */	mr r4, r28
/* 805A667C  4B FF EB 9D */	bl aGKK_fish_make_actor
/* 805A6680  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A6684  60 00 00 20 */	ori r0, r0, 0x20
/* 805A6688  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A668C  48 00 00 4C */	b lbl_805A66D8
lbl_805A6690:
/* 805A6690  2C 00 00 07 */	cmpwi r0, 7
/* 805A6694  40 82 00 14 */	bne lbl_805A66A8
/* 805A6698  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A669C  60 00 00 10 */	ori r0, r0, 0x10
/* 805A66A0  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A66A4  48 00 00 34 */	b lbl_805A66D8
lbl_805A66A8:
/* 805A66A8  2C 00 00 00 */	cmpwi r0, 0
/* 805A66AC  40 82 00 2C */	bne lbl_805A66D8
/* 805A66B0  38 00 00 00 */	li r0, 0
/* 805A66B4  90 1E 02 88 */	stw r0, 0x288(r30)
/* 805A66B8  90 1E 01 74 */	stw r0, 0x174(r30)
/* 805A66BC  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A66C0  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 805A66C4  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A66C8  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A66CC  60 00 00 20 */	ori r0, r0, 0x20
/* 805A66D0  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A66D4  48 00 00 7C */	b lbl_805A6750
lbl_805A66D8:
/* 805A66D8  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A66DC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 805A66E0  41 82 00 18 */	beq lbl_805A66F8
/* 805A66E4  3C 60 80 65 */	lis r3, lit_866@ha /* 0x8064A4A4@ha */
/* 805A66E8  C0 3E 02 94 */	lfs f1, 0x294(r30)
/* 805A66EC  C0 03 A4 A4 */	lfs f0, lit_866@l(r3)  /* 0x8064A4A4@l */
/* 805A66F0  EC 21 00 24 */	fdivs f1, f1, f0
/* 805A66F4  48 00 00 3C */	b lbl_805A6730
lbl_805A66F8:
/* 805A66F8  80 1F 01 D4 */	lwz r0, 0x1d4(r31)
/* 805A66FC  2C 00 00 01 */	cmpwi r0, 1
/* 805A6700  40 82 00 10 */	bne lbl_805A6710
/* 805A6704  3C 60 80 65 */	lis r3, lit_867@ha /* 0x8064A4A8@ha */
/* 805A6708  C0 23 A4 A8 */	lfs f1, lit_867@l(r3)  /* 0x8064A4A8@l */
/* 805A670C  48 00 00 24 */	b lbl_805A6730
lbl_805A6710:
/* 805A6710  A8 1F 01 DC */	lha r0, 0x1dc(r31)
/* 805A6714  3C 60 80 6C */	lis r3, aGKK_shadow_scale@ha /* 0x806C4180@ha */
/* 805A6718  3C 80 80 65 */	lis r4, lit_455@ha /* 0x8064A448@ha */
/* 805A671C  54 00 10 3A */	slwi r0, r0, 2
/* 805A6720  38 63 41 80 */	addi r3, r3, aGKK_shadow_scale@l /* 0x806C4180@l */
/* 805A6724  C0 24 A4 48 */	lfs f1, lit_455@l(r4)  /* 0x8064A448@l */
/* 805A6728  7C 03 04 2E */	lfsx f0, r3, r0
/* 805A672C  EC 21 00 32 */	fmuls f1, f1, f0
lbl_805A6730:
/* 805A6730  7F E3 FB 78 */	mr r3, r31
/* 805A6734  4B FF E7 C9 */	bl aGKK_set_scale
/* 805A6738  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 805A673C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805A6740  90 7E 02 74 */	stw r3, 0x274(r30)
/* 805A6744  90 1E 02 78 */	stw r0, 0x278(r30)
/* 805A6748  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805A674C  90 1E 02 7C */	stw r0, 0x27c(r30)
lbl_805A6750:
/* 805A6750  39 61 00 20 */	addi r11, r1, 0x20
/* 805A6754  4B AF 47 C9 */	bl func_8009AF1C
/* 805A6758  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A675C  7C 08 03 A6 */	mtlr r0
/* 805A6760  38 21 00 20 */	addi r1, r1, 0x20
/* 805A6764  4E 80 00 20 */	blr 
