lbl_804C646C:
/* 804C646C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804C6470  7C 08 02 A6 */	mflr r0
/* 804C6474  90 01 00 64 */	stw r0, 0x64(r1)
/* 804C6478  39 61 00 60 */	addi r11, r1, 0x60
/* 804C647C  4B BD 4A 41 */	bl func_8009AEBC
/* 804C6480  3C C0 80 6A */	lis r6, BI_chk_pos@ha /* 0x8069B89C@ha */
/* 804C6484  7C 7A 1B 78 */	mr r26, r3
/* 804C6488  7C 9B 23 78 */	mr r27, r4
/* 804C648C  7C BC 2B 78 */	mr r28, r5
/* 804C6490  3B E6 B8 9C */	addi r31, r6, BI_chk_pos@l /* 0x8069B89C@l */
/* 804C6494  3B C0 00 09 */	li r30, 9
/* 804C6498  3B 20 00 48 */	li r25, 0x48
/* 804C649C  3B A0 00 00 */	li r29, 0
/* 804C64A0  48 00 01 00 */	b lbl_804C65A0
lbl_804C64A4:
/* 804C64A4  3B 39 FF F8 */	addi r25, r25, -8
/* 804C64A8  C0 5A 00 00 */	lfs f2, 0(r26)
/* 804C64AC  7C 7F CA 14 */	add r3, r31, r25
/* 804C64B0  80 01 00 30 */	lwz r0, 0x30(r1)
/* 804C64B4  C0 23 00 00 */	lfs f1, 0(r3)
/* 804C64B8  3B DE FF FF */	addi r30, r30, -1
/* 804C64BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 804C64C0  38 61 00 20 */	addi r3, r1, 0x20
/* 804C64C4  EC 22 08 2A */	fadds f1, f2, f1
/* 804C64C8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804C64CC  C0 3A 00 08 */	lfs f1, 8(r26)
/* 804C64D0  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 804C64D4  EC 01 00 2A */	fadds f0, f1, f0
/* 804C64D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C64DC  90 81 00 20 */	stw r4, 0x20(r1)
/* 804C64E0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804C64E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C64E8  90 01 00 28 */	stw r0, 0x28(r1)
/* 804C64EC  4B EE 0F 45 */	bl mFI_GetUnitFG
/* 804C64F0  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804C64F4  7C 77 1B 78 */	mr r23, r3
/* 804C64F8  80 81 00 30 */	lwz r4, 0x30(r1)
/* 804C64FC  38 61 00 14 */	addi r3, r1, 0x14
/* 804C6500  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C6504  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804C6508  C0 38 00 00 */	lfs f1, 0(r24)
/* 804C650C  90 81 00 18 */	stw r4, 0x18(r1)
/* 804C6510  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C6514  4B EC 94 85 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804C6518  28 17 00 00 */	cmplwi r23, 0
/* 804C651C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804C6520  41 82 00 88 */	beq lbl_804C65A8
/* 804C6524  A0 77 00 00 */	lhz r3, 0(r23)
/* 804C6528  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 804C652C  7C 03 00 40 */	cmplw r3, r0
/* 804C6530  40 82 00 78 */	bne lbl_804C65A8
/* 804C6534  3C 60 80 64 */	lis r3, lit_633@ha /* 0x806461E0@ha */
/* 804C6538  FC 60 08 18 */	frsp f3, f1
/* 804C653C  C0 5C 00 04 */	lfs f2, 4(r28)
/* 804C6540  C0 23 61 E0 */	lfs f1, lit_633@l(r3)  /* 0x806461E0@l */
/* 804C6544  EC 01 10 2A */	fadds f0, f1, f2
/* 804C6548  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804C654C  4C 40 13 82 */	cror 2, 0, 2
/* 804C6550  40 82 00 58 */	bne lbl_804C65A8
/* 804C6554  EC 02 08 28 */	fsubs f0, f2, f1
/* 804C6558  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804C655C  4C 41 13 82 */	cror 2, 1, 2
/* 804C6560  40 82 00 48 */	bne lbl_804C65A8
/* 804C6564  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804C6568  38 61 00 08 */	addi r3, r1, 8
/* 804C656C  80 81 00 30 */	lwz r4, 0x30(r1)
/* 804C6570  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C6574  90 A1 00 08 */	stw r5, 8(r1)
/* 804C6578  90 81 00 0C */	stw r4, 0xc(r1)
/* 804C657C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C6580  4B EC 99 59 */	bl mCoBG_CheckPlace
/* 804C6584  2C 03 00 00 */	cmpwi r3, 0
/* 804C6588  41 82 00 20 */	beq lbl_804C65A8
/* 804C658C  7F 43 D3 78 */	mr r3, r26
/* 804C6590  38 81 00 2C */	addi r4, r1, 0x2c
/* 804C6594  4B EF 49 29 */	bl xyz_t_move
/* 804C6598  3B A0 00 01 */	li r29, 1
/* 804C659C  48 00 00 14 */	b lbl_804C65B0
lbl_804C65A0:
/* 804C65A0  3C 60 80 64 */	lis r3, data_806461DC@ha /* 0x806461DC@ha */
/* 804C65A4  3B 03 61 DC */	addi r24, r3, data_806461DC@l /* 0x806461DC@l */
lbl_804C65A8:
/* 804C65A8  2C 1E 00 00 */	cmpwi r30, 0
/* 804C65AC  40 82 FE F8 */	bne lbl_804C64A4
lbl_804C65B0:
/* 804C65B0  7F A3 EB 78 */	mr r3, r29
/* 804C65B4  39 61 00 60 */	addi r11, r1, 0x60
/* 804C65B8  4B BD 49 51 */	bl func_8009AF08
/* 804C65BC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804C65C0  7C 08 03 A6 */	mtlr r0
/* 804C65C4  38 21 00 60 */	addi r1, r1, 0x60
/* 804C65C8  4E 80 00 20 */	blr 
