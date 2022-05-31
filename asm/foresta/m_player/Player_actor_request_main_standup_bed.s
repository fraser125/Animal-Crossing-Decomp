lbl_804ECC08:
/* 804ECC08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804ECC0C  7C 08 02 A6 */	mflr r0
/* 804ECC10  90 01 00 34 */	stw r0, 0x34(r1)
/* 804ECC14  39 61 00 30 */	addi r11, r1, 0x30
/* 804ECC18  4B BA E2 BD */	bl func_8009AED4
/* 804ECC1C  7C 9E 23 78 */	mr r30, r4
/* 804ECC20  7C 7D 1B 78 */	mr r29, r3
/* 804ECC24  7C BF 2B 78 */	mr r31, r5
/* 804ECC28  38 80 00 1D */	li r4, 0x1d
/* 804ECC2C  4B FE D8 2D */	bl Player_actor_check_request_main_able
/* 804ECC30  2C 03 00 00 */	cmpwi r3, 0
/* 804ECC34  41 82 01 5C */	beq lbl_804ECD90
/* 804ECC38  7F A3 EB 78 */	mr r3, r29
/* 804ECC3C  4B FF FF 91 */	bl func_804ECBCC
/* 804ECC40  2C 03 00 00 */	cmpwi r3, 0
/* 804ECC44  41 82 01 4C */	beq lbl_804ECD90
/* 804ECC48  7F A3 EB 78 */	mr r3, r29
/* 804ECC4C  4B EE C9 F5 */	bl get_player_actor_withoutCheck
/* 804ECC50  80 83 00 28 */	lwz r4, 0x28(r3)
/* 804ECC54  2C 1E 00 01 */	cmpwi r30, 1
/* 804ECC58  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804ECC5C  90 81 00 08 */	stw r4, 8(r1)
/* 804ECC60  90 01 00 0C */	stw r0, 0xc(r1)
/* 804ECC64  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804ECC68  90 01 00 10 */	stw r0, 0x10(r1)
/* 804ECC6C  A8 03 00 DE */	lha r0, 0xde(r3)
/* 804ECC70  40 82 00 34 */	bne lbl_804ECCA4
/* 804ECC74  7C 00 07 35 */	extsh. r0, r0
/* 804ECC78  40 82 00 18 */	bne lbl_804ECC90
/* 804ECC7C  3C 80 80 64 */	lis r4, lit_1165@ha /* 0x80646A24@ha */
/* 804ECC80  3C 60 80 64 */	lis r3, lit_6257@ha /* 0x80647E60@ha */
/* 804ECC84  C0 44 6A 24 */	lfs f2, lit_1165@l(r4)  /* 0x80646A24@l */
/* 804ECC88  C0 63 7E 60 */	lfs f3, lit_6257@l(r3)  /* 0x80647E60@l */
/* 804ECC8C  48 00 00 B4 */	b lbl_804ECD40
lbl_804ECC90:
/* 804ECC90  3C 80 80 64 */	lis r4, lit_1165@ha /* 0x80646A24@ha */
/* 804ECC94  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804ECC98  C0 44 6A 24 */	lfs f2, lit_1165@l(r4)  /* 0x80646A24@l */
/* 804ECC9C  C0 63 83 54 */	lfs f3, lit_7381@l(r3)  /* 0x80648354@l */
/* 804ECCA0  48 00 00 A0 */	b lbl_804ECD40
lbl_804ECCA4:
/* 804ECCA4  2C 1E 00 02 */	cmpwi r30, 2
/* 804ECCA8  40 82 00 34 */	bne lbl_804ECCDC
/* 804ECCAC  7C 00 07 35 */	extsh. r0, r0
/* 804ECCB0  40 82 00 18 */	bne lbl_804ECCC8
/* 804ECCB4  3C 80 80 65 */	lis r4, lit_9440@ha /* 0x806484C4@ha */
/* 804ECCB8  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804ECCBC  C0 44 84 C4 */	lfs f2, lit_9440@l(r4)  /* 0x806484C4@l */
/* 804ECCC0  C0 63 83 54 */	lfs f3, lit_7381@l(r3)  /* 0x80648354@l */
/* 804ECCC4  48 00 00 7C */	b lbl_804ECD40
lbl_804ECCC8:
/* 804ECCC8  3C 80 80 65 */	lis r4, lit_9440@ha /* 0x806484C4@ha */
/* 804ECCCC  3C 60 80 64 */	lis r3, lit_6257@ha /* 0x80647E60@ha */
/* 804ECCD0  C0 44 84 C4 */	lfs f2, lit_9440@l(r4)  /* 0x806484C4@l */
/* 804ECCD4  C0 63 7E 60 */	lfs f3, lit_6257@l(r3)  /* 0x80647E60@l */
/* 804ECCD8  48 00 00 68 */	b lbl_804ECD40
lbl_804ECCDC:
/* 804ECCDC  2C 1E 00 03 */	cmpwi r30, 3
/* 804ECCE0  40 82 00 34 */	bne lbl_804ECD14
/* 804ECCE4  2C 00 40 00 */	cmpwi r0, 0x4000
/* 804ECCE8  40 82 00 18 */	bne lbl_804ECD00
/* 804ECCEC  3C 80 80 64 */	lis r4, lit_6257@ha /* 0x80647E60@ha */
/* 804ECCF0  3C 60 80 65 */	lis r3, lit_9440@ha /* 0x806484C4@ha */
/* 804ECCF4  C0 44 7E 60 */	lfs f2, lit_6257@l(r4)  /* 0x80647E60@l */
/* 804ECCF8  C0 63 84 C4 */	lfs f3, lit_9440@l(r3)  /* 0x806484C4@l */
/* 804ECCFC  48 00 00 44 */	b lbl_804ECD40
lbl_804ECD00:
/* 804ECD00  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804ECD04  3C 60 80 65 */	lis r3, lit_9440@ha /* 0x806484C4@ha */
/* 804ECD08  C0 44 83 54 */	lfs f2, lit_7381@l(r4)  /* 0x80648354@l */
/* 804ECD0C  C0 63 84 C4 */	lfs f3, lit_9440@l(r3)  /* 0x806484C4@l */
/* 804ECD10  48 00 00 30 */	b lbl_804ECD40
lbl_804ECD14:
/* 804ECD14  2C 00 40 00 */	cmpwi r0, 0x4000
/* 804ECD18  40 82 00 18 */	bne lbl_804ECD30
/* 804ECD1C  3C 80 80 64 */	lis r4, lit_6257@ha /* 0x80647E60@ha */
/* 804ECD20  3C 60 80 64 */	lis r3, lit_1165@ha /* 0x80646A24@ha */
/* 804ECD24  C0 44 7E 60 */	lfs f2, lit_6257@l(r4)  /* 0x80647E60@l */
/* 804ECD28  C0 63 6A 24 */	lfs f3, lit_1165@l(r3)  /* 0x80646A24@l */
/* 804ECD2C  48 00 00 14 */	b lbl_804ECD40
lbl_804ECD30:
/* 804ECD30  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804ECD34  3C 60 80 64 */	lis r3, lit_1165@ha /* 0x80646A24@ha */
/* 804ECD38  C0 44 83 54 */	lfs f2, lit_7381@l(r4)  /* 0x80648354@l */
/* 804ECD3C  C0 63 6A 24 */	lfs f3, lit_1165@l(r3)  /* 0x80646A24@l */
lbl_804ECD40:
/* 804ECD40  C0 21 00 08 */	lfs f1, 8(r1)
/* 804ECD44  7F A3 EB 78 */	mr r3, r29
/* 804ECD48  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804ECD4C  38 81 00 08 */	addi r4, r1, 8
/* 804ECD50  EC 21 10 2A */	fadds f1, f1, f2
/* 804ECD54  EC 00 18 2A */	fadds f0, f0, f3
/* 804ECD58  D0 21 00 08 */	stfs f1, 8(r1)
/* 804ECD5C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804ECD60  4B FE DF E1 */	bl Player_actor_SearchPosition_npc_forStand
/* 804ECD64  2C 03 00 00 */	cmpwi r3, 0
/* 804ECD68  40 82 00 28 */	bne lbl_804ECD90
/* 804ECD6C  7F A3 EB 78 */	mr r3, r29
/* 804ECD70  4B EE C8 D1 */	bl get_player_actor_withoutCheck
/* 804ECD74  93 C3 0D 60 */	stw r30, 0xd60(r3)
/* 804ECD78  7F A3 EB 78 */	mr r3, r29
/* 804ECD7C  7F E5 FB 78 */	mr r5, r31
/* 804ECD80  38 80 00 1D */	li r4, 0x1d
/* 804ECD84  4B FE 82 91 */	bl Player_actor_request_main_index
/* 804ECD88  38 60 00 01 */	li r3, 1
/* 804ECD8C  48 00 00 08 */	b lbl_804ECD94
lbl_804ECD90:
/* 804ECD90  38 60 00 00 */	li r3, 0
lbl_804ECD94:
/* 804ECD94  39 61 00 30 */	addi r11, r1, 0x30
/* 804ECD98  4B BA E1 89 */	bl func_8009AF20
/* 804ECD9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804ECDA0  7C 08 03 A6 */	mtlr r0
/* 804ECDA4  38 21 00 30 */	addi r1, r1, 0x30
/* 804ECDA8  4E 80 00 20 */	blr 
