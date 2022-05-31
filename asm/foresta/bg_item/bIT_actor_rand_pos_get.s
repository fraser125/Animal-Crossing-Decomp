lbl_804B8334:
/* 804B8334  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B8338  7C 08 02 A6 */	mflr r0
/* 804B833C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B8340  39 61 00 30 */	addi r11, r1, 0x30
/* 804B8344  4B BE 2B 91 */	bl func_8009AED4
/* 804B8348  7C 9E 23 78 */	mr r30, r4
/* 804B834C  7C 7D 1B 78 */	mr r29, r3
/* 804B8350  80 E4 00 00 */	lwz r7, 0(r4)
/* 804B8354  38 61 00 0C */	addi r3, r1, 0xc
/* 804B8358  80 C4 00 04 */	lwz r6, 4(r4)
/* 804B835C  38 81 00 08 */	addi r4, r1, 8
/* 804B8360  80 1E 00 08 */	lwz r0, 8(r30)
/* 804B8364  38 A1 00 10 */	addi r5, r1, 0x10
/* 804B8368  90 E1 00 10 */	stw r7, 0x10(r1)
/* 804B836C  3B E0 00 00 */	li r31, 0
/* 804B8370  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804B8374  90 01 00 18 */	stw r0, 0x18(r1)
/* 804B8378  4B EE CF F1 */	bl mFI_Wpos2UtNum
/* 804B837C  2C 03 00 00 */	cmpwi r3, 0
/* 804B8380  41 82 00 2C */	beq lbl_804B83AC
/* 804B8384  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804B8388  80 81 00 08 */	lwz r4, 8(r1)
/* 804B838C  4B EE EE F5 */	bl mFI_UtNum2UtFG
/* 804B8390  28 03 00 00 */	cmplwi r3, 0
/* 804B8394  41 82 00 18 */	beq lbl_804B83AC
/* 804B8398  A0 63 00 00 */	lhz r3, 0(r3)
/* 804B839C  7F A4 EB 78 */	mr r4, r29
/* 804B83A0  7F C5 F3 78 */	mr r5, r30
/* 804B83A4  4B FF FE B1 */	bl bIT_actor_rand_pos_get_plus
/* 804B83A8  3B E0 00 01 */	li r31, 1
lbl_804B83AC:
/* 804B83AC  2C 1F 00 00 */	cmpwi r31, 0
/* 804B83B0  40 82 00 18 */	bne lbl_804B83C8
/* 804B83B4  3C 60 80 64 */	lis r3, data_8064608C@ha /* 0x8064608C@ha */
/* 804B83B8  C0 03 60 8C */	lfs f0, data_8064608C@l(r3)  /* 0x8064608C@l */
/* 804B83BC  D0 1D 00 00 */	stfs f0, 0(r29)
/* 804B83C0  D0 1D 00 04 */	stfs f0, 4(r29)
/* 804B83C4  D0 1D 00 08 */	stfs f0, 8(r29)
lbl_804B83C8:
/* 804B83C8  7F E3 FB 78 */	mr r3, r31
/* 804B83CC  39 61 00 30 */	addi r11, r1, 0x30
/* 804B83D0  4B BE 2B 51 */	bl func_8009AF20
/* 804B83D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B83D8  7C 08 03 A6 */	mtlr r0
/* 804B83DC  38 21 00 30 */	addi r1, r1, 0x30
/* 804B83E0  4E 80 00 20 */	blr 
