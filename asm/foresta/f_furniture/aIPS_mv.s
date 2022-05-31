lbl_8064000C:
/* 8064000C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80640010  7C 08 02 A6 */	mflr r0
/* 80640014  90 01 00 14 */	stw r0, 0x14(r1)
/* 80640018  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8064001C  93 C1 00 08 */	stw r30, 8(r1)
/* 80640020  7C 7E 1B 78 */	mr r30, r3
/* 80640024  3B FE 01 34 */	addi r31, r30, 0x134
/* 80640028  7F E3 FB 78 */	mr r3, r31
/* 8064002C  4B D3 0F E9 */	bl cKF_SkeletonInfo_R_play
/* 80640030  2C 03 00 01 */	cmpwi r3, 1
/* 80640034  41 82 00 8C */	beq lbl_806400C0
/* 80640038  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8064003C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80640040  C0 23 D2 78 */	lfs f1, lit_368@l(r3)  /* 0x8064D278@l */
/* 80640044  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80640048  41 82 00 78 */	beq lbl_806400C0
/* 8064004C  7F E3 FB 78 */	mr r3, r31
/* 80640050  4B D3 0F C5 */	bl cKF_SkeletonInfo_R_play
/* 80640054  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80640058  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8064005C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80640060  88 1E 01 2D */	lbz r0, 0x12d(r30)
/* 80640064  28 00 00 00 */	cmplwi r0, 0
/* 80640068  41 82 00 B4 */	beq lbl_8064011C
/* 8064006C  A8 1E 00 3C */	lha r0, 0x3c(r30)
/* 80640070  2C 00 00 0D */	cmpwi r0, 0xd
/* 80640074  41 82 00 28 */	beq lbl_8064009C
/* 80640078  2C 00 00 0E */	cmpwi r0, 0xe
/* 8064007C  41 82 00 20 */	beq lbl_8064009C
/* 80640080  2C 00 00 0F */	cmpwi r0, 0xf
/* 80640084  41 82 00 18 */	beq lbl_8064009C
/* 80640088  2C 00 00 0C */	cmpwi r0, 0xc
/* 8064008C  41 82 00 10 */	beq lbl_8064009C
/* 80640090  38 9E 00 08 */	addi r4, r30, 8
/* 80640094  38 60 01 75 */	li r3, 0x175
/* 80640098  4B FE DF 11 */	bl sAdo_OngenTrgStart
lbl_8064009C:
/* 8064009C  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 806400A0  7F E3 FB 78 */	mr r3, r31
/* 806400A4  C0 04 D2 74 */	lfs f0, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 806400A8  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 806400AC  4B D3 0F 69 */	bl cKF_SkeletonInfo_R_play
/* 806400B0  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 806400B4  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 806400B8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 806400BC  48 00 00 60 */	b lbl_8064011C
lbl_806400C0:
/* 806400C0  88 1E 01 2D */	lbz r0, 0x12d(r30)
/* 806400C4  28 00 00 00 */	cmplwi r0, 0
/* 806400C8  41 82 00 54 */	beq lbl_8064011C
/* 806400CC  A8 1E 00 3C */	lha r0, 0x3c(r30)
/* 806400D0  2C 00 00 0D */	cmpwi r0, 0xd
/* 806400D4  41 82 00 28 */	beq lbl_806400FC
/* 806400D8  2C 00 00 0E */	cmpwi r0, 0xe
/* 806400DC  41 82 00 20 */	beq lbl_806400FC
/* 806400E0  2C 00 00 0F */	cmpwi r0, 0xf
/* 806400E4  41 82 00 18 */	beq lbl_806400FC
/* 806400E8  2C 00 00 0C */	cmpwi r0, 0xc
/* 806400EC  41 82 00 10 */	beq lbl_806400FC
/* 806400F0  38 9E 00 08 */	addi r4, r30, 8
/* 806400F4  38 60 01 75 */	li r3, 0x175
/* 806400F8  4B FE DE B1 */	bl sAdo_OngenTrgStart
lbl_806400FC:
/* 806400FC  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 80640100  7F E3 FB 78 */	mr r3, r31
/* 80640104  C0 04 D2 74 */	lfs f0, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 80640108  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8064010C  4B D3 0F 09 */	bl cKF_SkeletonInfo_R_play
/* 80640110  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80640114  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80640118  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8064011C:
/* 8064011C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80640120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80640124  83 C1 00 08 */	lwz r30, 8(r1)
/* 80640128  7C 08 03 A6 */	mtlr r0
/* 8064012C  38 21 00 10 */	addi r1, r1, 0x10
/* 80640130  4E 80 00 20 */	blr 
