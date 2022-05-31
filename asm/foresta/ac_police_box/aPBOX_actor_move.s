lbl_805B7608:
/* 805B7608  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B760C  7C 08 02 A6 */	mflr r0
/* 805B7610  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B7614  39 61 00 30 */	addi r11, r1, 0x30
/* 805B7618  4B AE 38 BD */	bl func_8009AED4
/* 805B761C  80 03 02 B4 */	lwz r0, 0x2b4(r3)
/* 805B7620  7C 7E 1B 78 */	mr r30, r3
/* 805B7624  7C 9D 23 78 */	mr r29, r4
/* 805B7628  B0 01 00 08 */	sth r0, 8(r1)
/* 805B762C  4B FF FF A9 */	bl aPBOX_ctrl_light
/* 805B7630  2C 03 00 00 */	cmpwi r3, 0
/* 805B7634  41 82 00 18 */	beq lbl_805B764C
/* 805B7638  38 61 00 08 */	addi r3, r1, 8
/* 805B763C  38 80 3F FF */	li r4, 0x3fff
/* 805B7640  38 A0 01 40 */	li r5, 0x140
/* 805B7644  4B E0 35 B5 */	bl chase_s
/* 805B7648  48 00 00 14 */	b lbl_805B765C
lbl_805B764C:
/* 805B764C  38 61 00 08 */	addi r3, r1, 8
/* 805B7650  38 80 00 00 */	li r4, 0
/* 805B7654  38 A0 01 40 */	li r5, 0x140
/* 805B7658  4B E0 35 A1 */	bl chase_s
lbl_805B765C:
/* 805B765C  A8 01 00 08 */	lha r0, 8(r1)
/* 805B7660  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805B7664  90 1E 02 B4 */	stw r0, 0x2b4(r30)
/* 805B7668  83 E3 52 F0 */	lwz r31, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 805B766C  7F E3 FB 78 */	mr r3, r31
/* 805B7670  4B E2 1F D1 */	bl get_player_actor_withoutCheck
/* 805B7674  81 83 13 00 */	lwz r12, 0x1300(r3)
/* 805B7678  7F E3 FB 78 */	mr r3, r31
/* 805B767C  7D 89 03 A6 */	mtctr r12
/* 805B7680  4E 80 04 21 */	bctrl 
/* 805B7684  7C 1E 18 40 */	cmplw r30, r3
/* 805B7688  40 82 00 28 */	bne lbl_805B76B0
/* 805B768C  7F C3 F3 78 */	mr r3, r30
/* 805B7690  7F A4 EB 78 */	mr r4, r29
/* 805B7694  4B FF FD 91 */	bl aPBOX_rewrite_out_data
/* 805B7698  3C 80 80 6C */	lis r4, aPBOX_police_box_enter_data@ha /* 0x806C621C@ha */
/* 805B769C  7F A3 EB 78 */	mr r3, r29
/* 805B76A0  38 84 62 1C */	addi r4, r4, aPBOX_police_box_enter_data@l /* 0x806C621C@l */
/* 805B76A4  38 A0 00 00 */	li r5, 0
/* 805B76A8  4B E3 9B 01 */	bl goto_other_scene
/* 805B76AC  48 00 00 70 */	b lbl_805B771C
lbl_805B76B0:
/* 805B76B0  7F C3 F3 78 */	mr r3, r30
/* 805B76B4  7F A4 EB 78 */	mr r4, r29
/* 805B76B8  4B FF FE 6D */	bl aPBOX_check_player
/* 805B76BC  2C 03 00 02 */	cmpwi r3, 2
/* 805B76C0  40 82 00 5C */	bne lbl_805B771C
/* 805B76C4  3C 60 80 65 */	lis r3, lit_520@ha /* 0x8064AA10@ha */
/* 805B76C8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805B76CC  38 83 AA 10 */	addi r4, r3, lit_520@l /* 0x8064AA10@l */
/* 805B76D0  7F A3 EB 78 */	mr r3, r29
/* 805B76D4  C0 24 00 00 */	lfs f1, 0(r4)
/* 805B76D8  EC 01 00 2A */	fadds f0, f1, f0
/* 805B76DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805B76E0  4B E2 1F 61 */	bl get_player_actor_withoutCheck
/* 805B76E4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805B76E8  3C 60 80 65 */	lis r3, lit_520@ha /* 0x8064AA10@ha */
/* 805B76EC  38 83 AA 10 */	addi r4, r3, lit_520@l /* 0x8064AA10@l */
/* 805B76F0  7F A3 EB 78 */	mr r3, r29
/* 805B76F4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805B76F8  7F C7 F3 78 */	mr r7, r30
/* 805B76FC  C0 24 00 00 */	lfs f1, 0(r4)
/* 805B7700  38 81 00 0C */	addi r4, r1, 0xc
/* 805B7704  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805B7708  38 A0 A0 00 */	li r5, -24576
/* 805B770C  38 C0 00 01 */	li r6, 1
/* 805B7710  EC 01 00 2A */	fadds f0, f1, f0
/* 805B7714  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805B7718  4B E2 2F 71 */	bl mPlib_request_main_door_type1
lbl_805B771C:
/* 805B771C  39 61 00 30 */	addi r11, r1, 0x30
/* 805B7720  4B AE 38 01 */	bl func_8009AF20
/* 805B7724  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B7728  7C 08 03 A6 */	mtlr r0
/* 805B772C  38 21 00 30 */	addi r1, r1, 0x30
/* 805B7730  4E 80 00 20 */	blr 
