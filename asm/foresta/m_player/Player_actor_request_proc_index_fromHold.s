lbl_804EA2B4:
/* 804EA2B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804EA2B8  7C 08 02 A6 */	mflr r0
/* 804EA2BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804EA2C0  39 61 00 40 */	addi r11, r1, 0x40
/* 804EA2C4  4B BB 0C 11 */	bl func_8009AED4
/* 804EA2C8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804EA2CC  7C 7E 1B 78 */	mr r30, r3
/* 804EA2D0  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 804EA2D4  7C 9F 23 78 */	mr r31, r4
/* 804EA2D8  3C 63 00 02 */	addis r3, r3, 2
/* 804EA2DC  80 83 60 8C */	lwz r4, 0x608c(r3)
/* 804EA2E0  28 04 00 00 */	cmplwi r4, 0
/* 804EA2E4  41 82 02 00 */	beq lbl_804EA4E4
/* 804EA2E8  83 BE 0D 18 */	lwz r29, 0xd18(r30)
/* 804EA2EC  38 61 00 20 */	addi r3, r1, 0x20
/* 804EA2F0  81 84 00 10 */	lwz r12, 0x10(r4)
/* 804EA2F4  38 81 00 14 */	addi r4, r1, 0x14
/* 804EA2F8  7F A5 EB 78 */	mr r5, r29
/* 804EA2FC  7D 89 03 A6 */	mtctr r12
/* 804EA300  4E 80 04 21 */	bctrl 
/* 804EA304  7C 67 1B 78 */	mr r7, r3
/* 804EA308  A8 BE 0D 1C */	lha r5, 0xd1c(r30)
/* 804EA30C  28 07 00 0A */	cmplwi r7, 0xa
/* 804EA310  38 DE 0D 20 */	addi r6, r30, 0xd20
/* 804EA314  41 81 01 D0 */	bgt lbl_804EA4E4
/* 804EA318  3C 60 80 6A */	lis r3, lit_8793@ha /* 0x8069E748@ha */
/* 804EA31C  54 E0 10 3A */	slwi r0, r7, 2
/* 804EA320  38 63 E7 48 */	addi r3, r3, lit_8793@l /* 0x8069E748@l */
/* 804EA324  7C 03 00 2E */	lwzx r0, r3, r0
/* 804EA328  7C 09 03 A6 */	mtctr r0
/* 804EA32C  4E 80 04 20 */	bctr 
lbl_804EA330:
/* 804EA330  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804EA334  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804EA338  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804EA33C  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804EA340  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EA344  7F E3 FB 78 */	mr r3, r31
/* 804EA348  38 80 00 00 */	li r4, 0
/* 804EA34C  38 A0 00 22 */	li r5, 0x22
/* 804EA350  4B FF B8 AD */	bl func_804E5BFC
/* 804EA354  48 00 01 90 */	b lbl_804EA4E4
lbl_804EA358:
/* 804EA358  7F E3 FB 78 */	mr r3, r31
/* 804EA35C  7F A4 EB 78 */	mr r4, r29
/* 804EA360  38 E0 00 15 */	li r7, 0x15
/* 804EA364  48 00 02 21 */	bl func_804EA584
/* 804EA368  48 00 01 7C */	b lbl_804EA4E4
lbl_804EA36C:
/* 804EA36C  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 804EA370  7F E3 FB 78 */	mr r3, r31
/* 804EA374  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 804EA378  7F A4 EB 78 */	mr r4, r29
/* 804EA37C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 804EA380  38 E1 00 14 */	addi r7, r1, 0x14
/* 804EA384  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804EA388  EC 43 10 28 */	fsubs f2, f3, f2
/* 804EA38C  39 01 00 08 */	addi r8, r1, 8
/* 804EA390  39 20 00 15 */	li r9, 0x15
/* 804EA394  EC 01 00 28 */	fsubs f0, f1, f0
/* 804EA398  D0 41 00 08 */	stfs f2, 8(r1)
/* 804EA39C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804EA3A0  48 00 05 C1 */	bl func_804EA960
/* 804EA3A4  48 00 01 40 */	b lbl_804EA4E4
lbl_804EA3A8:
/* 804EA3A8  7F E3 FB 78 */	mr r3, r31
/* 804EA3AC  7F A4 EB 78 */	mr r4, r29
/* 804EA3B0  39 00 00 15 */	li r8, 0x15
/* 804EA3B4  48 00 0A ED */	bl func_804EAEA0
/* 804EA3B8  48 00 01 2C */	b lbl_804EA4E4
lbl_804EA3BC:
/* 804EA3BC  7F E3 FB 78 */	mr r3, r31
/* 804EA3C0  7C A4 2B 78 */	mr r4, r5
/* 804EA3C4  7C C5 33 78 */	mr r5, r6
/* 804EA3C8  38 C0 00 2D */	li r6, 0x2d
/* 804EA3CC  38 E0 00 15 */	li r7, 0x15
/* 804EA3D0  48 00 0E D9 */	bl func_804EB2A8
/* 804EA3D4  48 00 01 10 */	b lbl_804EA4E4
lbl_804EA3D8:
/* 804EA3D8  7F E3 FB 78 */	mr r3, r31
/* 804EA3DC  7C A4 2B 78 */	mr r4, r5
/* 804EA3E0  7C C5 33 78 */	mr r5, r6
/* 804EA3E4  38 C0 00 2B */	li r6, 0x2b
/* 804EA3E8  38 E0 00 15 */	li r7, 0x15
/* 804EA3EC  48 00 0E BD */	bl func_804EB2A8
/* 804EA3F0  48 00 00 F4 */	b lbl_804EA4E4
lbl_804EA3F4:
/* 804EA3F4  7F E3 FB 78 */	mr r3, r31
/* 804EA3F8  7C A4 2B 78 */	mr r4, r5
/* 804EA3FC  7C C5 33 78 */	mr r5, r6
/* 804EA400  38 C0 00 2C */	li r6, 0x2c
/* 804EA404  38 E0 00 15 */	li r7, 0x15
/* 804EA408  48 00 0E A1 */	bl func_804EB2A8
/* 804EA40C  48 00 00 D8 */	b lbl_804EA4E4
lbl_804EA410:
/* 804EA410  80 1E 0D B4 */	lwz r0, 0xdb4(r30)
/* 804EA414  2C 00 00 3F */	cmpwi r0, 0x3f
/* 804EA418  41 82 00 CC */	beq lbl_804EA4E4
/* 804EA41C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EA420  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804EA424  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804EA428  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804EA42C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EA430  3C 60 80 65 */	lis r3, lit_8792@ha /* 0x806484AC@ha */
/* 804EA434  C0 83 84 AC */	lfs f4, lit_8792@l(r3)  /* 0x806484AC@l */
/* 804EA438  7F C3 F3 78 */	mr r3, r30
/* 804EA43C  FC 40 08 90 */	fmr f2, f1
/* 804EA440  7F E4 FB 78 */	mr r4, r31
/* 804EA444  38 A0 00 3F */	li r5, 0x3f
/* 804EA448  38 C0 00 3F */	li r6, 0x3f
/* 804EA44C  38 E0 00 00 */	li r7, 0
/* 804EA450  4B FE C2 A9 */	bl Player_actor_InitAnimation_Base1
/* 804EA454  48 00 00 90 */	b lbl_804EA4E4
lbl_804EA458:
/* 804EA458  80 1E 0D B4 */	lwz r0, 0xdb4(r30)
/* 804EA45C  2C 00 00 3E */	cmpwi r0, 0x3e
/* 804EA460  41 82 00 84 */	beq lbl_804EA4E4
/* 804EA464  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EA468  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804EA46C  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804EA470  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804EA474  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EA478  3C 60 80 65 */	lis r3, lit_8792@ha /* 0x806484AC@ha */
/* 804EA47C  C0 83 84 AC */	lfs f4, lit_8792@l(r3)  /* 0x806484AC@l */
/* 804EA480  7F C3 F3 78 */	mr r3, r30
/* 804EA484  FC 40 08 90 */	fmr f2, f1
/* 804EA488  7F E4 FB 78 */	mr r4, r31
/* 804EA48C  38 A0 00 3E */	li r5, 0x3e
/* 804EA490  38 C0 00 3E */	li r6, 0x3e
/* 804EA494  38 E0 00 00 */	li r7, 0
/* 804EA498  4B FE C2 61 */	bl Player_actor_InitAnimation_Base1
/* 804EA49C  48 00 00 48 */	b lbl_804EA4E4
lbl_804EA4A0:
/* 804EA4A0  80 1E 0D B4 */	lwz r0, 0xdb4(r30)
/* 804EA4A4  2C 00 00 06 */	cmpwi r0, 6
/* 804EA4A8  41 82 00 3C */	beq lbl_804EA4E4
/* 804EA4AC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EA4B0  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804EA4B4  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804EA4B8  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804EA4BC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EA4C0  3C 60 80 65 */	lis r3, lit_8792@ha /* 0x806484AC@ha */
/* 804EA4C4  C0 83 84 AC */	lfs f4, lit_8792@l(r3)  /* 0x806484AC@l */
/* 804EA4C8  7F C3 F3 78 */	mr r3, r30
/* 804EA4CC  FC 40 08 90 */	fmr f2, f1
/* 804EA4D0  7F E4 FB 78 */	mr r4, r31
/* 804EA4D4  38 A0 00 06 */	li r5, 6
/* 804EA4D8  38 C0 00 06 */	li r6, 6
/* 804EA4DC  38 E0 00 00 */	li r7, 0
/* 804EA4E0  4B FE C2 19 */	bl Player_actor_InitAnimation_Base1
lbl_804EA4E4:
/* 804EA4E4  39 61 00 40 */	addi r11, r1, 0x40
/* 804EA4E8  4B BB 0A 39 */	bl func_8009AF20
/* 804EA4EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804EA4F0  7C 08 03 A6 */	mtlr r0
/* 804EA4F4  38 21 00 40 */	addi r1, r1, 0x40
/* 804EA4F8  4E 80 00 20 */	blr 
