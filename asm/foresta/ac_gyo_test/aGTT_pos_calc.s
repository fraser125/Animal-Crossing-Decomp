lbl_805A2F28:
/* 805A2F28  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805A2F2C  7C 08 02 A6 */	mflr r0
/* 805A2F30  90 01 00 74 */	stw r0, 0x74(r1)
/* 805A2F34  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805A2F38  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805A2F3C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805A2F40  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805A2F44  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 805A2F48  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 805A2F4C  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 805A2F50  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 805A2F54  39 61 00 30 */	addi r11, r1, 0x30
/* 805A2F58  4B AF 7F 79 */	bl func_8009AED0
/* 805A2F5C  FF A0 08 90 */	fmr f29, f1
/* 805A2F60  7C 7C 1B 78 */	mr r28, r3
/* 805A2F64  FF 80 10 90 */	fmr f28, f2
/* 805A2F68  7C 9D 23 78 */	mr r29, r4
/* 805A2F6C  7C DE 33 78 */	mr r30, r6
/* 805A2F70  7C A3 2B 78 */	mr r3, r5
/* 805A2F74  4B E3 66 CD */	bl get_player_actor_withoutCheck
/* 805A2F78  7C 7F 1B 78 */	mr r31, r3
/* 805A2F7C  A8 63 00 36 */	lha r3, 0x36(r3)
/* 805A2F80  4B E1 7B 71 */	bl sin_s
/* 805A2F84  EF FD 00 72 */	fmuls f31, f29, f1
/* 805A2F88  A8 7F 00 36 */	lha r3, 0x36(r31)
/* 805A2F8C  4B E1 7B 11 */	bl cos_s
/* 805A2F90  EF DD 00 72 */	fmuls f30, f29, f1
/* 805A2F94  7F C3 F3 78 */	mr r3, r30
/* 805A2F98  4B E1 7B 05 */	bl cos_s
/* 805A2F9C  FC 00 E0 50 */	fneg f0, f28
/* 805A2FA0  7F C3 F3 78 */	mr r3, r30
/* 805A2FA4  EF A0 00 72 */	fmuls f29, f0, f1
/* 805A2FA8  4B E1 7B 49 */	bl sin_s
/* 805A2FAC  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805A2FB0  EC 7C 00 72 */	fmuls f3, f28, f1
/* 805A2FB4  C0 1D 00 08 */	lfs f0, 8(r29)
/* 805A2FB8  EC 22 F8 2A */	fadds f1, f2, f31
/* 805A2FBC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805A2FC0  EC 00 F0 2A */	fadds f0, f0, f30
/* 805A2FC4  EC 3D 08 2A */	fadds f1, f29, f1
/* 805A2FC8  EC 03 00 2A */	fadds f0, f3, f0
/* 805A2FCC  D0 21 00 08 */	stfs f1, 8(r1)
/* 805A2FD0  80 01 00 08 */	lwz r0, 8(r1)
/* 805A2FD4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805A2FD8  90 1C 00 00 */	stw r0, 0(r28)
/* 805A2FDC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 805A2FE0  90 7C 00 04 */	stw r3, 4(r28)
/* 805A2FE4  90 1C 00 08 */	stw r0, 8(r28)
/* 805A2FE8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805A2FEC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805A2FF0  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805A2FF4  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805A2FF8  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 805A2FFC  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 805A3000  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 805A3004  39 61 00 30 */	addi r11, r1, 0x30
/* 805A3008  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 805A300C  4B AF 7F 11 */	bl func_8009AF1C
/* 805A3010  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805A3014  7C 08 03 A6 */	mtlr r0
/* 805A3018  38 21 00 70 */	addi r1, r1, 0x70
/* 805A301C  4E 80 00 20 */	blr 
