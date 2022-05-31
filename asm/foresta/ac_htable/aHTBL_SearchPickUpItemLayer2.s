lbl_805B1014:
/* 805B1014  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805B1018  7C 08 02 A6 */	mflr r0
/* 805B101C  90 01 00 64 */	stw r0, 0x64(r1)
/* 805B1020  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805B1024  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805B1028  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 805B102C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 805B1030  4B E2 86 11 */	bl get_player_actor_withoutCheck
/* 805B1034  80 E3 00 28 */	lwz r7, 0x28(r3)
/* 805B1038  38 81 00 08 */	addi r4, r1, 8
/* 805B103C  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805B1040  38 A1 00 1C */	addi r5, r1, 0x1c
/* 805B1044  80 03 00 30 */	lwz r0, 0x30(r3)
/* 805B1048  AB E3 00 DE */	lha r31, 0xde(r3)
/* 805B104C  38 61 00 0C */	addi r3, r1, 0xc
/* 805B1050  90 E1 00 34 */	stw r7, 0x34(r1)
/* 805B1054  90 C1 00 38 */	stw r6, 0x38(r1)
/* 805B1058  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805B105C  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 805B1060  90 C1 00 20 */	stw r6, 0x20(r1)
/* 805B1064  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B1068  4B DF 43 01 */	bl mFI_Wpos2UtNum
/* 805B106C  2C 03 00 00 */	cmpwi r3, 0
/* 805B1070  41 82 00 B4 */	beq lbl_805B1124
/* 805B1074  3B C0 00 00 */	li r30, 0
/* 805B1078  C3 E1 00 3C */	lfs f31, 0x3c(r1)
lbl_805B107C:
/* 805B107C  7F E5 FB 78 */	mr r5, r31
/* 805B1080  7F C6 F3 78 */	mr r6, r30
/* 805B1084  38 61 00 0C */	addi r3, r1, 0xc
/* 805B1088  38 81 00 08 */	addi r4, r1, 8
/* 805B108C  4B FF FF 2D */	bl func_805B0FB8
/* 805B1090  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805B1094  38 61 00 28 */	addi r3, r1, 0x28
/* 805B1098  80 A1 00 08 */	lwz r5, 8(r1)
/* 805B109C  4B DF 43 E1 */	bl mFI_UtNum2CenterWpos
/* 805B10A0  2C 03 00 00 */	cmpwi r3, 0
/* 805B10A4  41 82 00 74 */	beq lbl_805B1118
/* 805B10A8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 805B10AC  3C 60 80 65 */	lis r3, data_8064A7BC@ha /* 0x8064A7BC@ha */
/* 805B10B0  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 805B10B4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 805B10B8  EC 60 F8 28 */	fsubs f3, f0, f31
/* 805B10BC  C0 03 A7 BC */	lfs f0, data_8064A7BC@l(r3)  /* 0x8064A7BC@l */
/* 805B10C0  EC 42 08 28 */	fsubs f2, f2, f1
/* 805B10C4  EC 23 00 F2 */	fmuls f1, f3, f3
/* 805B10C8  EC 42 00 B2 */	fmuls f2, f2, f2
/* 805B10CC  EC 22 08 2A */	fadds f1, f2, f1
/* 805B10D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B10D4  4C 40 13 82 */	cror 2, 0, 2
/* 805B10D8  40 82 00 40 */	bne lbl_805B1118
/* 805B10DC  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 805B10E0  38 61 00 10 */	addi r3, r1, 0x10
/* 805B10E4  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 805B10E8  80 01 00 30 */	lwz r0, 0x30(r1)
/* 805B10EC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 805B10F0  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B10F4  90 01 00 18 */	stw r0, 0x18(r1)
/* 805B10F8  4B DF 63 39 */	bl mFI_GetUnitFG
/* 805B10FC  28 03 00 00 */	cmplwi r3, 0
/* 805B1100  41 82 00 18 */	beq lbl_805B1118
/* 805B1104  A0 03 00 00 */	lhz r0, 0(r3)
/* 805B1108  28 00 25 30 */	cmplwi r0, 0x2530
/* 805B110C  40 82 00 0C */	bne lbl_805B1118
/* 805B1110  38 60 25 30 */	li r3, 0x2530
/* 805B1114  48 00 00 14 */	b lbl_805B1128
lbl_805B1118:
/* 805B1118  3B DE 00 01 */	addi r30, r30, 1
/* 805B111C  2C 1E 00 03 */	cmpwi r30, 3
/* 805B1120  41 80 FF 5C */	blt lbl_805B107C
lbl_805B1124:
/* 805B1124  38 60 00 00 */	li r3, 0
lbl_805B1128:
/* 805B1128  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805B112C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805B1130  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805B1134  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 805B1138  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 805B113C  7C 08 03 A6 */	mtlr r0
/* 805B1140  38 21 00 60 */	addi r1, r1, 0x60
/* 805B1144  4E 80 00 20 */	blr 
