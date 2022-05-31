lbl_805A461C:
/* 805A461C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A4620  7C 08 02 A6 */	mflr r0
/* 805A4624  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A4628  39 61 00 20 */	addi r11, r1, 0x20
/* 805A462C  4B AF 68 A5 */	bl func_8009AED0
/* 805A4630  83 C3 01 CC */	lwz r30, 0x1cc(r3)
/* 805A4634  7C 9C 23 78 */	mr r28, r4
/* 805A4638  7C 7F 1B 78 */	mr r31, r3
/* 805A463C  80 9E 02 68 */	lwz r4, 0x268(r30)
/* 805A4640  80 1E 02 6C */	lwz r0, 0x26c(r30)
/* 805A4644  90 83 00 28 */	stw r4, 0x28(r3)
/* 805A4648  90 03 00 2C */	stw r0, 0x2c(r3)
/* 805A464C  80 1E 02 70 */	lwz r0, 0x270(r30)
/* 805A4650  90 03 00 30 */	stw r0, 0x30(r3)
/* 805A4654  A8 9E 00 36 */	lha r4, 0x36(r30)
/* 805A4658  4B FF E8 C5 */	bl aGTT_set_angle
/* 805A465C  80 1E 02 8C */	lwz r0, 0x28c(r30)
/* 805A4660  2C 00 00 03 */	cmpwi r0, 3
/* 805A4664  40 82 00 34 */	bne lbl_805A4698
/* 805A4668  7F E3 FB 78 */	mr r3, r31
/* 805A466C  4B FF EE AD */	bl aGTT_position_calc
/* 805A4670  3C 60 80 65 */	lis r3, lit_627@ha /* 0x8064A3EC@ha */
/* 805A4674  C0 23 A3 EC */	lfs f1, lit_627@l(r3)  /* 0x8064A3EC@l */
/* 805A4678  4B FF ED 25 */	bl aGTT_random_check
/* 805A467C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805A4680  41 82 01 1C */	beq lbl_805A479C
/* 805A4684  7F E3 FB 78 */	mr r3, r31
/* 805A4688  7F 84 E3 78 */	mr r4, r28
/* 805A468C  38 A0 00 00 */	li r5, 0
/* 805A4690  4B FF EC 21 */	bl aGTT_effect_hamon
/* 805A4694  48 00 01 08 */	b lbl_805A479C
lbl_805A4698:
/* 805A4698  2C 00 00 05 */	cmpwi r0, 5
/* 805A469C  40 82 00 5C */	bne lbl_805A46F8
/* 805A46A0  7F 83 E3 78 */	mr r3, r28
/* 805A46A4  4B E3 4F 9D */	bl get_player_actor_withoutCheck
/* 805A46A8  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A46AC  7C 7D 1B 78 */	mr r29, r3
/* 805A46B0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 805A46B4  40 82 00 E8 */	bne lbl_805A479C
/* 805A46B8  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 805A46BC  2C 00 00 2C */	cmpwi r0, 0x2c
/* 805A46C0  40 80 00 20 */	bge lbl_805A46E0
/* 805A46C4  2C 00 00 29 */	cmpwi r0, 0x29
/* 805A46C8  40 80 00 08 */	bge lbl_805A46D0
/* 805A46CC  48 00 00 14 */	b lbl_805A46E0
lbl_805A46D0:
/* 805A46D0  7F E3 FB 78 */	mr r3, r31
/* 805A46D4  7F 84 E3 78 */	mr r4, r28
/* 805A46D8  38 A0 00 01 */	li r5, 1
/* 805A46DC  4B FF EA 91 */	bl aGTT_kage_make_actor
lbl_805A46E0:
/* 805A46E0  A8 1D 00 36 */	lha r0, 0x36(r29)
/* 805A46E4  B0 1F 02 34 */	sth r0, 0x234(r31)
/* 805A46E8  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A46EC  60 00 00 08 */	ori r0, r0, 8
/* 805A46F0  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A46F4  48 00 00 A8 */	b lbl_805A479C
lbl_805A46F8:
/* 805A46F8  2C 00 00 06 */	cmpwi r0, 6
/* 805A46FC  40 82 00 2C */	bne lbl_805A4728
/* 805A4700  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A4704  60 00 02 00 */	ori r0, r0, 0x200
/* 805A4708  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A470C  80 1F 01 E8 */	lwz r0, 0x1e8(r31)
/* 805A4710  2C 00 00 01 */	cmpwi r0, 1
/* 805A4714  40 82 00 88 */	bne lbl_805A479C
/* 805A4718  38 9F 00 28 */	addi r4, r31, 0x28
/* 805A471C  38 60 01 1A */	li r3, 0x11a
/* 805A4720  48 08 98 89 */	bl sAdo_OngenTrgStart
/* 805A4724  48 00 00 78 */	b lbl_805A479C
lbl_805A4728:
/* 805A4728  2C 00 00 08 */	cmpwi r0, 8
/* 805A472C  40 82 00 28 */	bne lbl_805A4754
/* 805A4730  38 00 00 00 */	li r0, 0
/* 805A4734  7F E3 FB 78 */	mr r3, r31
/* 805A4738  90 1E 02 8C */	stw r0, 0x28c(r30)
/* 805A473C  7F 84 E3 78 */	mr r4, r28
/* 805A4740  4B FF EA E9 */	bl aGTT_fish_make_actor
/* 805A4744  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A4748  60 00 00 20 */	ori r0, r0, 0x20
/* 805A474C  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A4750  48 00 00 4C */	b lbl_805A479C
lbl_805A4754:
/* 805A4754  2C 00 00 07 */	cmpwi r0, 7
/* 805A4758  40 82 00 14 */	bne lbl_805A476C
/* 805A475C  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A4760  60 00 00 10 */	ori r0, r0, 0x10
/* 805A4764  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A4768  48 00 00 34 */	b lbl_805A479C
lbl_805A476C:
/* 805A476C  2C 00 00 00 */	cmpwi r0, 0
/* 805A4770  40 82 00 2C */	bne lbl_805A479C
/* 805A4774  38 00 00 00 */	li r0, 0
/* 805A4778  90 1E 02 88 */	stw r0, 0x288(r30)
/* 805A477C  90 1E 01 74 */	stw r0, 0x174(r30)
/* 805A4780  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A4784  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 805A4788  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A478C  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A4790  60 00 00 20 */	ori r0, r0, 0x20
/* 805A4794  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A4798  48 00 00 7C */	b lbl_805A4814
lbl_805A479C:
/* 805A479C  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A47A0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 805A47A4  41 82 00 18 */	beq lbl_805A47BC
/* 805A47A8  3C 60 80 65 */	lis r3, lit_891@ha /* 0x8064A424@ha */
/* 805A47AC  C0 3E 02 94 */	lfs f1, 0x294(r30)
/* 805A47B0  C0 03 A4 24 */	lfs f0, lit_891@l(r3)  /* 0x8064A424@l */
/* 805A47B4  EC 21 00 24 */	fdivs f1, f1, f0
/* 805A47B8  48 00 00 3C */	b lbl_805A47F4
lbl_805A47BC:
/* 805A47BC  80 1F 01 D4 */	lwz r0, 0x1d4(r31)
/* 805A47C0  2C 00 00 01 */	cmpwi r0, 1
/* 805A47C4  40 82 00 10 */	bne lbl_805A47D4
/* 805A47C8  3C 60 80 65 */	lis r3, lit_892@ha /* 0x8064A428@ha */
/* 805A47CC  C0 23 A4 28 */	lfs f1, lit_892@l(r3)  /* 0x8064A428@l */
/* 805A47D0  48 00 00 24 */	b lbl_805A47F4
lbl_805A47D4:
/* 805A47D4  A8 1F 01 DC */	lha r0, 0x1dc(r31)
/* 805A47D8  3C 60 80 6C */	lis r3, aGYO_shadow_scale@ha /* 0x806C3E30@ha */
/* 805A47DC  3C 80 80 65 */	lis r4, lit_447@ha /* 0x8064A3C8@ha */
/* 805A47E0  54 00 10 3A */	slwi r0, r0, 2
/* 805A47E4  38 63 3E 30 */	addi r3, r3, aGYO_shadow_scale@l /* 0x806C3E30@l */
/* 805A47E8  C0 24 A3 C8 */	lfs f1, lit_447@l(r4)  /* 0x8064A3C8@l */
/* 805A47EC  7C 03 04 2E */	lfsx f0, r3, r0
/* 805A47F0  EC 21 00 32 */	fmuls f1, f1, f0
lbl_805A47F4:
/* 805A47F4  7F E3 FB 78 */	mr r3, r31
/* 805A47F8  4B FF E7 15 */	bl aGTT_set_scale
/* 805A47FC  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 805A4800  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805A4804  90 7E 02 74 */	stw r3, 0x274(r30)
/* 805A4808  90 1E 02 78 */	stw r0, 0x278(r30)
/* 805A480C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805A4810  90 1E 02 7C */	stw r0, 0x27c(r30)
lbl_805A4814:
/* 805A4814  39 61 00 20 */	addi r11, r1, 0x20
/* 805A4818  4B AF 67 05 */	bl func_8009AF1C
/* 805A481C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A4820  7C 08 03 A6 */	mtlr r0
/* 805A4824  38 21 00 20 */	addi r1, r1, 0x20
/* 805A4828  4E 80 00 20 */	blr 
