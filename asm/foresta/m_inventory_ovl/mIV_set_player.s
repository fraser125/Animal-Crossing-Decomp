lbl_805E2E54:
/* 805E2E54  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805E2E58  7C 08 02 A6 */	mflr r0
/* 805E2E5C  90 01 00 64 */	stw r0, 0x64(r1)
/* 805E2E60  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805E2E64  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805E2E68  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 805E2E6C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 805E2E70  39 61 00 40 */	addi r11, r1, 0x40
/* 805E2E74  4B AB 80 59 */	bl func_8009AECC
/* 805E2E78  FF C0 08 90 */	fmr f30, f1
/* 805E2E7C  7C BD 2B 78 */	mr r29, r5
/* 805E2E80  FF E0 10 90 */	fmr f31, f2
/* 805E2E84  7C 7B 1B 78 */	mr r27, r3
/* 805E2E88  7C 9C 23 78 */	mr r28, r4
/* 805E2E8C  7F A3 EB 78 */	mr r3, r29
/* 805E2E90  4B DF 67 B1 */	bl get_player_actor_withoutCheck
/* 805E2E94  7C 7E 1B 79 */	or. r30, r3, r3
/* 805E2E98  41 82 01 68 */	beq lbl_805E3000
/* 805E2E9C  FC 20 F0 1E */	fctiwz f1, f30
/* 805E2EA0  3C 00 43 30 */	lis r0, 0x4330
/* 805E2EA4  FC 00 F8 50 */	fneg f0, f31
/* 805E2EA8  3C 60 80 65 */	lis r3, lit_746@ha /* 0x8064B404@ha */
/* 805E2EAC  38 83 B4 04 */	addi r4, r3, lit_746@l /* 0x8064B404@l */
/* 805E2EB0  90 01 00 18 */	stw r0, 0x18(r1)
/* 805E2EB4  D8 21 00 08 */	stfd f1, 8(r1)
/* 805E2EB8  FC 00 00 1E */	fctiwz f0, f0
/* 805E2EBC  3C 60 80 65 */	lis r3, lit_1279@ha /* 0x8064B48C@ha */
/* 805E2EC0  C8 24 00 00 */	lfd f1, 0(r4)
/* 805E2EC4  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 805E2EC8  38 A3 B4 8C */	addi r5, r3, lit_1279@l /* 0x8064B48C@l */
/* 805E2ECC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805E2ED0  38 C6 00 14 */	addi r6, r6, 0x14
/* 805E2ED4  C8 45 00 00 */	lfd f2, 0(r5)
/* 805E2ED8  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 805E2EDC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805E2EE0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805E2EE4  3C 60 80 65 */	lis r3, lit_1280@ha /* 0x8064B494@ha */
/* 805E2EE8  3B E0 00 00 */	li r31, 0
/* 805E2EEC  38 E4 00 09 */	addi r7, r4, 9
/* 805E2EF0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805E2EF4  FC 20 08 28 */	fsub f1, f0, f1
/* 805E2EF8  C8 03 B4 94 */	lfd f0, lit_1280@l(r3)  /* 0x8064B494@l */
/* 805E2EFC  FC 22 08 2A */	fadd f1, f2, f1
/* 805E2F00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E2F04  4C 41 13 82 */	cror 2, 1, 2
/* 805E2F08  40 82 00 10 */	bne lbl_805E2F18
/* 805E2F0C  2C 06 01 40 */	cmpwi r6, 0x140
/* 805E2F10  40 80 00 08 */	bge lbl_805E2F18
/* 805E2F14  3B E0 00 01 */	li r31, 1
lbl_805E2F18:
/* 805E2F18  80 BC 02 D0 */	lwz r5, 0x2d0(r28)
/* 805E2F1C  3C 60 E7 00 */	lis r3, 0xe700
/* 805E2F20  2C 1F 00 00 */	cmpwi r31, 0
/* 805E2F24  38 00 00 00 */	li r0, 0
/* 805E2F28  38 85 00 08 */	addi r4, r5, 8
/* 805E2F2C  90 9C 02 D0 */	stw r4, 0x2d0(r28)
/* 805E2F30  90 65 00 00 */	stw r3, 0(r5)
/* 805E2F34  90 05 00 04 */	stw r0, 4(r5)
/* 805E2F38  41 82 00 78 */	beq lbl_805E2FB0
/* 805E2F3C  3C 60 43 30 */	lis r3, 0x4330
/* 805E2F40  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 805E2F44  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805E2F48  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 805E2F4C  3C A0 80 65 */	lis r5, lit_746@ha /* 0x8064B404@ha */
/* 805E2F50  3C 80 80 65 */	lis r4, lit_1283@ha /* 0x8064B4A4@ha */
/* 805E2F54  90 61 00 18 */	stw r3, 0x18(r1)
/* 805E2F58  3C E0 80 65 */	lis r7, lit_1281@ha /* 0x8064B49C@ha */
/* 805E2F5C  C8 45 B4 04 */	lfd f2, lit_746@l(r5)  /* 0x8064B404@l */
/* 805E2F60  3C C0 80 65 */	lis r6, lit_1282@ha /* 0x8064B4A0@ha */
/* 805E2F64  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805E2F68  90 61 00 10 */	stw r3, 0x10(r1)
/* 805E2F6C  7F 83 E3 78 */	mr r3, r28
/* 805E2F70  80 BB 00 2C */	lwz r5, 0x2c(r27)
/* 805E2F74  EC 20 10 28 */	fsubs f1, f0, f2
/* 805E2F78  C0 84 B4 A4 */	lfs f4, lit_1283@l(r4)  /* 0x8064B4A4@l */
/* 805E2F7C  38 80 09 00 */	li r4, 0x900
/* 805E2F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E2F84  81 85 09 6C */	lwz r12, 0x96c(r5)
/* 805E2F88  EC 64 00 72 */	fmuls f3, f4, f1
/* 805E2F8C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805E2F90  38 A0 01 00 */	li r5, 0x100
/* 805E2F94  C0 27 B4 9C */	lfs f1, lit_1281@l(r7)  /* 0x8064B49C@l */
/* 805E2F98  EC 00 10 28 */	fsubs f0, f0, f2
/* 805E2F9C  C0 46 B4 A0 */	lfs f2, lit_1282@l(r6)  /* 0x8064B4A0@l */
/* 805E2FA0  38 C0 01 00 */	li r6, 0x100
/* 805E2FA4  EC 84 00 32 */	fmuls f4, f4, f0
/* 805E2FA8  7D 89 03 A6 */	mtctr r12
/* 805E2FAC  4E 80 04 21 */	bctrl 
lbl_805E2FB0:
/* 805E2FB0  7F 63 DB 78 */	mr r3, r27
/* 805E2FB4  4B FF EE A1 */	bl mIV_pl_check_anm_change
/* 805E2FB8  2C 1F 00 00 */	cmpwi r31, 0
/* 805E2FBC  41 82 00 28 */	beq lbl_805E2FE4
/* 805E2FC0  7F A3 EB 78 */	mr r3, r29
/* 805E2FC4  7F C4 F3 78 */	mr r4, r30
/* 805E2FC8  4B FF FD BD */	bl mIV_pl_shadow_draw
/* 805E2FCC  7F 63 DB 78 */	mr r3, r27
/* 805E2FD0  7F A4 EB 78 */	mr r4, r29
/* 805E2FD4  4B FF FA 65 */	bl mIV_pl_shape_draw
/* 805E2FD8  7F 83 E3 78 */	mr r3, r28
/* 805E2FDC  7F 64 DB 78 */	mr r4, r27
/* 805E2FE0  4B FF FC B1 */	bl mIV_pl_eff_draw
lbl_805E2FE4:
/* 805E2FE4  80 DB 00 2C */	lwz r6, 0x2c(r27)
/* 805E2FE8  7F 63 DB 78 */	mr r3, r27
/* 805E2FEC  7F 84 E3 78 */	mr r4, r28
/* 805E2FF0  38 A0 00 00 */	li r5, 0
/* 805E2FF4  81 86 09 64 */	lwz r12, 0x964(r6)
/* 805E2FF8  7D 89 03 A6 */	mtctr r12
/* 805E2FFC  4E 80 04 21 */	bctrl 
lbl_805E3000:
/* 805E3000  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805E3004  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805E3008  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805E300C  39 61 00 40 */	addi r11, r1, 0x40
/* 805E3010  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805E3014  4B AB 7F 05 */	bl func_8009AF18
/* 805E3018  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805E301C  7C 08 03 A6 */	mtlr r0
/* 805E3020  38 21 00 60 */	addi r1, r1, 0x60
/* 805E3024  4E 80 00 20 */	blr 
