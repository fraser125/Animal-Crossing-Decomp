lbl_8050D0C8:
/* 8050D0C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050D0CC  7C 08 02 A6 */	mflr r0
/* 8050D0D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050D0D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050D0D8  7C 7F 1B 78 */	mr r31, r3
/* 8050D0DC  93 C1 00 08 */	stw r30, 8(r1)
/* 8050D0E0  7C 9E 23 78 */	mr r30, r4
/* 8050D0E4  7F C3 F3 78 */	mr r3, r30
/* 8050D0E8  4B EC C5 59 */	bl get_player_actor_withoutCheck
/* 8050D0EC  28 03 00 00 */	cmplwi r3, 0
/* 8050D0F0  41 82 00 18 */	beq lbl_8050D108
/* 8050D0F4  3C 80 80 65 */	lis r4, lit_539@ha /* 0x80648EB8@ha */
/* 8050D0F8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8050D0FC  C0 24 8E B8 */	lfs f1, lit_539@l(r4)  /* 0x80648EB8@l */
/* 8050D100  EC 01 00 2A */	fadds f0, f1, f0
/* 8050D104  D0 1F 04 34 */	stfs f0, 0x434(r31)
lbl_8050D108:
/* 8050D108  38 00 7F FF */	li r0, 0x7fff
/* 8050D10C  B0 1F 00 DC */	sth r0, 0xdc(r31)
/* 8050D110  A8 7F 00 E0 */	lha r3, 0xe0(r31)
/* 8050D114  38 03 10 00 */	addi r0, r3, 0x1000
/* 8050D118  B0 1F 00 E0 */	sth r0, 0xe0(r31)
/* 8050D11C  80 7F 04 38 */	lwz r3, 0x438(r31)
/* 8050D120  38 03 00 03 */	addi r0, r3, 3
/* 8050D124  90 1F 04 38 */	stw r0, 0x438(r31)
/* 8050D128  80 1F 04 38 */	lwz r0, 0x438(r31)
/* 8050D12C  2C 00 00 FF */	cmpwi r0, 0xff
/* 8050D130  41 80 00 20 */	blt lbl_8050D150
/* 8050D134  38 00 00 FF */	li r0, 0xff
/* 8050D138  7F E3 FB 78 */	mr r3, r31
/* 8050D13C  90 1F 04 38 */	stw r0, 0x438(r31)
/* 8050D140  7F C5 F3 78 */	mr r5, r30
/* 8050D144  38 80 00 01 */	li r4, 1
/* 8050D148  48 00 05 79 */	bl aBEE_setupAction
/* 8050D14C  48 00 00 20 */	b lbl_8050D16C
lbl_8050D150:
/* 8050D150  3C 60 80 65 */	lis r3, lit_580@ha /* 0x80648EE4@ha */
/* 8050D154  3C 80 80 65 */	lis r4, lit_581@ha /* 0x80648EE8@ha */
/* 8050D158  38 A3 8E E4 */	addi r5, r3, lit_580@l /* 0x80648EE4@l */
/* 8050D15C  C0 44 8E E8 */	lfs f2, lit_581@l(r4)  /* 0x80648EE8@l */
/* 8050D160  C0 25 00 00 */	lfs f1, 0(r5)
/* 8050D164  7F E3 FB 78 */	mr r3, r31
/* 8050D168  4B FF F8 29 */	bl aBEE_calc_scale
lbl_8050D16C:
/* 8050D16C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050D170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050D174  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050D178  7C 08 03 A6 */	mtlr r0
/* 8050D17C  38 21 00 10 */	addi r1, r1, 0x10
/* 8050D180  4E 80 00 20 */	blr 
