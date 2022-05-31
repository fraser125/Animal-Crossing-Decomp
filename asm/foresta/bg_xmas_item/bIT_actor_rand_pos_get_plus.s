lbl_804C7164:
/* 804C7164  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C7168  7C 08 02 A6 */	mflr r0
/* 804C716C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C7170  39 61 00 40 */	addi r11, r1, 0x40
/* 804C7174  4B BD 3D 5D */	bl func_8009AED0
/* 804C7178  7C BE 2B 78 */	mr r30, r5
/* 804C717C  7C 7C 1B 78 */	mr r28, r3
/* 804C7180  80 A5 00 00 */	lwz r5, 0(r5)
/* 804C7184  7C 9D 23 78 */	mr r29, r4
/* 804C7188  80 DE 00 04 */	lwz r6, 4(r30)
/* 804C718C  38 61 00 14 */	addi r3, r1, 0x14
/* 804C7190  80 1E 00 08 */	lwz r0, 8(r30)
/* 804C7194  38 81 00 10 */	addi r4, r1, 0x10
/* 804C7198  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804C719C  38 A1 00 18 */	addi r5, r1, 0x18
/* 804C71A0  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 804C71A4  90 01 00 20 */	stw r0, 0x20(r1)
/* 804C71A8  4B ED E1 C1 */	bl mFI_Wpos2UtNum
/* 804C71AC  7C 7F 1B 78 */	mr r31, r3
/* 804C71B0  7F C4 F3 78 */	mr r4, r30
/* 804C71B4  38 61 00 24 */	addi r3, r1, 0x24
/* 804C71B8  4B EF 3D 05 */	bl xyz_t_move
/* 804C71BC  2C 1F 00 00 */	cmpwi r31, 0
/* 804C71C0  41 82 00 60 */	beq lbl_804C7220
/* 804C71C4  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 804C71C8  28 00 00 08 */	cmplwi r0, 8
/* 804C71CC  41 80 00 0C */	blt lbl_804C71D8
/* 804C71D0  28 00 00 0A */	cmplwi r0, 0xa
/* 804C71D4  40 81 00 18 */	ble lbl_804C71EC
lbl_804C71D8:
/* 804C71D8  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 804C71DC  28 00 25 14 */	cmplwi r0, 0x2514
/* 804C71E0  41 80 00 40 */	blt lbl_804C7220
/* 804C71E4  28 00 25 1B */	cmplwi r0, 0x251b
/* 804C71E8  41 81 00 38 */	bgt lbl_804C7220
lbl_804C71EC:
/* 804C71EC  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 804C71F0  38 61 00 0C */	addi r3, r1, 0xc
/* 804C71F4  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 804C71F8  38 81 00 08 */	addi r4, r1, 8
/* 804C71FC  4B FF FF 35 */	bl bIT_actor_rand_pos_get_blk_correct
/* 804C7200  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 804C7204  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804C7208  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 804C720C  C0 01 00 08 */	lfs f0, 8(r1)
/* 804C7210  EC 43 10 2A */	fadds f2, f3, f2
/* 804C7214  EC 01 00 2A */	fadds f0, f1, f0
/* 804C7218  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 804C721C  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_804C7220:
/* 804C7220  7F A3 EB 78 */	mr r3, r29
/* 804C7224  38 81 00 24 */	addi r4, r1, 0x24
/* 804C7228  4B EF 3C 95 */	bl xyz_t_move
/* 804C722C  39 61 00 40 */	addi r11, r1, 0x40
/* 804C7230  4B BD 3C ED */	bl func_8009AF1C
/* 804C7234  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C7238  7C 08 03 A6 */	mtlr r0
/* 804C723C  38 21 00 40 */	addi r1, r1, 0x40
/* 804C7240  4E 80 00 20 */	blr 
