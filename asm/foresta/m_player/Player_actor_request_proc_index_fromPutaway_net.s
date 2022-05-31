lbl_804F4AA4:
/* 804F4AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F4AA8  7C 08 02 A6 */	mflr r0
/* 804F4AAC  2C 05 00 00 */	cmpwi r5, 0
/* 804F4AB0  7C 66 1B 78 */	mr r6, r3
/* 804F4AB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F4AB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F4ABC  7C 9F 23 78 */	mr r31, r4
/* 804F4AC0  41 82 00 70 */	beq lbl_804F4B30
/* 804F4AC4  80 06 0D 18 */	lwz r0, 0xd18(r6)
/* 804F4AC8  2C 00 00 00 */	cmpwi r0, 0
/* 804F4ACC  41 82 00 3C */	beq lbl_804F4B08
/* 804F4AD0  88 06 0E 74 */	lbz r0, 0xe74(r6)
/* 804F4AD4  7C 00 07 75 */	extsb. r0, r0
/* 804F4AD8  40 82 00 58 */	bne lbl_804F4B30
/* 804F4ADC  80 A6 0E 70 */	lwz r5, 0xe70(r6)
/* 804F4AE0  38 7F 1D EC */	addi r3, r31, 0x1dec
/* 804F4AE4  A9 06 00 DE */	lha r8, 0xde(r6)
/* 804F4AE8  38 80 00 01 */	li r4, 1
/* 804F4AEC  80 C5 01 D0 */	lwz r6, 0x1d0(r5)
/* 804F4AF0  38 A0 00 0D */	li r5, 0xd
/* 804F4AF4  38 E0 00 00 */	li r7, 0
/* 804F4AF8  38 06 2D 00 */	addi r0, r6, 0x2d00
/* 804F4AFC  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 804F4B00  4B EF AC 29 */	bl mSM_open_submenu_new2
/* 804F4B04  48 00 00 2C */	b lbl_804F4B30
lbl_804F4B08:
/* 804F4B08  4B FE 08 65 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F4B0C  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F4B10  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F4B14  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804F4B18  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804F4B1C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F4B20  7F E3 FB 78 */	mr r3, r31
/* 804F4B24  38 80 00 00 */	li r4, 0
/* 804F4B28  38 A0 00 01 */	li r5, 1
/* 804F4B2C  4B FF 10 D1 */	bl func_804E5BFC
lbl_804F4B30:
/* 804F4B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F4B34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F4B38  7C 08 03 A6 */	mtlr r0
/* 804F4B3C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F4B40  4E 80 00 20 */	blr 
