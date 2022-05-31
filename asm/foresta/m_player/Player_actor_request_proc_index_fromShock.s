lbl_80503C80:
/* 80503C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80503C84  7C 08 02 A6 */	mflr r0
/* 80503C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80503C8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80503C90  7C 9F 23 78 */	mr r31, r4
/* 80503C94  93 C1 00 08 */	stw r30, 8(r1)
/* 80503C98  7C 7E 1B 78 */	mr r30, r3
/* 80503C9C  38 9E 0D 20 */	addi r4, r30, 0xd20
/* 80503CA0  C0 03 0D 24 */	lfs f0, 0xd24(r3)
/* 80503CA4  C0 23 0D 20 */	lfs f1, 0xd20(r3)
/* 80503CA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80503CAC  40 80 00 64 */	bge lbl_80503D10
/* 80503CB0  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80503CB4  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 80503CB8  EC 01 00 2A */	fadds f0, f1, f0
/* 80503CBC  D0 04 00 00 */	stfs f0, 0(r4)
/* 80503CC0  88 1E 0D 28 */	lbz r0, 0xd28(r30)
/* 80503CC4  7C 00 07 75 */	extsb. r0, r0
/* 80503CC8  41 82 00 70 */	beq lbl_80503D38
/* 80503CCC  80 1E 0D 2C */	lwz r0, 0xd2c(r30)
/* 80503CD0  2C 00 00 00 */	cmpwi r0, 0
/* 80503CD4  41 82 00 64 */	beq lbl_80503D38
/* 80503CD8  80 1E 0D 30 */	lwz r0, 0xd30(r30)
/* 80503CDC  2C 00 00 00 */	cmpwi r0, 0
/* 80503CE0  40 82 00 58 */	bne lbl_80503D38
/* 80503CE4  3C 60 80 64 */	lis r3, lit_2697@ha /* 0x80646C50@ha */
/* 80503CE8  C0 24 00 00 */	lfs f1, 0(r4)
/* 80503CEC  C0 03 6C 50 */	lfs f0, lit_2697@l(r3)  /* 0x80646C50@l */
/* 80503CF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80503CF4  4C 41 13 82 */	cror 2, 1, 2
/* 80503CF8  40 82 00 40 */	bne lbl_80503D38
/* 80503CFC  38 60 00 00 */	li r3, 0
/* 80503D00  4B E7 7E 85 */	bl mBGMPsComp_make_ps_quiet
/* 80503D04  38 00 00 01 */	li r0, 1
/* 80503D08  90 1E 0D 30 */	stw r0, 0xd30(r30)
/* 80503D0C  48 00 00 2C */	b lbl_80503D38
lbl_80503D10:
/* 80503D10  4B FD 16 5D */	bl Player_actor_SettleRequestMainIndexPriority
/* 80503D14  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80503D18  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 80503D1C  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 80503D20  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 80503D24  C0 25 00 00 */	lfs f1, 0(r5)
/* 80503D28  7F E3 FB 78 */	mr r3, r31
/* 80503D2C  38 80 00 00 */	li r4, 0
/* 80503D30  38 A0 00 01 */	li r5, 1
/* 80503D34  4B FE 1E C9 */	bl func_804E5BFC
lbl_80503D38:
/* 80503D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80503D3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80503D40  83 C1 00 08 */	lwz r30, 8(r1)
/* 80503D44  7C 08 03 A6 */	mtlr r0
/* 80503D48  38 21 00 10 */	addi r1, r1, 0x10
/* 80503D4C  4E 80 00 20 */	blr 
