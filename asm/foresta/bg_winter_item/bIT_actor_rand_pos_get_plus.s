lbl_804BFD4C:
/* 804BFD4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804BFD50  7C 08 02 A6 */	mflr r0
/* 804BFD54  90 01 00 44 */	stw r0, 0x44(r1)
/* 804BFD58  39 61 00 40 */	addi r11, r1, 0x40
/* 804BFD5C  4B BD B1 75 */	bl func_8009AED0
/* 804BFD60  7C BE 2B 78 */	mr r30, r5
/* 804BFD64  7C 7C 1B 78 */	mr r28, r3
/* 804BFD68  80 A5 00 00 */	lwz r5, 0(r5)
/* 804BFD6C  7C 9D 23 78 */	mr r29, r4
/* 804BFD70  80 DE 00 04 */	lwz r6, 4(r30)
/* 804BFD74  38 61 00 14 */	addi r3, r1, 0x14
/* 804BFD78  80 1E 00 08 */	lwz r0, 8(r30)
/* 804BFD7C  38 81 00 10 */	addi r4, r1, 0x10
/* 804BFD80  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804BFD84  38 A1 00 18 */	addi r5, r1, 0x18
/* 804BFD88  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 804BFD8C  90 01 00 20 */	stw r0, 0x20(r1)
/* 804BFD90  4B EE 55 D9 */	bl mFI_Wpos2UtNum
/* 804BFD94  7C 7F 1B 78 */	mr r31, r3
/* 804BFD98  7F C4 F3 78 */	mr r4, r30
/* 804BFD9C  38 61 00 24 */	addi r3, r1, 0x24
/* 804BFDA0  4B EF B1 1D */	bl xyz_t_move
/* 804BFDA4  2C 1F 00 00 */	cmpwi r31, 0
/* 804BFDA8  41 82 00 60 */	beq lbl_804BFE08
/* 804BFDAC  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 804BFDB0  28 00 00 08 */	cmplwi r0, 8
/* 804BFDB4  41 80 00 0C */	blt lbl_804BFDC0
/* 804BFDB8  28 00 00 0A */	cmplwi r0, 0xa
/* 804BFDBC  40 81 00 18 */	ble lbl_804BFDD4
lbl_804BFDC0:
/* 804BFDC0  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 804BFDC4  28 00 25 14 */	cmplwi r0, 0x2514
/* 804BFDC8  41 80 00 40 */	blt lbl_804BFE08
/* 804BFDCC  28 00 25 1B */	cmplwi r0, 0x251b
/* 804BFDD0  41 81 00 38 */	bgt lbl_804BFE08
lbl_804BFDD4:
/* 804BFDD4  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 804BFDD8  38 61 00 0C */	addi r3, r1, 0xc
/* 804BFDDC  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 804BFDE0  38 81 00 08 */	addi r4, r1, 8
/* 804BFDE4  4B FF FF 35 */	bl bIT_actor_rand_pos_get_blk_correct
/* 804BFDE8  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 804BFDEC  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804BFDF0  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 804BFDF4  C0 01 00 08 */	lfs f0, 8(r1)
/* 804BFDF8  EC 43 10 2A */	fadds f2, f3, f2
/* 804BFDFC  EC 01 00 2A */	fadds f0, f1, f0
/* 804BFE00  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 804BFE04  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_804BFE08:
/* 804BFE08  7F A3 EB 78 */	mr r3, r29
/* 804BFE0C  38 81 00 24 */	addi r4, r1, 0x24
/* 804BFE10  4B EF B0 AD */	bl xyz_t_move
/* 804BFE14  39 61 00 40 */	addi r11, r1, 0x40
/* 804BFE18  4B BD B1 05 */	bl func_8009AF1C
/* 804BFE1C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804BFE20  7C 08 03 A6 */	mtlr r0
/* 804BFE24  38 21 00 40 */	addi r1, r1, 0x40
/* 804BFE28  4E 80 00 20 */	blr 
