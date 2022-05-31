lbl_804368F0:
/* 804368F0  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 804368F4  7C 08 02 A6 */	mflr r0
/* 804368F8  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 804368FC  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80436900  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80436904  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 80436908  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 8043690C  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 80436910  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 80436914  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 80436918  F3 81 00 B8 */	psq_st f28, 184(r1), 0, 0 /* qr0 */
/* 8043691C  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 80436920  F3 61 00 A8 */	psq_st f27, 168(r1), 0, 0 /* qr0 */
/* 80436924  DB 41 00 90 */	stfd f26, 0x90(r1)
/* 80436928  F3 41 00 98 */	psq_st f26, 152(r1), 0, 0 /* qr0 */
/* 8043692C  DB 21 00 80 */	stfd f25, 0x80(r1)
/* 80436930  F3 21 00 88 */	psq_st f25, 136(r1), 0, 0 /* qr0 */
/* 80436934  DB 01 00 70 */	stfd f24, 0x70(r1)
/* 80436938  F3 01 00 78 */	psq_st f24, 120(r1), 0, 0 /* qr0 */
/* 8043693C  DA E1 00 60 */	stfd f23, 0x60(r1)
/* 80436940  F2 E1 00 68 */	psq_st f23, 104(r1), 0, 0 /* qr0 */
/* 80436944  DA C1 00 50 */	stfd f22, 0x50(r1)
/* 80436948  F2 C1 00 58 */	psq_st f22, 88(r1), 0, 0 /* qr0 */
/* 8043694C  39 61 00 50 */	addi r11, r1, 0x50
/* 80436950  4B C6 45 79 */	bl func_8009AEC8
/* 80436954  3C A0 80 64 */	lis r5, lit_468@ha /* 0x80644248@ha */
/* 80436958  7C 7A 1B 78 */	mr r26, r3
/* 8043695C  C3 85 42 48 */	lfs f28, lit_468@l(r5)  /* 0x80644248@l */
/* 80436960  3C 60 80 64 */	lis r3, lit_9567@ha /* 0x80644544@ha */
/* 80436964  38 BA 01 78 */	addi r5, r26, 0x178
/* 80436968  38 00 00 28 */	li r0, 0x28
/* 8043696C  FF 60 E0 90 */	fmr f27, f28
/* 80436970  7C 9B 23 78 */	mr r27, r4
/* 80436974  FF 40 E0 90 */	fmr f26, f28
/* 80436978  7C BD 2B 78 */	mr r29, r5
/* 8043697C  FF 20 E0 90 */	fmr f25, f28
/* 80436980  C2 E3 45 44 */	lfs f23, lit_9567@l(r3)  /* 0x80644544@l */
/* 80436984  FF 00 E0 90 */	fmr f24, f28
/* 80436988  7C 09 03 A6 */	mtctr r0
lbl_8043698C:
/* 8043698C  A8 05 06 2E */	lha r0, 0x62e(r5)
/* 80436990  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80436994  B0 05 06 2E */	sth r0, 0x62e(r5)
/* 80436998  38 A5 06 48 */	addi r5, r5, 0x648
/* 8043699C  42 00 FF F0 */	bdnz lbl_8043698C
/* 804369A0  3B FA 01 78 */	addi r31, r26, 0x178
/* 804369A4  3B C0 00 00 */	li r30, 0
lbl_804369A8:
/* 804369A8  2C 1E 00 21 */	cmpwi r30, 0x21
/* 804369AC  41 82 06 48 */	beq lbl_80436FF4
/* 804369B0  2C 1E 00 20 */	cmpwi r30, 0x20
/* 804369B4  41 82 06 40 */	beq lbl_80436FF4
/* 804369B8  2C 1E 00 1A */	cmpwi r30, 0x1a
/* 804369BC  41 82 06 38 */	beq lbl_80436FF4
/* 804369C0  2C 1E 00 27 */	cmpwi r30, 0x27
/* 804369C4  41 82 06 30 */	beq lbl_80436FF4
/* 804369C8  2C 1E 00 0A */	cmpwi r30, 0xa
/* 804369CC  41 82 06 28 */	beq lbl_80436FF4
/* 804369D0  A8 1F 06 2E */	lha r0, 0x62e(r31)
/* 804369D4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804369D8  41 82 06 1C */	beq lbl_80436FF4
/* 804369DC  3B 80 00 00 */	li r28, 0
lbl_804369E0:
/* 804369E0  A8 7F 06 30 */	lha r3, 0x630(r31)
/* 804369E4  A8 1D 06 30 */	lha r0, 0x630(r29)
/* 804369E8  7C 03 00 00 */	cmpw r3, r0
/* 804369EC  40 82 04 F0 */	bne lbl_80436EDC
/* 804369F0  7C 1E E0 00 */	cmpw r30, r28
/* 804369F4  41 82 04 E8 */	beq lbl_80436EDC
/* 804369F8  2C 1C 00 21 */	cmpwi r28, 0x21
/* 804369FC  41 82 04 E0 */	beq lbl_80436EDC
/* 80436A00  2C 1C 00 1A */	cmpwi r28, 0x1a
/* 80436A04  41 82 04 D8 */	beq lbl_80436EDC
/* 80436A08  2C 1C 00 27 */	cmpwi r28, 0x27
/* 80436A0C  41 82 04 D0 */	beq lbl_80436EDC
/* 80436A10  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80436A14  41 82 04 C8 */	beq lbl_80436EDC
/* 80436A18  A8 1D 06 2E */	lha r0, 0x62e(r29)
/* 80436A1C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80436A20  41 82 04 BC */	beq lbl_80436EDC
/* 80436A24  C0 7F 05 B8 */	lfs f3, 0x5b8(r31)
/* 80436A28  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80436A2C  C0 5D 05 B8 */	lfs f2, 0x5b8(r29)
/* 80436A30  C0 3F 05 C0 */	lfs f1, 0x5c0(r31)
/* 80436A34  EF E3 10 28 */	fsubs f31, f3, f2
/* 80436A38  C0 1D 05 C0 */	lfs f0, 0x5c0(r29)
/* 80436A3C  C0 9F 05 BC */	lfs f4, 0x5bc(r31)
/* 80436A40  EF A1 00 28 */	fsubs f29, f1, f0
/* 80436A44  C0 1D 05 BC */	lfs f0, 0x5bc(r29)
/* 80436A48  EC 7F 07 F2 */	fmuls f3, f31, f31
/* 80436A4C  EF C4 00 28 */	fsubs f30, f4, f0
/* 80436A50  C0 43 42 48 */	lfs f2, lit_468@l(r3)  /* 0x80644248@l */
/* 80436A54  EC 3D 07 72 */	fmuls f1, f29, f29
/* 80436A58  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 80436A5C  EC 23 08 2A */	fadds f1, f3, f1
/* 80436A60  EC 01 00 2A */	fadds f0, f1, f0
/* 80436A64  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80436A68  40 81 00 6C */	ble lbl_80436AD4
/* 80436A6C  FC 60 00 34 */	frsqrte f3, f0
/* 80436A70  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80436A74  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 80436A78  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80436A7C  C8 A4 00 00 */	lfd f5, 0(r4)
/* 80436A80  FC 43 00 F2 */	fmul f2, f3, f3
/* 80436A84  C8 83 42 54 */	lfd f4, lit_470@l(r3)  /* 0x80644254@l */
/* 80436A88  FC 65 00 F2 */	fmul f3, f5, f3
/* 80436A8C  FC 40 00 B2 */	fmul f2, f0, f2
/* 80436A90  FC 44 10 28 */	fsub f2, f4, f2
/* 80436A94  FC 63 00 B2 */	fmul f3, f3, f2
/* 80436A98  FC 43 00 F2 */	fmul f2, f3, f3
/* 80436A9C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80436AA0  FC 40 00 B2 */	fmul f2, f0, f2
/* 80436AA4  FC 44 10 28 */	fsub f2, f4, f2
/* 80436AA8  FC 63 00 B2 */	fmul f3, f3, f2
/* 80436AAC  FC 43 00 F2 */	fmul f2, f3, f3
/* 80436AB0  FC 65 00 F2 */	fmul f3, f5, f3
/* 80436AB4  FC 40 00 B2 */	fmul f2, f0, f2
/* 80436AB8  FC 44 10 28 */	fsub f2, f4, f2
/* 80436ABC  FC 43 00 B2 */	fmul f2, f3, f2
/* 80436AC0  FC 40 00 B2 */	fmul f2, f0, f2
/* 80436AC4  FC 40 10 18 */	frsp f2, f2
/* 80436AC8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80436ACC  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80436AD0  48 00 00 08 */	b lbl_80436AD8
lbl_80436AD4:
/* 80436AD4  FC 40 00 90 */	fmr f2, f0
lbl_80436AD8:
/* 80436AD8  FC 02 B8 40 */	fcmpo cr0, f2, f23
/* 80436ADC  40 80 00 80 */	bge lbl_80436B5C
/* 80436AE0  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80436AE4  C0 43 42 48 */	lfs f2, lit_468@l(r3)  /* 0x80644248@l */
/* 80436AE8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80436AEC  40 81 00 68 */	ble lbl_80436B54
/* 80436AF0  FC 60 00 34 */	frsqrte f3, f0
/* 80436AF4  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80436AF8  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 80436AFC  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80436B00  C8 A4 00 00 */	lfd f5, 0(r4)
/* 80436B04  FC 43 00 F2 */	fmul f2, f3, f3
/* 80436B08  C8 83 42 54 */	lfd f4, lit_470@l(r3)  /* 0x80644254@l */
/* 80436B0C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80436B10  FC 40 00 B2 */	fmul f2, f0, f2
/* 80436B14  FC 44 10 28 */	fsub f2, f4, f2
/* 80436B18  FC 63 00 B2 */	fmul f3, f3, f2
/* 80436B1C  FC 43 00 F2 */	fmul f2, f3, f3
/* 80436B20  FC 65 00 F2 */	fmul f3, f5, f3
/* 80436B24  FC 40 00 B2 */	fmul f2, f0, f2
/* 80436B28  FC 44 10 28 */	fsub f2, f4, f2
/* 80436B2C  FC 63 00 B2 */	fmul f3, f3, f2
/* 80436B30  FC 43 00 F2 */	fmul f2, f3, f3
/* 80436B34  FC 65 00 F2 */	fmul f3, f5, f3
/* 80436B38  FC 40 00 B2 */	fmul f2, f0, f2
/* 80436B3C  FC 44 10 28 */	fsub f2, f4, f2
/* 80436B40  FC 43 00 B2 */	fmul f2, f3, f2
/* 80436B44  FC 00 00 B2 */	fmul f0, f0, f2
/* 80436B48  FC 00 00 18 */	frsp f0, f0
/* 80436B4C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80436B50  C0 01 00 10 */	lfs f0, 0x10(r1)
lbl_80436B54:
/* 80436B54  FE E0 00 90 */	fmr f23, f0
/* 80436B58  93 BF 05 98 */	stw r29, 0x598(r31)
lbl_80436B5C:
/* 80436B5C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80436B60  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80436B64  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80436B68  4C 41 13 82 */	cror 2, 1, 2
/* 80436B6C  40 82 00 0C */	bne lbl_80436B78
/* 80436B70  FC 60 F0 90 */	fmr f3, f30
/* 80436B74  48 00 00 08 */	b lbl_80436B7C
lbl_80436B78:
/* 80436B78  FC 60 F0 50 */	fneg f3, f30
lbl_80436B7C:
/* 80436B7C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80436B80  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80436B84  EC 02 00 2A */	fadds f0, f2, f0
/* 80436B88  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80436B8C  40 80 03 50 */	bge lbl_80436EDC
/* 80436B90  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80436B94  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80436B98  EC 02 00 2A */	fadds f0, f2, f0
/* 80436B9C  EC 40 00 32 */	fmuls f2, f0, f0
/* 80436BA0  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80436BA4  40 80 03 38 */	bge lbl_80436EDC
/* 80436BA8  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80436BAC  C0 43 42 48 */	lfs f2, lit_468@l(r3)  /* 0x80644248@l */
/* 80436BB0  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80436BB4  40 81 00 6C */	ble lbl_80436C20
/* 80436BB8  FC 60 08 34 */	frsqrte f3, f1
/* 80436BBC  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80436BC0  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 80436BC4  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80436BC8  C8 A4 00 00 */	lfd f5, 0(r4)
/* 80436BCC  FC 43 00 F2 */	fmul f2, f3, f3
/* 80436BD0  C8 83 42 54 */	lfd f4, lit_470@l(r3)  /* 0x80644254@l */
/* 80436BD4  FC 65 00 F2 */	fmul f3, f5, f3
/* 80436BD8  FC 41 00 B2 */	fmul f2, f1, f2
/* 80436BDC  FC 44 10 28 */	fsub f2, f4, f2
/* 80436BE0  FC 63 00 B2 */	fmul f3, f3, f2
/* 80436BE4  FC 43 00 F2 */	fmul f2, f3, f3
/* 80436BE8  FC 65 00 F2 */	fmul f3, f5, f3
/* 80436BEC  FC 41 00 B2 */	fmul f2, f1, f2
/* 80436BF0  FC 44 10 28 */	fsub f2, f4, f2
/* 80436BF4  FC 63 00 B2 */	fmul f3, f3, f2
/* 80436BF8  FC 43 00 F2 */	fmul f2, f3, f3
/* 80436BFC  FC 65 00 F2 */	fmul f3, f5, f3
/* 80436C00  FC 41 00 B2 */	fmul f2, f1, f2
/* 80436C04  FC 44 10 28 */	fsub f2, f4, f2
/* 80436C08  FC 43 00 B2 */	fmul f2, f3, f2
/* 80436C0C  FC 41 00 B2 */	fmul f2, f1, f2
/* 80436C10  FC 40 10 18 */	frsp f2, f2
/* 80436C14  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80436C18  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80436C1C  48 00 00 08 */	b lbl_80436C24
lbl_80436C20:
/* 80436C20  FC 40 08 90 */	fmr f2, f1
lbl_80436C24:
/* 80436C24  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80436C28  EE C0 10 28 */	fsubs f22, f0, f2
/* 80436C2C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80436C30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80436C34  40 81 00 68 */	ble lbl_80436C9C
/* 80436C38  FC 40 08 34 */	frsqrte f2, f1
/* 80436C3C  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80436C40  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 80436C44  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80436C48  C8 84 00 00 */	lfd f4, 0(r4)
/* 80436C4C  FC 02 00 B2 */	fmul f0, f2, f2
/* 80436C50  C8 63 42 54 */	lfd f3, lit_470@l(r3)  /* 0x80644254@l */
/* 80436C54  FC 44 00 B2 */	fmul f2, f4, f2
/* 80436C58  FC 01 00 32 */	fmul f0, f1, f0
/* 80436C5C  FC 03 00 28 */	fsub f0, f3, f0
/* 80436C60  FC 42 00 32 */	fmul f2, f2, f0
/* 80436C64  FC 02 00 B2 */	fmul f0, f2, f2
/* 80436C68  FC 44 00 B2 */	fmul f2, f4, f2
/* 80436C6C  FC 01 00 32 */	fmul f0, f1, f0
/* 80436C70  FC 03 00 28 */	fsub f0, f3, f0
/* 80436C74  FC 42 00 32 */	fmul f2, f2, f0
/* 80436C78  FC 02 00 B2 */	fmul f0, f2, f2
/* 80436C7C  FC 44 00 B2 */	fmul f2, f4, f2
/* 80436C80  FC 01 00 32 */	fmul f0, f1, f0
/* 80436C84  FC 03 00 28 */	fsub f0, f3, f0
/* 80436C88  FC 02 00 32 */	fmul f0, f2, f0
/* 80436C8C  FC 01 00 32 */	fmul f0, f1, f0
/* 80436C90  FC 00 00 18 */	frsp f0, f0
/* 80436C94  D0 01 00 08 */	stfs f0, 8(r1)
/* 80436C98  C0 21 00 08 */	lfs f1, 8(r1)
lbl_80436C9C:
/* 80436C9C  FC 40 F0 90 */	fmr f2, f30
/* 80436CA0  4B FD 53 61 */	bl atans_table
/* 80436CA4  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80436CA8  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80436CAC  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80436CB0  40 81 00 1C */	ble lbl_80436CCC
/* 80436CB4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80436CB8  FC 40 F0 50 */	fneg f2, f30
/* 80436CBC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80436CC0  EC 01 00 2A */	fadds f0, f1, f0
/* 80436CC4  EF C2 00 2A */	fadds f30, f2, f0
/* 80436CC8  48 00 00 18 */	b lbl_80436CE0
lbl_80436CCC:
/* 80436CCC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80436CD0  FC 40 F0 50 */	fneg f2, f30
/* 80436CD4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80436CD8  EC 01 00 2A */	fadds f0, f1, f0
/* 80436CDC  EF C2 00 28 */	fsubs f30, f2, f0
lbl_80436CE0:
/* 80436CE0  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 80436CE4  3C 60 43 30 */	lis r3, 0x4330
/* 80436CE8  38 A4 61 38 */	addi r5, r4, debug_mode@l /* 0x81166138@l */
/* 80436CEC  3C C0 80 64 */	lis r6, lit_2938@ha /* 0x806443A8@ha */
/* 80436CF0  81 05 00 00 */	lwz r8, 0(r5)
/* 80436CF4  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80436CF8  38 A4 42 8C */	addi r5, r4, lit_570@l /* 0x8064428C@l */
/* 80436CFC  3C E0 80 64 */	lis r7, lit_839@ha /* 0x806442D4@ha */
/* 80436D00  A8 88 1B 36 */	lha r4, 0x1b36(r8)
/* 80436D04  FC 20 E8 90 */	fmr f1, f29
/* 80436D08  A8 08 1B 38 */	lha r0, 0x1b38(r8)
/* 80436D0C  FC 40 F8 90 */	fmr f2, f31
/* 80436D10  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80436D14  90 61 00 28 */	stw r3, 0x28(r1)
/* 80436D18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80436D1C  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80436D20  C8 85 00 00 */	lfd f4, 0(r5)
/* 80436D24  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80436D28  90 01 00 34 */	stw r0, 0x34(r1)
/* 80436D2C  EC 60 20 28 */	fsubs f3, f0, f4
/* 80436D30  C0 A6 43 A8 */	lfs f5, lit_2938@l(r6)  /* 0x806443A8@l */
/* 80436D34  90 61 00 30 */	stw r3, 0x30(r1)
/* 80436D38  C0 C7 42 D4 */	lfs f6, lit_839@l(r7)  /* 0x806442D4@l */
/* 80436D3C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80436D40  EC 65 00 F2 */	fmuls f3, f5, f3
/* 80436D44  EC 00 20 28 */	fsubs f0, f0, f4
/* 80436D48  EC 66 18 2A */	fadds f3, f6, f3
/* 80436D4C  EC 05 00 32 */	fmuls f0, f5, f0
/* 80436D50  EF DE 00 F2 */	fmuls f30, f30, f3
/* 80436D54  EC 06 00 2A */	fadds f0, f6, f0
/* 80436D58  EE D6 00 32 */	fmuls f22, f22, f0
/* 80436D5C  4B FD 52 A5 */	bl atans_table
/* 80436D60  B0 7F 06 2A */	sth r3, 0x62a(r31)
/* 80436D64  A8 1F 06 2E */	lha r0, 0x62e(r31)
/* 80436D68  60 00 00 20 */	ori r0, r0, 0x20
/* 80436D6C  B0 1F 06 2E */	sth r0, 0x62e(r31)
/* 80436D70  A8 7F 06 2A */	lha r3, 0x62a(r31)
/* 80436D74  3C 63 00 01 */	addis r3, r3, 1
/* 80436D78  38 03 80 00 */	addi r0, r3, -32768
/* 80436D7C  B0 1D 06 2A */	sth r0, 0x62a(r29)
/* 80436D80  A8 1F 06 2E */	lha r0, 0x62e(r31)
/* 80436D84  60 00 00 20 */	ori r0, r0, 0x20
/* 80436D88  B0 1F 06 2E */	sth r0, 0x62e(r31)
/* 80436D8C  93 BF 05 94 */	stw r29, 0x594(r31)
/* 80436D90  A8 1D 06 2E */	lha r0, 0x62e(r29)
/* 80436D94  54 00 06 FD */	rlwinm. r0, r0, 0, 0x1b, 0x1e
/* 80436D98  41 82 00 2C */	beq lbl_80436DC4
/* 80436D9C  A8 7F 06 2A */	lha r3, 0x62a(r31)
/* 80436DA0  A8 1D 06 2C */	lha r0, 0x62c(r29)
/* 80436DA4  7C 63 00 50 */	subf r3, r3, r0
/* 80436DA8  7C 60 07 34 */	extsh r0, r3
/* 80436DAC  7C 63 07 35 */	extsh. r3, r3
/* 80436DB0  7C 60 00 D0 */	neg r3, r0
/* 80436DB4  41 80 00 08 */	blt lbl_80436DBC
/* 80436DB8  7C 03 03 78 */	mr r3, r0
lbl_80436DBC:
/* 80436DBC  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80436DC0  41 80 00 30 */	blt lbl_80436DF0
lbl_80436DC4:
/* 80436DC4  C0 5D 00 20 */	lfs f2, 0x20(r29)
/* 80436DC8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80436DCC  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 80436DD0  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80436DD4  EC 23 10 2A */	fadds f1, f3, f2
/* 80436DD8  EC 00 18 28 */	fsubs f0, f0, f3
/* 80436DDC  EC 22 08 24 */	fdivs f1, f2, f1
/* 80436DE0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80436DE4  EE D6 00 72 */	fmuls f22, f22, f1
/* 80436DE8  EF DE 00 72 */	fmuls f30, f30, f1
/* 80436DEC  48 00 00 38 */	b lbl_80436E24
lbl_80436DF0:
/* 80436DF0  3C 80 80 64 */	lis r4, data_80644244@ha /* 0x80644244@ha */
/* 80436DF4  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 80436DF8  C0 24 42 44 */	lfs f1, data_80644244@l(r4)  /* 0x80644244@l */
/* 80436DFC  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80436E00  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 80436E04  EC 41 00 32 */	fmuls f2, f1, f0
/* 80436E08  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80436E0C  EC 00 18 28 */	fsubs f0, f0, f3
/* 80436E10  EC 23 10 2A */	fadds f1, f3, f2
/* 80436E14  EC 22 08 24 */	fdivs f1, f2, f1
/* 80436E18  EC 21 00 32 */	fmuls f1, f1, f0
/* 80436E1C  EE D6 00 72 */	fmuls f22, f22, f1
/* 80436E20  EF DE 00 72 */	fmuls f30, f30, f1
lbl_80436E24:
/* 80436E24  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80436E28  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80436E2C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80436E30  4C 41 13 82 */	cror 2, 1, 2
/* 80436E34  40 82 00 0C */	bne lbl_80436E40
/* 80436E38  FC 00 F0 90 */	fmr f0, f30
/* 80436E3C  48 00 00 08 */	b lbl_80436E44
lbl_80436E40:
/* 80436E40  FC 00 F0 50 */	fneg f0, f30
lbl_80436E44:
/* 80436E44  FC 16 00 40 */	fcmpo cr0, f22, f0
/* 80436E48  41 80 00 1C */	blt lbl_80436E64
/* 80436E4C  A8 1F 06 24 */	lha r0, 0x624(r31)
/* 80436E50  2C 00 00 0A */	cmpwi r0, 0xa
/* 80436E54  41 82 00 10 */	beq lbl_80436E64
/* 80436E58  80 1F 05 9C */	lwz r0, 0x59c(r31)
/* 80436E5C  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80436E60  40 82 00 34 */	bne lbl_80436E94
lbl_80436E64:
/* 80436E64  A8 7F 06 2A */	lha r3, 0x62a(r31)
/* 80436E68  4B F8 3C 89 */	bl sin_s
/* 80436E6C  EC 16 00 72 */	fmuls f0, f22, f1
/* 80436E70  A8 7F 06 2A */	lha r3, 0x62a(r31)
/* 80436E74  EF 9C 00 2A */	fadds f28, f28, f0
/* 80436E78  4B F8 3C 25 */	bl cos_s
/* 80436E7C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80436E80  EC 36 00 72 */	fmuls f1, f22, f1
/* 80436E84  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80436E88  EF 7B 08 2A */	fadds f27, f27, f1
/* 80436E8C  EF 39 00 2A */	fadds f25, f25, f0
/* 80436E90  48 00 00 14 */	b lbl_80436EA4
lbl_80436E94:
/* 80436E94  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80436E98  EF 5A F0 2A */	fadds f26, f26, f30
/* 80436E9C  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80436EA0  EF 18 00 2A */	fadds f24, f24, f0
lbl_80436EA4:
/* 80436EA4  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 80436EA8  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80436EAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80436EB0  40 81 00 2C */	ble lbl_80436EDC
/* 80436EB4  3C 60 80 64 */	lis r3, lit_697@ha /* 0x806442B0@ha */
/* 80436EB8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80436EBC  C0 23 42 B0 */	lfs f1, lit_697@l(r3)  /* 0x806442B0@l */
/* 80436EC0  C0 5F 05 F8 */	lfs f2, 0x5f8(r31)
/* 80436EC4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80436EC8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80436ECC  4C 40 13 82 */	cror 2, 0, 2
/* 80436ED0  40 82 00 0C */	bne lbl_80436EDC
/* 80436ED4  EC 02 B0 2A */	fadds f0, f2, f22
/* 80436ED8  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
lbl_80436EDC:
/* 80436EDC  3B 9C 00 01 */	addi r28, r28, 1
/* 80436EE0  3B BD 06 48 */	addi r29, r29, 0x648
/* 80436EE4  2C 1C 00 28 */	cmpwi r28, 0x28
/* 80436EE8  41 80 FA F8 */	blt lbl_804369E0
/* 80436EEC  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80436EF0  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80436EF4  FC 19 00 40 */	fcmpo cr0, f25, f0
/* 80436EF8  40 81 00 24 */	ble lbl_80436F1C
/* 80436EFC  EC 1C C8 24 */	fdivs f0, f28, f25
/* 80436F00  C0 3F 05 A0 */	lfs f1, 0x5a0(r31)
/* 80436F04  EC 21 00 2A */	fadds f1, f1, f0
/* 80436F08  EC 1B C8 24 */	fdivs f0, f27, f25
/* 80436F0C  D0 3F 05 A0 */	stfs f1, 0x5a0(r31)
/* 80436F10  C0 3F 05 A8 */	lfs f1, 0x5a8(r31)
/* 80436F14  EC 01 00 2A */	fadds f0, f1, f0
/* 80436F18  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
lbl_80436F1C:
/* 80436F1C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80436F20  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80436F24  FC 18 00 40 */	fcmpo cr0, f24, f0
/* 80436F28  40 81 00 6C */	ble lbl_80436F94
/* 80436F2C  EC 5A C0 24 */	fdivs f2, f26, f24
/* 80436F30  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80436F34  C0 03 42 5C */	lfs f0, lit_471@l(r3)  /* 0x8064425C@l */
/* 80436F38  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80436F3C  40 80 00 08 */	bge lbl_80436F44
/* 80436F40  FC 00 10 90 */	fmr f0, f2
lbl_80436F44:
/* 80436F44  3C 60 80 64 */	lis r3, lit_1072@ha /* 0x80644318@ha */
/* 80436F48  C0 23 43 18 */	lfs f1, lit_1072@l(r3)  /* 0x80644318@l */
/* 80436F4C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80436F50  40 81 00 18 */	ble lbl_80436F68
/* 80436F54  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80436F58  C0 23 42 5C */	lfs f1, lit_471@l(r3)  /* 0x8064425C@l */
/* 80436F5C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80436F60  40 80 00 08 */	bge lbl_80436F68
/* 80436F64  FC 20 10 90 */	fmr f1, f2
lbl_80436F68:
/* 80436F68  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 80436F6C  EC 00 08 2A */	fadds f0, f0, f1
/* 80436F70  D0 1F 05 A4 */	stfs f0, 0x5a4(r31)
/* 80436F74  A8 7F 06 24 */	lha r3, 0x624(r31)
/* 80436F78  7C 60 07 35 */	extsh. r0, r3
/* 80436F7C  41 82 00 0C */	beq lbl_80436F88
/* 80436F80  2C 03 00 0B */	cmpwi r3, 0xb
/* 80436F84  40 82 00 10 */	bne lbl_80436F94
lbl_80436F88:
/* 80436F88  C0 1F 05 F4 */	lfs f0, 0x5f4(r31)
/* 80436F8C  EC 00 10 2A */	fadds f0, f0, f2
/* 80436F90  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
lbl_80436F94:
/* 80436F94  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80436F98  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80436F9C  FC 18 00 40 */	fcmpo cr0, f24, f0
/* 80436FA0  40 81 00 30 */	ble lbl_80436FD0
/* 80436FA4  FC 19 00 40 */	fcmpo cr0, f25, f0
/* 80436FA8  40 81 00 28 */	ble lbl_80436FD0
/* 80436FAC  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 80436FB0  38 9F 05 A0 */	addi r4, r31, 0x5a0
/* 80436FB4  38 A1 00 18 */	addi r5, r1, 0x18
/* 80436FB8  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80436FBC  4B F8 3F BD */	bl xyz_t_sub
/* 80436FC0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80436FC4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80436FC8  4B FD 50 39 */	bl atans_table
/* 80436FCC  B0 7F 06 2A */	sth r3, 0x62a(r31)
lbl_80436FD0:
/* 80436FD0  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 80436FD4  3C 60 80 64 */	lis r3, lit_9567@ha /* 0x80644544@ha */
/* 80436FD8  C3 24 42 48 */	lfs f25, lit_468@l(r4)  /* 0x80644248@l */
/* 80436FDC  3B BA 01 78 */	addi r29, r26, 0x178
/* 80436FE0  C2 E3 45 44 */	lfs f23, lit_9567@l(r3)  /* 0x80644544@l */
/* 80436FE4  FF 00 C8 90 */	fmr f24, f25
/* 80436FE8  FF 60 C8 90 */	fmr f27, f25
/* 80436FEC  FF 80 C8 90 */	fmr f28, f25
/* 80436FF0  FF 40 C8 90 */	fmr f26, f25
lbl_80436FF4:
/* 80436FF4  A8 1F 06 30 */	lha r0, 0x630(r31)
/* 80436FF8  2C 00 00 03 */	cmpwi r0, 3
/* 80436FFC  40 82 00 1C */	bne lbl_80437018
/* 80437000  A8 1F 06 24 */	lha r0, 0x624(r31)
/* 80437004  2C 00 00 07 */	cmpwi r0, 7
/* 80437008  41 82 00 10 */	beq lbl_80437018
/* 8043700C  7F E3 FB 78 */	mr r3, r31
/* 80437010  7F 64 DB 78 */	mr r4, r27
/* 80437014  4B FF DA F9 */	bl Museum_Fish_BigFishObjCheck
lbl_80437018:
/* 80437018  3B DE 00 01 */	addi r30, r30, 1
/* 8043701C  3B FF 06 48 */	addi r31, r31, 0x648
/* 80437020  2C 1E 00 28 */	cmpwi r30, 0x28
/* 80437024  41 80 F9 84 */	blt lbl_804369A8
/* 80437028  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 8043702C  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80437030  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 80437034  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 80437038  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 8043703C  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 80437040  E3 81 00 B8 */	psq_l f28, 184(r1), 0, 0 /* qr0 */
/* 80437044  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 80437048  E3 61 00 A8 */	psq_l f27, 168(r1), 0, 0 /* qr0 */
/* 8043704C  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 80437050  E3 41 00 98 */	psq_l f26, 152(r1), 0, 0 /* qr0 */
/* 80437054  CB 41 00 90 */	lfd f26, 0x90(r1)
/* 80437058  E3 21 00 88 */	psq_l f25, 136(r1), 0, 0 /* qr0 */
/* 8043705C  CB 21 00 80 */	lfd f25, 0x80(r1)
/* 80437060  E3 01 00 78 */	psq_l f24, 120(r1), 0, 0 /* qr0 */
/* 80437064  CB 01 00 70 */	lfd f24, 0x70(r1)
/* 80437068  E2 E1 00 68 */	psq_l f23, 104(r1), 0, 0 /* qr0 */
/* 8043706C  CA E1 00 60 */	lfd f23, 0x60(r1)
/* 80437070  E2 C1 00 58 */	psq_l f22, 88(r1), 0, 0 /* qr0 */
/* 80437074  39 61 00 50 */	addi r11, r1, 0x50
/* 80437078  CA C1 00 50 */	lfd f22, 0x50(r1)
/* 8043707C  4B C6 3E 99 */	bl func_8009AF14
/* 80437080  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80437084  7C 08 03 A6 */	mtlr r0
/* 80437088  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8043708C  4E 80 00 20 */	blr 
