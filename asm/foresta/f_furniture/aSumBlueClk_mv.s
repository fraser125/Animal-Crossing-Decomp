lbl_806363C0:
/* 806363C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806363C4  7C 08 02 A6 */	mflr r0
/* 806363C8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 806363CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806363D0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 806363D4  3C 84 00 02 */	addis r4, r4, 2
/* 806363D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806363DC  3B E3 01 34 */	addi r31, r3, 0x134
/* 806363E0  80 84 60 8C */	lwz r4, 0x608c(r4)
/* 806363E4  28 04 00 00 */	cmplwi r4, 0
/* 806363E8  41 82 00 9C */	beq lbl_80636484
/* 806363EC  80 84 00 60 */	lwz r4, 0x60(r4)
/* 806363F0  80 04 00 08 */	lwz r0, 8(r4)
/* 806363F4  2C 00 00 00 */	cmpwi r0, 0
/* 806363F8  41 82 00 30 */	beq lbl_80636428
/* 806363FC  3C 80 81 00 */	lis r4, cKF_ba_r_int_sum_blue_clk@ha /* 0x80FFA634@ha */
/* 80636400  7F E3 FB 78 */	mr r3, r31
/* 80636404  38 84 A6 34 */	addi r4, r4, cKF_ba_r_int_sum_blue_clk@l /* 0x80FFA634@l */
/* 80636408  38 A0 00 00 */	li r5, 0
/* 8063640C  4B D3 A7 D9 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 80636410  7F E3 FB 78 */	mr r3, r31
/* 80636414  4B D3 AC 01 */	bl cKF_SkeletonInfo_R_play
/* 80636418  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063641C  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80636420  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80636424  48 00 00 60 */	b lbl_80636484
lbl_80636428:
/* 80636428  80 04 00 00 */	lwz r0, 0(r4)
/* 8063642C  2C 00 00 01 */	cmpwi r0, 1
/* 80636430  41 82 00 10 */	beq lbl_80636440
/* 80636434  80 04 00 04 */	lwz r0, 4(r4)
/* 80636438  2C 00 00 01 */	cmpwi r0, 1
/* 8063643C  40 82 00 40 */	bne lbl_8063647C
lbl_80636440:
/* 80636440  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 80636444  2C 00 00 0D */	cmpwi r0, 0xd
/* 80636448  41 82 00 28 */	beq lbl_80636470
/* 8063644C  2C 00 00 0E */	cmpwi r0, 0xe
/* 80636450  41 82 00 20 */	beq lbl_80636470
/* 80636454  2C 00 00 0F */	cmpwi r0, 0xf
/* 80636458  41 82 00 18 */	beq lbl_80636470
/* 8063645C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80636460  41 82 00 10 */	beq lbl_80636470
/* 80636464  38 83 00 08 */	addi r4, r3, 8
/* 80636468  38 60 01 2D */	li r3, 0x12d
/* 8063646C  4B FF 7B 3D */	bl sAdo_OngenTrgStart
lbl_80636470:
/* 80636470  7F E3 FB 78 */	mr r3, r31
/* 80636474  4B D3 AB A1 */	bl cKF_SkeletonInfo_R_play
/* 80636478  48 00 00 0C */	b lbl_80636484
lbl_8063647C:
/* 8063647C  7F E3 FB 78 */	mr r3, r31
/* 80636480  4B D3 AB 95 */	bl cKF_SkeletonInfo_R_play
lbl_80636484:
/* 80636484  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80636488  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063648C  7C 08 03 A6 */	mtlr r0
/* 80636490  38 21 00 10 */	addi r1, r1, 0x10
/* 80636494  4E 80 00 20 */	blr 
