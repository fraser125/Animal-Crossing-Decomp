lbl_804FC648:
/* 804FC648  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FC64C  7C 08 02 A6 */	mflr r0
/* 804FC650  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FC654  39 61 00 20 */	addi r11, r1, 0x20
/* 804FC658  4B B9 E8 7D */	bl func_8009AED4
/* 804FC65C  7C 7E 1B 78 */	mr r30, r3
/* 804FC660  7C 9F 23 78 */	mr r31, r4
/* 804FC664  4B FE 42 DD */	bl Player_actor_Get_ItemKind_from_submenu
/* 804FC668  7C 7D 07 74 */	extsb r29, r3
/* 804FC66C  38 00 00 00 */	li r0, 0
/* 804FC670  2C 1D 00 0B */	cmpwi r29, 0xb
/* 804FC674  41 80 00 10 */	blt lbl_804FC684
/* 804FC678  2C 1D 00 33 */	cmpwi r29, 0x33
/* 804FC67C  40 80 00 08 */	bge lbl_804FC684
/* 804FC680  38 00 00 01 */	li r0, 1
lbl_804FC684:
/* 804FC684  2C 00 00 00 */	cmpwi r0, 0
/* 804FC688  40 82 00 A0 */	bne lbl_804FC728
/* 804FC68C  3C 60 80 65 */	lis r3, lit_13856@ha /* 0x80648564@ha */
/* 804FC690  C0 3E 0D 50 */	lfs f1, 0xd50(r30)
/* 804FC694  C0 63 85 64 */	lfs f3, lit_13856@l(r3)  /* 0x80648564@l */
/* 804FC698  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 804FC69C  40 80 00 8C */	bge lbl_804FC728
/* 804FC6A0  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804FC6A4  3C 60 80 64 */	lis r3, lit_1076@ha /* 0x80646A18@ha */
/* 804FC6A8  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804FC6AC  C0 43 6A 18 */	lfs f2, lit_1076@l(r3)  /* 0x80646A18@l */
/* 804FC6B0  EC 01 00 2A */	fadds f0, f1, f0
/* 804FC6B4  D0 1E 0D 50 */	stfs f0, 0xd50(r30)
/* 804FC6B8  C0 3E 0D 50 */	lfs f1, 0xd50(r30)
/* 804FC6BC  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 804FC6C0  4C 41 13 82 */	cror 2, 1, 2
/* 804FC6C4  40 82 00 64 */	bne lbl_804FC728
/* 804FC6C8  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804FC6CC  C0 83 65 68 */	lfs f4, lit_604@l(r3)  /* 0x80646568@l */
/* 804FC6D0  FC A0 20 90 */	fmr f5, f4
/* 804FC6D4  4B EB EF 29 */	bl get_percent_forAccelBrake
/* 804FC6D8  D0 3E 0D F8 */	stfs f1, 0xdf8(r30)
/* 804FC6DC  7F A3 EB 78 */	mr r3, r29
/* 804FC6E0  4B ED C5 55 */	bl mPlib_Get_BasicPlayerAnimeIndex_fromItemKind
/* 804FC6E4  80 1E 0D B4 */	lwz r0, 0xdb4(r30)
/* 804FC6E8  7C 65 1B 78 */	mr r5, r3
/* 804FC6EC  7C 00 28 00 */	cmpw r0, r5
/* 804FC6F0  41 82 00 38 */	beq lbl_804FC728
/* 804FC6F4  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FC6F8  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FC6FC  38 C3 65 64 */	addi r6, r3, lit_603@l /* 0x80646564@l */
/* 804FC700  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FC704  C0 26 00 00 */	lfs f1, 0(r6)
/* 804FC708  3C 60 80 64 */	lis r3, lit_3573@ha /* 0x80647A44@ha */
/* 804FC70C  C0 83 7A 44 */	lfs f4, lit_3573@l(r3)  /* 0x80647A44@l */
/* 804FC710  7F C3 F3 78 */	mr r3, r30
/* 804FC714  FC 40 08 90 */	fmr f2, f1
/* 804FC718  7F E4 FB 78 */	mr r4, r31
/* 804FC71C  7C A6 2B 78 */	mr r6, r5
/* 804FC720  38 E0 00 00 */	li r7, 0
/* 804FC724  4B FD 9F D5 */	bl Player_actor_InitAnimation_Base1
lbl_804FC728:
/* 804FC728  39 61 00 20 */	addi r11, r1, 0x20
/* 804FC72C  4B B9 E7 F5 */	bl func_8009AF20
/* 804FC730  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FC734  7C 08 03 A6 */	mtlr r0
/* 804FC738  38 21 00 20 */	addi r1, r1, 0x20
/* 804FC73C  4E 80 00 20 */	blr 
