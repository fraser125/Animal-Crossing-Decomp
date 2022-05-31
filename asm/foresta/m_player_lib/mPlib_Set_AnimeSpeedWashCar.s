lbl_803DD950:
/* 803DD950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DD954  7C 08 02 A6 */	mflr r0
/* 803DD958  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DD95C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DD960  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DD964  DB E1 00 08 */	stfd f31, 8(r1)
/* 803DD968  FF E0 08 90 */	fmr f31, f1
/* 803DD96C  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD970  4B FF BD 01 */	bl mPlib_get_player_actor_main_index
/* 803DD974  2C 03 00 54 */	cmpwi r3, 0x54
/* 803DD978  40 82 00 24 */	bne lbl_803DD99C
/* 803DD97C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DD980  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DD984  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD988  4B FF BC B9 */	bl get_player_actor_withoutCheck
/* 803DD98C  D3 E3 01 80 */	stfs f31, 0x180(r3)
/* 803DD990  D3 E3 01 F0 */	stfs f31, 0x1f0(r3)
/* 803DD994  38 60 00 01 */	li r3, 1
/* 803DD998  48 00 00 08 */	b lbl_803DD9A0
lbl_803DD99C:
/* 803DD99C  38 60 00 00 */	li r3, 0
lbl_803DD9A0:
/* 803DD9A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DD9A4  CB E1 00 08 */	lfd f31, 8(r1)
/* 803DD9A8  7C 08 03 A6 */	mtlr r0
/* 803DD9AC  38 21 00 10 */	addi r1, r1, 0x10
/* 803DD9B0  4E 80 00 20 */	blr 
