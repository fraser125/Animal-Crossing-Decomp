lbl_803F4A00:
/* 803F4A00  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803F4A04  7C 08 02 A6 */	mflr r0
/* 803F4A08  90 01 00 54 */	stw r0, 0x54(r1)
/* 803F4A0C  39 61 00 50 */	addi r11, r1, 0x50
/* 803F4A10  4B CA 64 B9 */	bl func_8009AEC8
/* 803F4A14  80 03 01 18 */	lwz r0, 0x118(r3)
/* 803F4A18  7C 7A 1B 78 */	mr r26, r3
/* 803F4A1C  7C 83 26 70 */	srawi r3, r4, 4
/* 803F4A20  83 C5 00 00 */	lwz r30, 0(r5)
/* 803F4A24  7C 80 00 38 */	and r0, r4, r0
/* 803F4A28  83 BA 00 00 */	lwz r29, 0(r26)
/* 803F4A2C  7C 7B 03 78 */	or r27, r3, r0
/* 803F4A30  7C BC 2B 78 */	mr r28, r5
/* 803F4A34  57 60 07 BD */	rlwinm. r0, r27, 0, 0x1e, 0x1e
/* 803F4A38  41 82 00 78 */	beq lbl_803F4AB0
/* 803F4A3C  80 7D 02 D4 */	lwz r3, 0x2d4(r29)
/* 803F4A40  38 9A 00 04 */	addi r4, r26, 4
/* 803F4A44  3B E3 FF F0 */	addi r31, r3, -16
/* 803F4A48  93 FD 02 D4 */	stw r31, 0x2d4(r29)
/* 803F4A4C  7F E3 FB 78 */	mr r3, r31
/* 803F4A50  4B FF F3 21 */	bl func_803F3D70
/* 803F4A54  C8 3F 00 00 */	lfd f1, 0(r31)
/* 803F4A58  7F C5 F3 78 */	mr r5, r30
/* 803F4A5C  C8 1F 00 08 */	lfd f0, 8(r31)
/* 803F4A60  3C 80 E7 00 */	lis r4, 0xe700
/* 803F4A64  38 00 00 00 */	li r0, 0
/* 803F4A68  3B DE 00 08 */	addi r30, r30, 8
/* 803F4A6C  D8 3A 00 48 */	stfd f1, 0x48(r26)
/* 803F4A70  38 61 00 10 */	addi r3, r1, 0x10
/* 803F4A74  D8 1A 00 50 */	stfd f0, 0x50(r26)
/* 803F4A78  90 85 00 00 */	stw r4, 0(r5)
/* 803F4A7C  90 05 00 04 */	stw r0, 4(r5)
/* 803F4A80  93 C1 00 10 */	stw r30, 0x10(r1)
/* 803F4A84  80 9A 00 0C */	lwz r4, 0xc(r26)
/* 803F4A88  80 BA 00 04 */	lwz r5, 4(r26)
/* 803F4A8C  80 DA 00 10 */	lwz r6, 0x10(r26)
/* 803F4A90  80 FA 00 08 */	lwz r7, 8(r26)
/* 803F4A94  4B FF F5 05 */	bl setScissorX
/* 803F4A98  3C 60 DC 08 */	lis r3, 0xDC08 /* 0xDC080008@ha */
/* 803F4A9C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 803F4AA0  38 03 00 08 */	addi r0, r3, 0x0008 /* 0xDC080008@l */
/* 803F4AA4  90 1E 00 00 */	stw r0, 0(r30)
/* 803F4AA8  93 FE 00 04 */	stw r31, 4(r30)
/* 803F4AAC  3B DE 00 08 */	addi r30, r30, 8
lbl_803F4AB0:
/* 803F4AB0  57 60 07 39 */	rlwinm. r0, r27, 0, 0x1c, 0x1c
/* 803F4AB4  41 82 00 F8 */	beq lbl_803F4BAC
/* 803F4AB8  80 7D 02 D4 */	lwz r3, 0x2d4(r29)
/* 803F4ABC  3C A0 43 30 */	lis r5, 0x4330
/* 803F4AC0  3C E0 80 66 */	lis r7, ScreenHeight@ha /* 0x8065F014@ha */
/* 803F4AC4  3C 80 80 66 */	lis r4, data_8065F010@ha /* 0x8065F010@ha */
/* 803F4AC8  3B E3 FF C0 */	addi r31, r3, -64
/* 803F4ACC  3C 60 80 64 */	lis r3, lit_439@ha /* 0x8064330C@ha */
/* 803F4AD0  93 FD 02 D4 */	stw r31, 0x2d4(r29)
/* 803F4AD4  38 C3 33 0C */	addi r6, r3, lit_439@l /* 0x8064330C@l */
/* 803F4AD8  3C 60 80 64 */	lis r3, lit_552@ha /* 0x80643318@ha */
/* 803F4ADC  39 07 F0 14 */	addi r8, r7, ScreenHeight@l /* 0x8065F014@l */
/* 803F4AE0  93 FA 00 D8 */	stw r31, 0xd8(r26)
/* 803F4AE4  38 E4 F0 10 */	addi r7, r4, data_8065F010@l /* 0x8065F010@l */
/* 803F4AE8  38 83 33 18 */	addi r4, r3, lit_552@l /* 0x80643318@l */
/* 803F4AEC  C9 06 00 00 */	lfd f8, 0(r6)
/* 803F4AF0  80 08 00 00 */	lwz r0, 0(r8)
/* 803F4AF4  7F E3 FB 78 */	mr r3, r31
/* 803F4AF8  80 C7 00 00 */	lwz r6, 0(r7)
/* 803F4AFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803F4B00  90 A1 00 18 */	stw r5, 0x18(r1)
/* 803F4B04  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 803F4B08  C0 84 00 00 */	lfs f4, 0(r4)
/* 803F4B0C  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 803F4B10  C0 BA 00 18 */	lfs f5, 0x18(r26)
/* 803F4B14  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803F4B18  90 01 00 2C */	stw r0, 0x2c(r1)
/* 803F4B1C  EC 20 40 28 */	fsubs f1, f0, f8
/* 803F4B20  C0 DA 00 1C */	lfs f6, 0x1c(r26)
/* 803F4B24  90 A1 00 28 */	stw r5, 0x28(r1)
/* 803F4B28  C0 FA 00 20 */	lfs f7, 0x20(r26)
/* 803F4B2C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 803F4B30  FC 20 08 50 */	fneg f1, f1
/* 803F4B34  90 C1 00 24 */	stw r6, 0x24(r1)
/* 803F4B38  EC 00 40 28 */	fsubs f0, f0, f8
/* 803F4B3C  90 A1 00 20 */	stw r5, 0x20(r1)
/* 803F4B40  EC 21 01 32 */	fmuls f1, f1, f4
/* 803F4B44  C8 41 00 20 */	lfd f2, 0x20(r1)
/* 803F4B48  FC 00 00 50 */	fneg f0, f0
/* 803F4B4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F4B50  EC 42 40 28 */	fsubs f2, f2, f8
/* 803F4B54  90 A1 00 30 */	stw r5, 0x30(r1)
/* 803F4B58  EC 60 01 32 */	fmuls f3, f0, f4
/* 803F4B5C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 803F4B60  EC 42 01 32 */	fmuls f2, f2, f4
/* 803F4B64  EC 00 40 28 */	fsubs f0, f0, f8
/* 803F4B68  EC 80 01 32 */	fmuls f4, f0, f4
/* 803F4B6C  4B C6 96 AD */	bl func_8005E218
/* 803F4B70  38 00 00 08 */	li r0, 8
/* 803F4B74  38 BA 00 54 */	addi r5, r26, 0x54
/* 803F4B78  38 9F FF FC */	addi r4, r31, -4
/* 803F4B7C  7C 09 03 A6 */	mtctr r0
lbl_803F4B80:
/* 803F4B80  80 64 00 04 */	lwz r3, 4(r4)
/* 803F4B84  84 04 00 08 */	lwzu r0, 8(r4)
/* 803F4B88  90 65 00 04 */	stw r3, 4(r5)
/* 803F4B8C  94 05 00 08 */	stwu r0, 8(r5)
/* 803F4B90  42 00 FF F0 */	bdnz lbl_803F4B80
/* 803F4B94  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380007@ha */
/* 803F4B98  38 03 00 07 */	addi r0, r3, 0x0007 /* 0xDA380007@l */
/* 803F4B9C  90 1E 00 00 */	stw r0, 0(r30)
/* 803F4BA0  93 FE 00 04 */	stw r31, 4(r30)
/* 803F4BA4  3B DE 00 08 */	addi r30, r30, 8
/* 803F4BA8  48 00 00 D0 */	b lbl_803F4C78
lbl_803F4BAC:
/* 803F4BAC  57 60 07 7D */	rlwinm. r0, r27, 0, 0x1d, 0x1e
/* 803F4BB0  41 82 00 C8 */	beq lbl_803F4C78
/* 803F4BB4  80 9D 02 D4 */	lwz r4, 0x2d4(r29)
/* 803F4BB8  3C C0 43 30 */	lis r6, 0x4330
/* 803F4BBC  3C 60 80 64 */	lis r3, lit_439@ha /* 0x8064330C@ha */
/* 803F4BC0  90 C1 00 30 */	stw r6, 0x30(r1)
/* 803F4BC4  3B E4 FF C0 */	addi r31, r4, -64
/* 803F4BC8  C8 A3 33 0C */	lfd f5, lit_439@l(r3)  /* 0x8064330C@l */
/* 803F4BCC  93 FD 02 D4 */	stw r31, 0x2d4(r29)
/* 803F4BD0  38 9A 01 14 */	addi r4, r26, 0x114
/* 803F4BD4  7F E3 FB 78 */	mr r3, r31
/* 803F4BD8  93 FA 00 D8 */	stw r31, 0xd8(r26)
/* 803F4BDC  81 1A 00 0C */	lwz r8, 0xc(r26)
/* 803F4BE0  80 FA 00 10 */	lwz r7, 0x10(r26)
/* 803F4BE4  80 BA 00 04 */	lwz r5, 4(r26)
/* 803F4BE8  80 1A 00 08 */	lwz r0, 8(r26)
/* 803F4BEC  7C E8 38 50 */	subf r7, r8, r7
/* 803F4BF0  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 803F4BF4  90 C1 00 28 */	stw r6, 0x28(r1)
/* 803F4BF8  7C 05 00 50 */	subf r0, r5, r0
/* 803F4BFC  C0 3A 00 14 */	lfs f1, 0x14(r26)
/* 803F4C00  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803F4C04  90 E1 00 34 */	stw r7, 0x34(r1)
/* 803F4C08  C0 7A 00 18 */	lfs f3, 0x18(r26)
/* 803F4C0C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 803F4C10  C8 41 00 30 */	lfd f2, 0x30(r1)
/* 803F4C14  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 803F4C18  EC 42 28 28 */	fsubs f2, f2, f5
/* 803F4C1C  C0 9A 00 1C */	lfs f4, 0x1c(r26)
/* 803F4C20  EC 00 28 28 */	fsubs f0, f0, f5
/* 803F4C24  C0 BA 00 20 */	lfs f5, 0x20(r26)
/* 803F4C28  EC 42 00 24 */	fdivs f2, f2, f0
/* 803F4C2C  4B C6 97 E9 */	bl func_8005E414
/* 803F4C30  38 00 00 08 */	li r0, 8
/* 803F4C34  38 BA 00 54 */	addi r5, r26, 0x54
/* 803F4C38  38 9F FF FC */	addi r4, r31, -4
/* 803F4C3C  7C 09 03 A6 */	mtctr r0
lbl_803F4C40:
/* 803F4C40  80 64 00 04 */	lwz r3, 4(r4)
/* 803F4C44  84 04 00 08 */	lwzu r0, 8(r4)
/* 803F4C48  90 65 00 04 */	stw r3, 4(r5)
/* 803F4C4C  94 05 00 08 */	stwu r0, 8(r5)
/* 803F4C50  42 00 FF F0 */	bdnz lbl_803F4C40
/* 803F4C54  3C 00 DB 0E */	lis r0, 0xdb0e
/* 803F4C58  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380007@ha */
/* 803F4C5C  90 1E 00 00 */	stw r0, 0(r30)
/* 803F4C60  38 03 00 07 */	addi r0, r3, 0x0007 /* 0xDA380007@l */
/* 803F4C64  A0 7A 01 14 */	lhz r3, 0x114(r26)
/* 803F4C68  90 7E 00 04 */	stw r3, 4(r30)
/* 803F4C6C  90 1E 00 08 */	stw r0, 8(r30)
/* 803F4C70  93 FE 00 0C */	stw r31, 0xc(r30)
/* 803F4C74  3B DE 00 10 */	addi r30, r30, 0x10
lbl_803F4C78:
/* 803F4C78  57 60 07 FF */	clrlwi. r0, r27, 0x1f
/* 803F4C7C  41 82 00 7C */	beq lbl_803F4CF8
/* 803F4C80  80 7D 02 D4 */	lwz r3, 0x2d4(r29)
/* 803F4C84  3B 63 FF C0 */	addi r27, r3, -64
/* 803F4C88  93 7D 02 D4 */	stw r27, 0x2d4(r29)
/* 803F4C8C  7F 63 DB 78 */	mr r3, r27
/* 803F4C90  93 7A 00 DC */	stw r27, 0xdc(r26)
/* 803F4C94  C0 1A 00 44 */	lfs f0, 0x44(r26)
/* 803F4C98  D0 01 00 08 */	stfs f0, 8(r1)
/* 803F4C9C  C0 3A 00 24 */	lfs f1, 0x24(r26)
/* 803F4CA0  C0 5A 00 28 */	lfs f2, 0x28(r26)
/* 803F4CA4  C0 7A 00 2C */	lfs f3, 0x2c(r26)
/* 803F4CA8  C0 9A 00 30 */	lfs f4, 0x30(r26)
/* 803F4CAC  C0 BA 00 34 */	lfs f5, 0x34(r26)
/* 803F4CB0  C0 DA 00 38 */	lfs f6, 0x38(r26)
/* 803F4CB4  C0 FA 00 3C */	lfs f7, 0x3c(r26)
/* 803F4CB8  C1 1A 00 40 */	lfs f8, 0x40(r26)
/* 803F4CBC  4B C6 88 2D */	bl guLookAt
/* 803F4CC0  38 00 00 08 */	li r0, 8
/* 803F4CC4  38 BA 00 94 */	addi r5, r26, 0x94
/* 803F4CC8  38 9B FF FC */	addi r4, r27, -4
/* 803F4CCC  7C 09 03 A6 */	mtctr r0
lbl_803F4CD0:
/* 803F4CD0  80 64 00 04 */	lwz r3, 4(r4)
/* 803F4CD4  84 04 00 08 */	lwzu r0, 8(r4)
/* 803F4CD8  90 65 00 04 */	stw r3, 4(r5)
/* 803F4CDC  94 05 00 08 */	stwu r0, 8(r5)
/* 803F4CE0  42 00 FF F0 */	bdnz lbl_803F4CD0
/* 803F4CE4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380005@ha */
/* 803F4CE8  38 03 00 05 */	addi r0, r3, 0x0005 /* 0xDA380005@l */
/* 803F4CEC  90 1E 00 00 */	stw r0, 0(r30)
/* 803F4CF0  93 7E 00 04 */	stw r27, 4(r30)
/* 803F4CF4  3B DE 00 08 */	addi r30, r30, 8
lbl_803F4CF8:
/* 803F4CF8  38 00 00 00 */	li r0, 0
/* 803F4CFC  38 60 00 01 */	li r3, 1
/* 803F4D00  90 1A 01 18 */	stw r0, 0x118(r26)
/* 803F4D04  93 DC 00 00 */	stw r30, 0(r28)
/* 803F4D08  39 61 00 50 */	addi r11, r1, 0x50
/* 803F4D0C  4B CA 62 09 */	bl func_8009AF14
/* 803F4D10  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803F4D14  7C 08 03 A6 */	mtlr r0
/* 803F4D18  38 21 00 50 */	addi r1, r1, 0x50
/* 803F4D1C  4E 80 00 20 */	blr 
