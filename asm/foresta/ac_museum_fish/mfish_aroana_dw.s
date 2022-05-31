lbl_8043C228:
/* 8043C228  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043C22C  7C 08 02 A6 */	mflr r0
/* 8043C230  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043C234  39 61 00 20 */	addi r11, r1, 0x20
/* 8043C238  4B C5 EC 91 */	bl func_8009AEC8
/* 8043C23C  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 8043C240  7C 7A 1B 78 */	mr r26, r3
/* 8043C244  7C 9B 23 78 */	mr r27, r4
/* 8043C248  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8043C24C  3B DA 00 38 */	addi r30, r26, 0x38
/* 8043C250  41 82 00 0C */	beq lbl_8043C25C
/* 8043C254  3B BE 00 70 */	addi r29, r30, 0x70
/* 8043C258  48 00 00 08 */	b lbl_8043C260
lbl_8043C25C:
/* 8043C25C  3B BE 02 B0 */	addi r29, r30, 0x2b0
lbl_8043C260:
/* 8043C260  C0 3A 05 A4 */	lfs f1, 0x5a4(r26)
/* 8043C264  38 60 00 00 */	li r3, 0
/* 8043C268  C0 1A 05 B0 */	lfs f0, 0x5b0(r26)
/* 8043C26C  83 9B 00 00 */	lwz r28, 0(r27)
/* 8043C270  EC 41 00 2A */	fadds f2, f1, f0
/* 8043C274  C0 3A 05 A0 */	lfs f1, 0x5a0(r26)
/* 8043C278  C0 7A 05 A8 */	lfs f3, 0x5a8(r26)
/* 8043C27C  4B FD 00 85 */	bl Matrix_translate
/* 8043C280  A8 7A 06 0C */	lha r3, 0x60c(r26)
/* 8043C284  38 C0 00 01 */	li r6, 1
/* 8043C288  A8 9A 06 0E */	lha r4, 0x60e(r26)
/* 8043C28C  A8 BA 06 10 */	lha r5, 0x610(r26)
/* 8043C290  4B FD 07 05 */	bl Matrix_rotateXYZ
/* 8043C294  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043C298  C0 7A 00 24 */	lfs f3, 0x24(r26)
/* 8043C29C  38 83 42 48 */	addi r4, r3, lit_468@l /* 0x80644248@l */
/* 8043C2A0  38 60 00 01 */	li r3, 1
/* 8043C2A4  C0 24 00 00 */	lfs f1, 0(r4)
/* 8043C2A8  FC 40 08 90 */	fmr f2, f1
/* 8043C2AC  4B FD 00 55 */	bl Matrix_translate
/* 8043C2B0  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8043C2B4  38 60 00 01 */	li r3, 1
/* 8043C2B8  FC 40 08 90 */	fmr f2, f1
/* 8043C2BC  FC 60 08 90 */	fmr f3, f1
/* 8043C2C0  4B FD 01 2D */	bl Matrix_scale
/* 8043C2C4  83 FC 02 D0 */	lwz r31, 0x2d0(r28)
/* 8043C2C8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8043C2CC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8043C2D0  38 7F 00 08 */	addi r3, r31, 8
/* 8043C2D4  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 8043C2D8  90 1F 00 00 */	stw r0, 0(r31)
/* 8043C2DC  80 7B 00 00 */	lwz r3, 0(r27)
/* 8043C2E0  4B FD 10 F5 */	bl _Matrix_to_Mtx_new
/* 8043C2E4  3C 80 80 44 */	lis r4, mfish_aroana_before_disp@ha /* 0x8043C088@ha */
/* 8043C2E8  90 7F 00 04 */	stw r3, 4(r31)
/* 8043C2EC  38 C4 C0 88 */	addi r6, r4, mfish_aroana_before_disp@l /* 0x8043C088@l */
/* 8043C2F0  7F 63 DB 78 */	mr r3, r27
/* 8043C2F4  7F C4 F3 78 */	mr r4, r30
/* 8043C2F8  7F A5 EB 78 */	mr r5, r29
/* 8043C2FC  7F 48 D3 78 */	mr r8, r26
/* 8043C300  38 E0 00 00 */	li r7, 0
/* 8043C304  4B F3 54 35 */	bl cKF_Si3_draw_R_SV
/* 8043C308  39 61 00 20 */	addi r11, r1, 0x20
/* 8043C30C  4B C5 EC 09 */	bl func_8009AF14
/* 8043C310  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8043C314  7C 08 03 A6 */	mtlr r0
/* 8043C318  38 21 00 20 */	addi r1, r1, 0x20
/* 8043C31C  4E 80 00 20 */	blr 
