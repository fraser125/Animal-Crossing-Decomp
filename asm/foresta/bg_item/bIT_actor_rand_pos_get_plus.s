lbl_804B8254:
/* 804B8254  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B8258  7C 08 02 A6 */	mflr r0
/* 804B825C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B8260  39 61 00 40 */	addi r11, r1, 0x40
/* 804B8264  4B BE 2C 6D */	bl func_8009AED0
/* 804B8268  7C BE 2B 78 */	mr r30, r5
/* 804B826C  7C 7C 1B 78 */	mr r28, r3
/* 804B8270  80 A5 00 00 */	lwz r5, 0(r5)
/* 804B8274  7C 9D 23 78 */	mr r29, r4
/* 804B8278  80 DE 00 04 */	lwz r6, 4(r30)
/* 804B827C  38 61 00 14 */	addi r3, r1, 0x14
/* 804B8280  80 1E 00 08 */	lwz r0, 8(r30)
/* 804B8284  38 81 00 10 */	addi r4, r1, 0x10
/* 804B8288  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804B828C  38 A1 00 18 */	addi r5, r1, 0x18
/* 804B8290  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 804B8294  90 01 00 20 */	stw r0, 0x20(r1)
/* 804B8298  4B EE D0 D1 */	bl mFI_Wpos2UtNum
/* 804B829C  7C 7F 1B 78 */	mr r31, r3
/* 804B82A0  7F C4 F3 78 */	mr r4, r30
/* 804B82A4  38 61 00 24 */	addi r3, r1, 0x24
/* 804B82A8  4B F0 2C 15 */	bl xyz_t_move
/* 804B82AC  2C 1F 00 00 */	cmpwi r31, 0
/* 804B82B0  41 82 00 60 */	beq lbl_804B8310
/* 804B82B4  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 804B82B8  28 00 00 08 */	cmplwi r0, 8
/* 804B82BC  41 80 00 0C */	blt lbl_804B82C8
/* 804B82C0  28 00 00 0A */	cmplwi r0, 0xa
/* 804B82C4  40 81 00 18 */	ble lbl_804B82DC
lbl_804B82C8:
/* 804B82C8  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 804B82CC  28 00 25 14 */	cmplwi r0, 0x2514
/* 804B82D0  41 80 00 40 */	blt lbl_804B8310
/* 804B82D4  28 00 25 1B */	cmplwi r0, 0x251b
/* 804B82D8  41 81 00 38 */	bgt lbl_804B8310
lbl_804B82DC:
/* 804B82DC  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 804B82E0  38 61 00 0C */	addi r3, r1, 0xc
/* 804B82E4  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 804B82E8  38 81 00 08 */	addi r4, r1, 8
/* 804B82EC  4B FF FF 35 */	bl bIT_actor_rand_pos_get_blk_correct
/* 804B82F0  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 804B82F4  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804B82F8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 804B82FC  C0 01 00 08 */	lfs f0, 8(r1)
/* 804B8300  EC 43 10 2A */	fadds f2, f3, f2
/* 804B8304  EC 01 00 2A */	fadds f0, f1, f0
/* 804B8308  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 804B830C  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_804B8310:
/* 804B8310  7F A3 EB 78 */	mr r3, r29
/* 804B8314  38 81 00 24 */	addi r4, r1, 0x24
/* 804B8318  4B F0 2B A5 */	bl xyz_t_move
/* 804B831C  39 61 00 40 */	addi r11, r1, 0x40
/* 804B8320  4B BE 2B FD */	bl func_8009AF1C
/* 804B8324  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B8328  7C 08 03 A6 */	mtlr r0
/* 804B832C  38 21 00 40 */	addi r1, r1, 0x40
/* 804B8330  4E 80 00 20 */	blr 
