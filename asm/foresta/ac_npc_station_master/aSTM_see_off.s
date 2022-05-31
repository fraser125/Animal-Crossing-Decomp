lbl_8057FE6C:
/* 8057FE6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057FE70  7C 08 02 A6 */	mflr r0
/* 8057FE74  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057FE78  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8057FE7C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8057FE80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057FE84  93 C1 00 08 */	stw r30, 8(r1)
/* 8057FE88  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8057FE8C  3C A0 80 65 */	lis r5, lit_739@ha /* 0x80649A58@ha */
/* 8057FE90  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8057FE94  7C 7E 1B 78 */	mr r30, r3
/* 8057FE98  C0 45 9A 58 */	lfs f2, lit_739@l(r5)  /* 0x80649A58@l */
/* 8057FE9C  7C 9F 23 78 */	mr r31, r4
/* 8057FEA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8057FEA4  EF E2 00 28 */	fsubs f31, f2, f0
/* 8057FEA8  4B FF F8 F1 */	bl aSTM_look_player
/* 8057FEAC  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 8057FEB0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8057FEB4  40 81 00 14 */	ble lbl_8057FEC8
/* 8057FEB8  7F C3 F3 78 */	mr r3, r30
/* 8057FEBC  7F E4 FB 78 */	mr r4, r31
/* 8057FEC0  38 A0 00 15 */	li r5, 0x15
/* 8057FEC4  48 00 04 E1 */	bl aSTM_setup_think_proc
lbl_8057FEC8:
/* 8057FEC8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8057FECC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057FED0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8057FED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057FED8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057FEDC  7C 08 03 A6 */	mtlr r0
/* 8057FEE0  38 21 00 20 */	addi r1, r1, 0x20
/* 8057FEE4  4E 80 00 20 */	blr 
