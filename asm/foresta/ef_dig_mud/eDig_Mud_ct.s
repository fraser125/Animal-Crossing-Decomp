lbl_806098B0:
/* 806098B0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806098B4  7C 08 02 A6 */	mflr r0
/* 806098B8  90 01 00 54 */	stw r0, 0x54(r1)
/* 806098BC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 806098C0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 806098C4  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 806098C8  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 806098CC  39 61 00 30 */	addi r11, r1, 0x30
/* 806098D0  4B A9 16 05 */	bl func_8009AED4
/* 806098D4  7C 7D 1B 78 */	mr r29, r3
/* 806098D8  AB E5 00 00 */	lha r31, 0(r5)
/* 806098DC  4B A5 34 51 */	bl fqrand2
/* 806098E0  3C 60 80 65 */	lis r3, lit_411@ha /* 0x8064BE3C@ha */
/* 806098E4  3C 80 80 65 */	lis r4, lit_410@ha /* 0x8064BE38@ha */
/* 806098E8  38 A3 BE 3C */	addi r5, r3, lit_411@l /* 0x8064BE3C@l */
/* 806098EC  C0 44 BE 38 */	lfs f2, lit_410@l(r4)  /* 0x8064BE38@l */
/* 806098F0  C0 05 00 00 */	lfs f0, 0(r5)
/* 806098F4  3C 60 80 65 */	lis r3, data_8064BE34@ha /* 0x8064BE34@ha */
/* 806098F8  EC 20 00 72 */	fmuls f1, f0, f1
/* 806098FC  C0 03 BE 34 */	lfs f0, data_8064BE34@l(r3)  /* 0x8064BE34@l */
/* 80609900  EC 22 08 2A */	fadds f1, f2, f1
/* 80609904  EC 00 00 72 */	fmuls f0, f0, f1
/* 80609908  FC 00 00 1E */	fctiwz f0, f0
/* 8060990C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80609910  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80609914  7C 1E 07 34 */	extsh r30, r0
/* 80609918  7F C3 F3 78 */	mr r3, r30
/* 8060991C  4B DB 11 81 */	bl cos_s
/* 80609920  FF E0 08 90 */	fmr f31, f1
/* 80609924  4B A5 34 09 */	bl fqrand2
/* 80609928  3C 60 80 65 */	lis r3, lit_414@ha /* 0x8064BE48@ha */
/* 8060992C  A8 1D 00 08 */	lha r0, 8(r29)
/* 80609930  38 A3 BE 48 */	addi r5, r3, lit_414@l /* 0x8064BE48@l */
/* 80609934  3C 80 80 65 */	lis r4, lit_413@ha /* 0x8064BE44@ha */
/* 80609938  C0 05 00 00 */	lfs f0, 0(r5)
/* 8060993C  3C 60 80 65 */	lis r3, lit_412@ha /* 0x8064BE40@ha */
/* 80609940  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80609944  EC 40 00 72 */	fmuls f2, f0, f1
/* 80609948  C0 24 BE 44 */	lfs f1, lit_413@l(r4)  /* 0x8064BE44@l */
/* 8060994C  C0 03 BE 40 */	lfs f0, lit_412@l(r3)  /* 0x8064BE40@l */
/* 80609950  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80609954  EF C0 08 2A */	fadds f30, f0, f1
/* 80609958  41 82 00 1C */	beq lbl_80609974
/* 8060995C  38 00 00 01 */	li r0, 1
/* 80609960  B0 1D 00 4E */	sth r0, 0x4e(r29)
/* 80609964  A8 1D 00 08 */	lha r0, 8(r29)
/* 80609968  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8060996C  B0 1D 00 08 */	sth r0, 8(r29)
/* 80609970  48 00 00 0C */	b lbl_8060997C
lbl_80609974:
/* 80609974  38 00 00 00 */	li r0, 0
/* 80609978  B0 1D 00 4E */	sth r0, 0x4e(r29)
lbl_8060997C:
/* 8060997C  A8 1D 00 08 */	lha r0, 8(r29)
/* 80609980  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80609984  41 82 00 74 */	beq lbl_806099F8
/* 80609988  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8060998C  3C 00 43 30 */	lis r0, 0x4330
/* 80609990  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80609994  3C C0 80 65 */	lis r6, lit_415@ha /* 0x8064BE4C@ha */
/* 80609998  80 84 00 00 */	lwz r4, 0(r4)
/* 8060999C  3C 60 80 65 */	lis r3, lit_424@ha /* 0x8064BE6C@ha */
/* 806099A0  3C A0 80 65 */	lis r5, lit_413@ha /* 0x8064BE44@ha */
/* 806099A4  90 01 00 08 */	stw r0, 8(r1)
/* 806099A8  A8 84 1B 32 */	lha r4, 0x1b32(r4)
/* 806099AC  C8 23 BE 6C */	lfd f1, lit_424@l(r3)  /* 0x8064BE6C@l */
/* 806099B0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 806099B4  C0 66 BE 4C */	lfs f3, lit_415@l(r6)  /* 0x8064BE4C@l */
/* 806099B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806099BC  38 00 00 01 */	li r0, 1
/* 806099C0  C0 45 BE 44 */	lfs f2, lit_413@l(r5)  /* 0x8064BE44@l */
/* 806099C4  C8 01 00 08 */	lfd f0, 8(r1)
/* 806099C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 806099CC  EC 03 00 32 */	fmuls f0, f3, f0
/* 806099D0  EC 02 00 2A */	fadds f0, f2, f0
/* 806099D4  EC 03 00 32 */	fmuls f0, f3, f0
/* 806099D8  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 806099DC  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 806099E0  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 806099E4  B0 1D 00 50 */	sth r0, 0x50(r29)
/* 806099E8  A8 1D 00 08 */	lha r0, 8(r29)
/* 806099EC  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 806099F0  B0 1D 00 08 */	sth r0, 8(r29)
/* 806099F4  48 00 00 20 */	b lbl_80609A14
lbl_806099F8:
/* 806099F8  3C 60 80 65 */	lis r3, lit_415@ha /* 0x8064BE4C@ha */
/* 806099FC  38 00 00 00 */	li r0, 0
/* 80609A00  C0 03 BE 4C */	lfs f0, lit_415@l(r3)  /* 0x8064BE4C@l */
/* 80609A04  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 80609A08  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 80609A0C  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 80609A10  B0 1D 00 50 */	sth r0, 0x50(r29)
lbl_80609A14:
/* 80609A14  A8 7D 00 08 */	lha r3, 8(r29)
/* 80609A18  7C 60 07 35 */	extsh. r0, r3
/* 80609A1C  41 82 00 0C */	beq lbl_80609A28
/* 80609A20  2C 03 00 03 */	cmpwi r3, 3
/* 80609A24  40 82 00 10 */	bne lbl_80609A34
lbl_80609A28:
/* 80609A28  38 00 00 20 */	li r0, 0x20
/* 80609A2C  B0 1D 00 4C */	sth r0, 0x4c(r29)
/* 80609A30  48 00 00 28 */	b lbl_80609A58
lbl_80609A34:
/* 80609A34  2C 03 00 01 */	cmpwi r3, 1
/* 80609A38  41 82 00 0C */	beq lbl_80609A44
/* 80609A3C  2C 03 00 04 */	cmpwi r3, 4
/* 80609A40  40 82 00 10 */	bne lbl_80609A50
lbl_80609A44:
/* 80609A44  38 00 00 1E */	li r0, 0x1e
/* 80609A48  B0 1D 00 4C */	sth r0, 0x4c(r29)
/* 80609A4C  48 00 00 0C */	b lbl_80609A58
lbl_80609A50:
/* 80609A50  38 00 00 1C */	li r0, 0x1c
/* 80609A54  B0 1D 00 4C */	sth r0, 0x4c(r29)
lbl_80609A58:
/* 80609A58  A8 1D 00 08 */	lha r0, 8(r29)
/* 80609A5C  2C 00 00 03 */	cmpwi r0, 3
/* 80609A60  40 80 00 7C */	bge lbl_80609ADC
/* 80609A64  4B A5 32 C9 */	bl fqrand2
/* 80609A68  3C 60 80 65 */	lis r3, lit_411@ha /* 0x8064BE3C@ha */
/* 80609A6C  3C 80 80 65 */	lis r4, lit_416@ha /* 0x8064BE50@ha */
/* 80609A70  38 A3 BE 3C */	addi r5, r3, lit_411@l /* 0x8064BE3C@l */
/* 80609A74  C0 44 BE 50 */	lfs f2, lit_416@l(r4)  /* 0x8064BE50@l */
/* 80609A78  C0 05 00 00 */	lfs f0, 0(r5)
/* 80609A7C  3C 60 80 65 */	lis r3, data_8064BE34@ha /* 0x8064BE34@ha */
/* 80609A80  EC 20 00 72 */	fmuls f1, f0, f1
/* 80609A84  C0 03 BE 34 */	lfs f0, data_8064BE34@l(r3)  /* 0x8064BE34@l */
/* 80609A88  EC 22 08 2A */	fadds f1, f2, f1
/* 80609A8C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80609A90  FC 00 00 1E */	fctiwz f0, f0
/* 80609A94  D8 01 00 08 */	stfd f0, 8(r1)
/* 80609A98  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80609A9C  7C 1F 02 14 */	add r0, r31, r0
/* 80609AA0  7C 1F 07 34 */	extsh r31, r0
/* 80609AA4  7F E3 FB 78 */	mr r3, r31
/* 80609AA8  4B DB 10 49 */	bl sin_s
/* 80609AAC  EF FE 07 F2 */	fmuls f31, f30, f31
/* 80609AB0  7F C3 F3 78 */	mr r3, r30
/* 80609AB4  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80609AB8  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 80609ABC  4B DB 10 35 */	bl sin_s
/* 80609AC0  EC 1E 00 72 */	fmuls f0, f30, f1
/* 80609AC4  7F E3 FB 78 */	mr r3, r31
/* 80609AC8  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 80609ACC  4B DB 0F D1 */	bl cos_s
/* 80609AD0  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80609AD4  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 80609AD8  48 00 01 08 */	b lbl_80609BE0
lbl_80609ADC:
/* 80609ADC  2C 00 00 06 */	cmpwi r0, 6
/* 80609AE0  40 80 00 9C */	bge lbl_80609B7C
/* 80609AE4  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80609AE8  3C 00 43 30 */	lis r0, 0x4330
/* 80609AEC  3C 80 80 65 */	lis r4, lit_424@ha /* 0x8064BE6C@ha */
/* 80609AF0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80609AF4  38 64 BE 6C */	addi r3, r4, lit_424@l /* 0x8064BE6C@l */
/* 80609AF8  90 01 00 08 */	stw r0, 8(r1)
/* 80609AFC  3C 80 80 65 */	lis r4, lit_417@ha /* 0x8064BE54@ha */
/* 80609B00  C8 23 00 00 */	lfd f1, 0(r3)
/* 80609B04  3C 60 80 65 */	lis r3, data_8064BE34@ha /* 0x8064BE34@ha */
/* 80609B08  C8 01 00 08 */	lfd f0, 8(r1)
/* 80609B0C  C0 44 BE 54 */	lfs f2, lit_417@l(r4)  /* 0x8064BE54@l */
/* 80609B10  EC 00 08 28 */	fsubs f0, f0, f1
/* 80609B14  C0 23 BE 34 */	lfs f1, data_8064BE34@l(r3)  /* 0x8064BE34@l */
/* 80609B18  EC 02 00 32 */	fmuls f0, f2, f0
/* 80609B1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80609B20  FC 00 00 1E */	fctiwz f0, f0
/* 80609B24  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80609B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80609B2C  7C 00 07 34 */	extsh r0, r0
/* 80609B30  7F FF 02 14 */	add r31, r31, r0
/* 80609B34  7F E3 FB 78 */	mr r3, r31
/* 80609B38  4B DB 0F B9 */	bl sin_s
/* 80609B3C  3C 60 80 65 */	lis r3, lit_418@ha /* 0x8064BE58@ha */
/* 80609B40  C0 03 BE 58 */	lfs f0, lit_418@l(r3)  /* 0x8064BE58@l */
/* 80609B44  EC 00 00 72 */	fmuls f0, f0, f1
/* 80609B48  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 80609B4C  4B A5 31 A9 */	bl fqrand
/* 80609B50  3C 80 80 65 */	lis r4, lit_419@ha /* 0x8064BE5C@ha */
/* 80609B54  7F E3 FB 78 */	mr r3, r31
/* 80609B58  C0 04 BE 5C */	lfs f0, lit_419@l(r4)  /* 0x8064BE5C@l */
/* 80609B5C  EC 00 08 2A */	fadds f0, f0, f1
/* 80609B60  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 80609B64  4B DB 0F 39 */	bl cos_s
/* 80609B68  3C 60 80 65 */	lis r3, lit_418@ha /* 0x8064BE58@ha */
/* 80609B6C  C0 03 BE 58 */	lfs f0, lit_418@l(r3)  /* 0x8064BE58@l */
/* 80609B70  EC 00 00 72 */	fmuls f0, f0, f1
/* 80609B74  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 80609B78  48 00 00 68 */	b lbl_80609BE0
lbl_80609B7C:
/* 80609B7C  2C 00 00 08 */	cmpwi r0, 8
/* 80609B80  41 82 00 34 */	beq lbl_80609BB4
/* 80609B84  7F E3 FB 78 */	mr r3, r31
/* 80609B88  4B DB 0F 69 */	bl sin_s
/* 80609B8C  D0 3D 00 1C */	stfs f1, 0x1c(r29)
/* 80609B90  4B A5 31 65 */	bl fqrand
/* 80609B94  3C 80 80 65 */	lis r4, lit_420@ha /* 0x8064BE60@ha */
/* 80609B98  7F E3 FB 78 */	mr r3, r31
/* 80609B9C  C0 04 BE 60 */	lfs f0, lit_420@l(r4)  /* 0x8064BE60@l */
/* 80609BA0  EC 00 08 2A */	fadds f0, f0, f1
/* 80609BA4  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 80609BA8  4B DB 0E F5 */	bl cos_s
/* 80609BAC  D0 3D 00 24 */	stfs f1, 0x24(r29)
/* 80609BB0  48 00 00 30 */	b lbl_80609BE0
lbl_80609BB4:
/* 80609BB4  3C 60 80 65 */	lis r3, lit_421@ha /* 0x8064BE64@ha */
/* 80609BB8  C0 03 BE 64 */	lfs f0, lit_421@l(r3)  /* 0x8064BE64@l */
/* 80609BBC  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 80609BC0  4B A5 31 35 */	bl fqrand
/* 80609BC4  3C 80 80 65 */	lis r4, lit_420@ha /* 0x8064BE60@ha */
/* 80609BC8  3C 60 80 65 */	lis r3, lit_421@ha /* 0x8064BE64@ha */
/* 80609BCC  C0 44 BE 60 */	lfs f2, lit_420@l(r4)  /* 0x8064BE60@l */
/* 80609BD0  C0 03 BE 64 */	lfs f0, lit_421@l(r3)  /* 0x8064BE64@l */
/* 80609BD4  EC 22 08 2A */	fadds f1, f2, f1
/* 80609BD8  D0 3D 00 20 */	stfs f1, 0x20(r29)
/* 80609BDC  D0 1D 00 24 */	stfs f0, 0x24(r29)
lbl_80609BE0:
/* 80609BE0  3C 60 80 65 */	lis r3, lit_422@ha /* 0x8064BE68@ha */
/* 80609BE4  C0 03 BE 68 */	lfs f0, lit_422@l(r3)  /* 0x8064BE68@l */
/* 80609BE8  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 80609BEC  A8 1D 00 4C */	lha r0, 0x4c(r29)
/* 80609BF0  B0 1D 00 00 */	sth r0, 0(r29)
/* 80609BF4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80609BF8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80609BFC  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80609C00  39 61 00 30 */	addi r11, r1, 0x30
/* 80609C04  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80609C08  4B A9 13 19 */	bl func_8009AF20
/* 80609C0C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80609C10  7C 08 03 A6 */	mtlr r0
/* 80609C14  38 21 00 50 */	addi r1, r1, 0x50
/* 80609C18  4E 80 00 20 */	blr 
