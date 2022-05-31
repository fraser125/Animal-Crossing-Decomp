lbl_8054D114:
/* 8054D114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054D118  7C 08 02 A6 */	mflr r0
/* 8054D11C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054D120  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054D124  7C 9F 23 78 */	mr r31, r4
/* 8054D128  93 C1 00 08 */	stw r30, 8(r1)
/* 8054D12C  7C 7E 1B 78 */	mr r30, r3
/* 8054D130  7F E3 FB 78 */	mr r3, r31
/* 8054D134  4B E8 C5 0D */	bl get_player_actor_withoutCheck
/* 8054D138  28 03 00 00 */	cmplwi r3, 0
/* 8054D13C  41 82 00 50 */	beq lbl_8054D18C
/* 8054D140  A8 9E 09 A6 */	lha r4, 0x9a6(r30)
/* 8054D144  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8054D148  7C 04 00 50 */	subf r0, r4, r0
/* 8054D14C  7C 03 07 35 */	extsh. r3, r0
/* 8054D150  7C 03 00 D0 */	neg r0, r3
/* 8054D154  41 80 00 08 */	blt lbl_8054D15C
/* 8054D158  7C 60 1B 78 */	mr r0, r3
lbl_8054D15C:
/* 8054D15C  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8054D160  40 81 00 18 */	ble lbl_8054D178
/* 8054D164  7F C3 F3 78 */	mr r3, r30
/* 8054D168  7F E4 FB 78 */	mr r4, r31
/* 8054D16C  38 A0 00 42 */	li r5, 0x42
/* 8054D170  48 00 56 C5 */	bl aNSC_setupAction
/* 8054D174  48 00 00 18 */	b lbl_8054D18C
lbl_8054D178:
/* 8054D178  38 7E 00 DE */	addi r3, r30, 0xde
/* 8054D17C  38 A0 08 00 */	li r5, 0x800
/* 8054D180  4B E6 D9 C5 */	bl chase_angle
/* 8054D184  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8054D188  B0 1E 00 36 */	sth r0, 0x36(r30)
lbl_8054D18C:
/* 8054D18C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054D190  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054D194  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054D198  7C 08 03 A6 */	mtlr r0
/* 8054D19C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054D1A0  4E 80 00 20 */	blr 
