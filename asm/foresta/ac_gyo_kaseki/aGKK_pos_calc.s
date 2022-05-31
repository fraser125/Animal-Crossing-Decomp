lbl_805A4F18:
/* 805A4F18  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805A4F1C  7C 08 02 A6 */	mflr r0
/* 805A4F20  90 01 00 74 */	stw r0, 0x74(r1)
/* 805A4F24  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805A4F28  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805A4F2C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805A4F30  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805A4F34  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 805A4F38  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 805A4F3C  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 805A4F40  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 805A4F44  39 61 00 30 */	addi r11, r1, 0x30
/* 805A4F48  4B AF 5F 89 */	bl func_8009AED0
/* 805A4F4C  FF A0 08 90 */	fmr f29, f1
/* 805A4F50  7C 7C 1B 78 */	mr r28, r3
/* 805A4F54  FF 80 10 90 */	fmr f28, f2
/* 805A4F58  7C 9D 23 78 */	mr r29, r4
/* 805A4F5C  7C DE 33 78 */	mr r30, r6
/* 805A4F60  7C A3 2B 78 */	mr r3, r5
/* 805A4F64  4B E3 46 DD */	bl get_player_actor_withoutCheck
/* 805A4F68  7C 7F 1B 78 */	mr r31, r3
/* 805A4F6C  A8 63 00 36 */	lha r3, 0x36(r3)
/* 805A4F70  4B E1 5B 81 */	bl sin_s
/* 805A4F74  EF FD 00 72 */	fmuls f31, f29, f1
/* 805A4F78  A8 7F 00 36 */	lha r3, 0x36(r31)
/* 805A4F7C  4B E1 5B 21 */	bl cos_s
/* 805A4F80  EF DD 00 72 */	fmuls f30, f29, f1
/* 805A4F84  7F C3 F3 78 */	mr r3, r30
/* 805A4F88  4B E1 5B 15 */	bl cos_s
/* 805A4F8C  FC 00 E0 50 */	fneg f0, f28
/* 805A4F90  7F C3 F3 78 */	mr r3, r30
/* 805A4F94  EF A0 00 72 */	fmuls f29, f0, f1
/* 805A4F98  4B E1 5B 59 */	bl sin_s
/* 805A4F9C  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805A4FA0  EC 7C 00 72 */	fmuls f3, f28, f1
/* 805A4FA4  C0 1D 00 08 */	lfs f0, 8(r29)
/* 805A4FA8  EC 22 F8 2A */	fadds f1, f2, f31
/* 805A4FAC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805A4FB0  EC 00 F0 2A */	fadds f0, f0, f30
/* 805A4FB4  EC 3D 08 2A */	fadds f1, f29, f1
/* 805A4FB8  EC 03 00 2A */	fadds f0, f3, f0
/* 805A4FBC  D0 21 00 08 */	stfs f1, 8(r1)
/* 805A4FC0  80 01 00 08 */	lwz r0, 8(r1)
/* 805A4FC4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805A4FC8  90 1C 00 00 */	stw r0, 0(r28)
/* 805A4FCC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 805A4FD0  90 7C 00 04 */	stw r3, 4(r28)
/* 805A4FD4  90 1C 00 08 */	stw r0, 8(r28)
/* 805A4FD8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805A4FDC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805A4FE0  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805A4FE4  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805A4FE8  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 805A4FEC  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 805A4FF0  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 805A4FF4  39 61 00 30 */	addi r11, r1, 0x30
/* 805A4FF8  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 805A4FFC  4B AF 5F 21 */	bl func_8009AF1C
/* 805A5000  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805A5004  7C 08 03 A6 */	mtlr r0
/* 805A5008  38 21 00 70 */	addi r1, r1, 0x70
/* 805A500C  4E 80 00 20 */	blr 
