lbl_805A6370:
/* 805A6370  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A6374  7C 08 02 A6 */	mflr r0
/* 805A6378  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A637C  39 61 00 30 */	addi r11, r1, 0x30
/* 805A6380  4B AF 4B 55 */	bl func_8009AED4
/* 805A6384  7C 7F 1B 78 */	mr r31, r3
/* 805A6388  7C 9D 23 78 */	mr r29, r4
/* 805A638C  4B FF F0 5D */	bl aGKK_warp_event
/* 805A6390  2C 03 00 00 */	cmpwi r3, 0
/* 805A6394  40 82 01 B8 */	bne lbl_805A654C
/* 805A6398  83 DF 01 CC */	lwz r30, 0x1cc(r31)
/* 805A639C  80 1E 02 8C */	lwz r0, 0x28c(r30)
/* 805A63A0  2C 00 00 04 */	cmpwi r0, 4
/* 805A63A4  40 82 01 04 */	bne lbl_805A64A8
/* 805A63A8  80 DE 00 28 */	lwz r6, 0x28(r30)
/* 805A63AC  3C 60 80 6C */	lis r3, rr_803@ha /* 0x806C42C4@ha */
/* 805A63B0  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805A63B4  3C 80 80 65 */	lis r4, lit_570@ha /* 0x8064A460@ha */
/* 805A63B8  38 E3 42 C4 */	addi r7, r3, rr_803@l /* 0x806C42C4@l */
/* 805A63BC  C0 24 A4 60 */	lfs f1, lit_570@l(r4)  /* 0x8064A460@l */
/* 805A63C0  90 C1 00 08 */	stw r6, 8(r1)
/* 805A63C4  7F A5 EB 78 */	mr r5, r29
/* 805A63C8  38 61 00 14 */	addi r3, r1, 0x14
/* 805A63CC  38 81 00 08 */	addi r4, r1, 8
/* 805A63D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A63D4  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805A63D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A63DC  A8 1F 01 DC */	lha r0, 0x1dc(r31)
/* 805A63E0  A8 DE 00 36 */	lha r6, 0x36(r30)
/* 805A63E4  54 00 10 3A */	slwi r0, r0, 2
/* 805A63E8  7C 47 04 2E */	lfsx f2, r7, r0
/* 805A63EC  4B FF EB 2D */	bl aGKK_pos_calc
/* 805A63F0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805A63F4  7F E3 FB 78 */	mr r3, r31
/* 805A63F8  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805A63FC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805A6400  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 805A6404  A8 9E 00 36 */	lha r4, 0x36(r30)
/* 805A6408  4B FF EB 05 */	bl aGKK_set_angle
/* 805A640C  7F E3 FB 78 */	mr r3, r31
/* 805A6410  38 BF 00 28 */	addi r5, r31, 0x28
/* 805A6414  38 80 00 24 */	li r4, 0x24
/* 805A6418  48 08 7B 2D */	bl sAdo_OngenPos
/* 805A641C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805A6420  38 7F 00 28 */	addi r3, r31, 0x28
/* 805A6424  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805A6428  A8 9F 01 DC */	lha r4, 0x1dc(r31)
/* 805A642C  3C A5 00 02 */	addis r5, r5, 2
/* 805A6430  80 A5 60 B8 */	lwz r5, 0x60b8(r5)
/* 805A6434  81 85 00 10 */	lwz r12, 0x10(r5)
/* 805A6438  7D 89 03 A6 */	mtctr r12
/* 805A643C  4E 80 04 21 */	bctrl 
/* 805A6440  A8 7F 02 2C */	lha r3, 0x22c(r31)
/* 805A6444  2C 03 00 00 */	cmpwi r3, 0
/* 805A6448  40 82 00 0C */	bne lbl_805A6454
/* 805A644C  38 00 00 00 */	li r0, 0
/* 805A6450  48 00 00 10 */	b lbl_805A6460
lbl_805A6454:
/* 805A6454  38 03 FF FF */	addi r0, r3, -1
/* 805A6458  B0 1F 02 2C */	sth r0, 0x22c(r31)
/* 805A645C  7C 00 07 34 */	extsh r0, r0
lbl_805A6460:
/* 805A6460  2C 00 00 00 */	cmpwi r0, 0
/* 805A6464  40 82 00 D0 */	bne lbl_805A6534
/* 805A6468  3C 60 80 65 */	lis r3, lit_793@ha /* 0x8064A48C@ha */
/* 805A646C  C0 23 A4 8C */	lfs f1, lit_793@l(r3)  /* 0x8064A48C@l */
/* 805A6470  4B FF EF 1D */	bl aGKK_random_check
/* 805A6474  2C 03 00 01 */	cmpwi r3, 1
/* 805A6478  40 82 00 24 */	bne lbl_805A649C
/* 805A647C  A8 1F 01 DC */	lha r0, 0x1dc(r31)
/* 805A6480  3C 60 80 6C */	lis r3, eff_arg@ha /* 0x806C42B4@ha */
/* 805A6484  38 A3 42 B4 */	addi r5, r3, eff_arg@l /* 0x806C42B4@l */
/* 805A6488  7F E3 FB 78 */	mr r3, r31
/* 805A648C  54 00 08 3C */	slwi r0, r0, 1
/* 805A6490  7F A4 EB 78 */	mr r4, r29
/* 805A6494  7C A5 02 AE */	lhax r5, r5, r0
/* 805A6498  4B FF EB 79 */	bl aGKK_effect_sibuki
lbl_805A649C:
/* 805A649C  38 00 00 06 */	li r0, 6
/* 805A64A0  B0 1F 02 2C */	sth r0, 0x22c(r31)
/* 805A64A4  48 00 00 90 */	b lbl_805A6534
lbl_805A64A8:
/* 805A64A8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805A64AC  7F E3 FB 78 */	mr r3, r31
/* 805A64B0  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805A64B4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805A64B8  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 805A64BC  A8 9E 00 36 */	lha r4, 0x36(r30)
/* 805A64C0  4B FF EA 4D */	bl aGKK_set_angle
/* 805A64C4  7F E3 FB 78 */	mr r3, r31
/* 805A64C8  4B FF EF B9 */	bl aGKK_position_calc
/* 805A64CC  80 1E 02 8C */	lwz r0, 0x28c(r30)
/* 805A64D0  2C 00 00 05 */	cmpwi r0, 5
/* 805A64D4  40 82 00 24 */	bne lbl_805A64F8
/* 805A64D8  3C 80 80 65 */	lis r4, lit_466@ha /* 0x8064A44C@ha */
/* 805A64DC  7F E3 FB 78 */	mr r3, r31
/* 805A64E0  38 A4 A4 4C */	addi r5, r4, lit_466@l /* 0x8064A44C@l */
/* 805A64E4  38 80 00 0A */	li r4, 0xa
/* 805A64E8  C0 05 00 00 */	lfs f0, 0(r5)
/* 805A64EC  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 805A64F0  48 00 06 69 */	bl aGKK_setupAction
/* 805A64F4  48 00 00 40 */	b lbl_805A6534
lbl_805A64F8:
/* 805A64F8  80 7F 02 18 */	lwz r3, 0x218(r31)
/* 805A64FC  2C 03 00 00 */	cmpwi r3, 0
/* 805A6500  40 82 00 0C */	bne lbl_805A650C
/* 805A6504  38 00 00 00 */	li r0, 0
/* 805A6508  48 00 00 0C */	b lbl_805A6514
lbl_805A650C:
/* 805A650C  38 03 FF FF */	addi r0, r3, -1
/* 805A6510  90 1F 02 18 */	stw r0, 0x218(r31)
lbl_805A6514:
/* 805A6514  2C 00 00 00 */	cmpwi r0, 0
/* 805A6518  40 82 00 1C */	bne lbl_805A6534
/* 805A651C  38 00 00 00 */	li r0, 0
/* 805A6520  7F E3 FB 78 */	mr r3, r31
/* 805A6524  90 1E 02 88 */	stw r0, 0x288(r30)
/* 805A6528  7F A4 EB 78 */	mr r4, r29
/* 805A652C  38 A0 00 00 */	li r5, 0
/* 805A6530  4B FF EC 2D */	bl aGKK_kage_make_actor
lbl_805A6534:
/* 805A6534  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 805A6538  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805A653C  90 7E 02 74 */	stw r3, 0x274(r30)
/* 805A6540  90 1E 02 78 */	stw r0, 0x278(r30)
/* 805A6544  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805A6548  90 1E 02 7C */	stw r0, 0x27c(r30)
lbl_805A654C:
/* 805A654C  39 61 00 30 */	addi r11, r1, 0x30
/* 805A6550  4B AF 49 D1 */	bl func_8009AF20
/* 805A6554  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A6558  7C 08 03 A6 */	mtlr r0
/* 805A655C  38 21 00 30 */	addi r1, r1, 0x30
/* 805A6560  4E 80 00 20 */	blr 
