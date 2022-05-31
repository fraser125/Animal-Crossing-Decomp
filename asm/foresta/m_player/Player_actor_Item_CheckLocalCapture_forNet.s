lbl_804F2E68:
/* 804F2E68  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 804F2E6C  7C 08 02 A6 */	mflr r0
/* 804F2E70  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 804F2E74  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 804F2E78  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 804F2E7C  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 804F2E80  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 804F2E84  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 804F2E88  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 804F2E8C  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 804F2E90  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 804F2E94  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 804F2E98  F3 61 00 78 */	psq_st f27, 120(r1), 0, 0 /* qr0 */
/* 804F2E9C  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 804F2EA0  F3 41 00 68 */	psq_st f26, 104(r1), 0, 0 /* qr0 */
/* 804F2EA4  DB 21 00 50 */	stfd f25, 0x50(r1)
/* 804F2EA8  F3 21 00 58 */	psq_st f25, 88(r1), 0, 0 /* qr0 */
/* 804F2EAC  DB 01 00 40 */	stfd f24, 0x40(r1)
/* 804F2EB0  F3 01 00 48 */	psq_st f24, 72(r1), 0, 0 /* qr0 */
/* 804F2EB4  DA E1 00 30 */	stfd f23, 0x30(r1)
/* 804F2EB8  F2 E1 00 38 */	psq_st f23, 56(r1), 0, 0 /* qr0 */
/* 804F2EBC  39 61 00 30 */	addi r11, r1, 0x30
/* 804F2EC0  4B BA 80 15 */	bl func_8009AED4
/* 804F2EC4  7C 7D 1B 78 */	mr r29, r3
/* 804F2EC8  7C DF 33 78 */	mr r31, r6
/* 804F2ECC  C0 66 00 00 */	lfs f3, 0(r6)
/* 804F2ED0  FF 60 08 90 */	fmr f27, f1
/* 804F2ED4  C0 83 00 00 */	lfs f4, 0(r3)
/* 804F2ED8  FF 80 10 90 */	fmr f28, f2
/* 804F2EDC  C0 06 00 04 */	lfs f0, 4(r6)
/* 804F2EE0  7C 9E 23 78 */	mr r30, r4
/* 804F2EE4  C0 C3 00 04 */	lfs f6, 4(r3)
/* 804F2EE8  EC 23 20 28 */	fsubs f1, f3, f4
/* 804F2EEC  C0 65 00 00 */	lfs f3, 0(r5)
/* 804F2EF0  EC 00 30 28 */	fsubs f0, f0, f6
/* 804F2EF4  C0 A5 00 04 */	lfs f5, 4(r5)
/* 804F2EF8  C0 46 00 08 */	lfs f2, 8(r6)
/* 804F2EFC  C1 03 00 08 */	lfs f8, 8(r3)
/* 804F2F00  EC 23 00 72 */	fmuls f1, f3, f1
/* 804F2F04  C0 E5 00 08 */	lfs f7, 8(r5)
/* 804F2F08  EC 42 40 28 */	fsubs f2, f2, f8
/* 804F2F0C  EC 05 00 32 */	fmuls f0, f5, f0
/* 804F2F10  EC 47 00 B2 */	fmuls f2, f7, f2
/* 804F2F14  EC 01 00 2A */	fadds f0, f1, f0
/* 804F2F18  EC 02 00 2A */	fadds f0, f2, f0
/* 804F2F1C  EC 43 00 32 */	fmuls f2, f3, f0
/* 804F2F20  EC 25 00 32 */	fmuls f1, f5, f0
/* 804F2F24  EC 07 00 32 */	fmuls f0, f7, f0
/* 804F2F28  EF 24 10 2A */	fadds f25, f4, f2
/* 804F2F2C  EF 06 08 2A */	fadds f24, f6, f1
/* 804F2F30  EE E8 00 2A */	fadds f23, f8, f0
/* 804F2F34  4B FE DA 0D */	bl Player_actor_Get_ItemKind_from_submenu
/* 804F2F38  7C 60 07 74 */	extsb r0, r3
/* 804F2F3C  2C 00 00 0A */	cmpwi r0, 0xa
/* 804F2F40  40 82 00 14 */	bne lbl_804F2F54
/* 804F2F44  3C 60 80 65 */	lis r3, lit_9522@ha /* 0x806484D0@ha */
/* 804F2F48  C0 03 84 D0 */	lfs f0, lit_9522@l(r3)  /* 0x806484D0@l */
/* 804F2F4C  EF 40 E0 2A */	fadds f26, f0, f28
/* 804F2F50  48 00 00 10 */	b lbl_804F2F60
lbl_804F2F54:
/* 804F2F54  3C 60 80 64 */	lis r3, lit_3046@ha /* 0x80646E54@ha */
/* 804F2F58  C0 03 6E 54 */	lfs f0, lit_3046@l(r3)  /* 0x80646E54@l */
/* 804F2F5C  EF 40 E0 2A */	fadds f26, f0, f28
lbl_804F2F60:
/* 804F2F60  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F2F64  38 61 00 08 */	addi r3, r1, 8
/* 804F2F68  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804F2F6C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804F2F70  EC 42 C8 28 */	fsubs f2, f2, f25
/* 804F2F74  EC 21 C0 28 */	fsubs f1, f1, f24
/* 804F2F78  EC 00 B8 28 */	fsubs f0, f0, f23
/* 804F2F7C  D0 41 00 08 */	stfs f2, 8(r1)
/* 804F2F80  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804F2F84  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804F2F88  4B F1 5E 71 */	bl Math3DVecLengthSquare
/* 804F2F8C  EC 1A 06 B2 */	fmuls f0, f26, f26
/* 804F2F90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F2F94  40 81 00 0C */	ble lbl_804F2FA0
/* 804F2F98  38 60 00 00 */	li r3, 0
/* 804F2F9C  48 00 01 08 */	b lbl_804F30A4
lbl_804F2FA0:
/* 804F2FA0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F2FA4  38 61 00 14 */	addi r3, r1, 0x14
/* 804F2FA8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 804F2FAC  C0 7F 00 04 */	lfs f3, 4(r31)
/* 804F2FB0  C0 5D 00 04 */	lfs f2, 4(r29)
/* 804F2FB4  EC 81 00 28 */	fsubs f4, f1, f0
/* 804F2FB8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804F2FBC  C0 1D 00 08 */	lfs f0, 8(r29)
/* 804F2FC0  EC 43 10 28 */	fsubs f2, f3, f2
/* 804F2FC4  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 804F2FC8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F2FCC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 804F2FD0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804F2FD4  4B F1 5E 49 */	bl Math3DVecLength
/* 804F2FD8  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F2FDC  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F2FE0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804F2FE4  41 82 00 2C */	beq lbl_804F3010
/* 804F2FE8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F2FEC  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 804F2FF0  C0 83 65 64 */	lfs f4, lit_603@l(r3)  /* 0x80646564@l */
/* 804F2FF4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 804F2FF8  EC 24 08 24 */	fdivs f1, f4, f1
/* 804F2FFC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804F3000  EC 3C 00 72 */	fmuls f1, f28, f1
/* 804F3004  EF E3 00 72 */	fmuls f31, f3, f1
/* 804F3008  EF C2 00 72 */	fmuls f30, f2, f1
/* 804F300C  EF A0 00 72 */	fmuls f29, f0, f1
lbl_804F3010:
/* 804F3010  C0 C1 00 14 */	lfs f6, 0x14(r1)
/* 804F3014  C0 81 00 18 */	lfs f4, 0x18(r1)
/* 804F3018  EC 26 F8 28 */	fsubs f1, f6, f31
/* 804F301C  C1 01 00 1C */	lfs f8, 0x1c(r1)
/* 804F3020  C0 FE 00 00 */	lfs f7, 0(r30)
/* 804F3024  EC 04 F0 28 */	fsubs f0, f4, f30
/* 804F3028  C0 BE 00 04 */	lfs f5, 4(r30)
/* 804F302C  EC 48 E8 28 */	fsubs f2, f8, f29
/* 804F3030  C1 3E 00 08 */	lfs f9, 8(r30)
/* 804F3034  EC 27 00 72 */	fmuls f1, f7, f1
/* 804F3038  EC 05 00 32 */	fmuls f0, f5, f0
/* 804F303C  EC 49 00 B2 */	fmuls f2, f9, f2
/* 804F3040  EC 01 00 2A */	fadds f0, f1, f0
/* 804F3044  EC 02 00 2A */	fadds f0, f2, f0
/* 804F3048  FC 00 D8 40 */	fcmpo cr0, f0, f27
/* 804F304C  40 81 00 0C */	ble lbl_804F3058
/* 804F3050  38 60 00 00 */	li r3, 0
/* 804F3054  48 00 00 50 */	b lbl_804F30A4
lbl_804F3058:
/* 804F3058  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F305C  C0 63 65 68 */	lfs f3, lit_604@l(r3)  /* 0x80646568@l */
/* 804F3060  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 804F3064  40 80 00 3C */	bge lbl_804F30A0
/* 804F3068  EC 26 F8 2A */	fadds f1, f6, f31
/* 804F306C  EC 04 F0 2A */	fadds f0, f4, f30
/* 804F3070  EC 48 E8 2A */	fadds f2, f8, f29
/* 804F3074  EC 27 00 72 */	fmuls f1, f7, f1
/* 804F3078  EC 05 00 32 */	fmuls f0, f5, f0
/* 804F307C  EC 49 00 B2 */	fmuls f2, f9, f2
/* 804F3080  EC 01 00 2A */	fadds f0, f1, f0
/* 804F3084  EC 02 00 2A */	fadds f0, f2, f0
/* 804F3088  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 804F308C  7C 00 00 26 */	mfcr r0
/* 804F3090  54 00 0F FE */	srwi r0, r0, 0x1f
/* 804F3094  7C 00 00 34 */	cntlzw r0, r0
/* 804F3098  54 03 D9 7E */	srwi r3, r0, 5
/* 804F309C  48 00 00 08 */	b lbl_804F30A4
lbl_804F30A0:
/* 804F30A0  38 60 00 01 */	li r3, 1
lbl_804F30A4:
/* 804F30A4  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 804F30A8  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 804F30AC  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 804F30B0  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 804F30B4  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 804F30B8  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 804F30BC  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 804F30C0  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 804F30C4  E3 61 00 78 */	psq_l f27, 120(r1), 0, 0 /* qr0 */
/* 804F30C8  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 804F30CC  E3 41 00 68 */	psq_l f26, 104(r1), 0, 0 /* qr0 */
/* 804F30D0  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 804F30D4  E3 21 00 58 */	psq_l f25, 88(r1), 0, 0 /* qr0 */
/* 804F30D8  CB 21 00 50 */	lfd f25, 0x50(r1)
/* 804F30DC  E3 01 00 48 */	psq_l f24, 72(r1), 0, 0 /* qr0 */
/* 804F30E0  CB 01 00 40 */	lfd f24, 0x40(r1)
/* 804F30E4  E2 E1 00 38 */	psq_l f23, 56(r1), 0, 0 /* qr0 */
/* 804F30E8  39 61 00 30 */	addi r11, r1, 0x30
/* 804F30EC  CA E1 00 30 */	lfd f23, 0x30(r1)
/* 804F30F0  4B BA 7E 31 */	bl func_8009AF20
/* 804F30F4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 804F30F8  7C 08 03 A6 */	mtlr r0
/* 804F30FC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 804F3100  4E 80 00 20 */	blr 
