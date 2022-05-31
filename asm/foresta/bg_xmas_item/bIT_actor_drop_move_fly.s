lbl_804C9B8C:
/* 804C9B8C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804C9B90  7C 08 02 A6 */	mflr r0
/* 804C9B94  90 01 00 64 */	stw r0, 0x64(r1)
/* 804C9B98  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804C9B9C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804C9BA0  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 804C9BA4  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 804C9BA8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804C9BAC  7C 7F 1B 78 */	mr r31, r3
/* 804C9BB0  3C 00 43 30 */	lis r0, 0x4330
/* 804C9BB4  A8 A3 00 50 */	lha r5, 0x50(r3)
/* 804C9BB8  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806461FC@ha */
/* 804C9BBC  38 83 61 FC */	addi r4, r3, lit_770@l /* 0x806461FC@l */
/* 804C9BC0  A8 DF 00 8A */	lha r6, 0x8a(r31)
/* 804C9BC4  6C A3 80 00 */	xoris r3, r5, 0x8000
/* 804C9BC8  90 01 00 20 */	stw r0, 0x20(r1)
/* 804C9BCC  C8 24 00 00 */	lfd f1, 0(r4)
/* 804C9BD0  7C C0 07 35 */	extsh. r0, r6
/* 804C9BD4  90 61 00 24 */	stw r3, 0x24(r1)
/* 804C9BD8  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804C9BDC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804C9BE0  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C9BE4  EF E2 00 24 */	fdivs f31, f2, f0
/* 804C9BE8  40 81 00 48 */	ble lbl_804C9C30
/* 804C9BEC  2C 06 00 01 */	cmpwi r6, 1
/* 804C9BF0  40 82 00 34 */	bne lbl_804C9C24
/* 804C9BF4  A0 7F 00 6C */	lhz r3, 0x6c(r31)
/* 804C9BF8  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 804C9BFC  41 82 00 14 */	beq lbl_804C9C10
/* 804C9C00  38 9F 00 14 */	addi r4, r31, 0x14
/* 804C9C04  38 60 04 3D */	li r3, 0x43d
/* 804C9C08  48 16 43 A1 */	bl sAdo_OngenTrgStart
/* 804C9C0C  48 00 00 18 */	b lbl_804C9C24
lbl_804C9C10:
/* 804C9C10  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 804C9C14  41 82 00 10 */	beq lbl_804C9C24
/* 804C9C18  38 9F 00 14 */	addi r4, r31, 0x14
/* 804C9C1C  38 60 04 0C */	li r3, 0x40c
/* 804C9C20  48 16 43 89 */	bl sAdo_OngenTrgStart
lbl_804C9C24:
/* 804C9C24  A8 7F 00 8A */	lha r3, 0x8a(r31)
/* 804C9C28  38 03 FF FF */	addi r0, r3, -1
/* 804C9C2C  B0 1F 00 8A */	sth r0, 0x8a(r31)
lbl_804C9C30:
/* 804C9C30  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C9C34  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804C9C38  41 82 00 94 */	beq lbl_804C9CCC
/* 804C9C3C  3C 80 80 64 */	lis r4, lit_1855@ha /* 0x80646258@ha */
/* 804C9C40  3C 00 43 30 */	lis r0, 0x4330
/* 804C9C44  C0 44 62 58 */	lfs f2, lit_1855@l(r4)  /* 0x80646258@l */
/* 804C9C48  3C 60 80 64 */	lis r3, lit_1857@ha /* 0x80646260@ha */
/* 804C9C4C  38 83 62 60 */	addi r4, r3, lit_1857@l /* 0x80646260@l */
/* 804C9C50  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 804C9C54  EC A2 07 F2 */	fmuls f5, f2, f31
/* 804C9C58  C0 04 00 00 */	lfs f0, 0(r4)
/* 804C9C5C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 804C9C60  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806461FC@ha */
/* 804C9C64  90 01 00 28 */	stw r0, 0x28(r1)
/* 804C9C68  EC 00 01 72 */	fmuls f0, f0, f5
/* 804C9C6C  EC 83 08 28 */	fsubs f4, f3, f1
/* 804C9C70  C0 7F 00 84 */	lfs f3, 0x84(r31)
/* 804C9C74  C8 23 61 FC */	lfd f1, lit_770@l(r3)  /* 0x806461FC@l */
/* 804C9C78  FC 00 00 1E */	fctiwz f0, f0
/* 804C9C7C  FC 80 22 10 */	fabs f4, f4
/* 804C9C80  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804C9C84  FC 00 20 18 */	frsp f0, f4
/* 804C9C88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C9C8C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C9C90  EF C0 18 24 */	fdivs f30, f0, f3
/* 804C9C94  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804C9C98  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804C9C9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C9CA0  EC 02 00 32 */	fmuls f0, f2, f0
/* 804C9CA4  EC 05 00 28 */	fsubs f0, f5, f0
/* 804C9CA8  FC 00 00 1E */	fctiwz f0, f0
/* 804C9CAC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804C9CB0  80 61 00 34 */	lwz r3, 0x34(r1)
/* 804C9CB4  4B EF 0E 3D */	bl sin_s
/* 804C9CB8  3C 60 80 64 */	lis r3, lit_1856@ha /* 0x8064625C@ha */
/* 804C9CBC  C0 03 62 5C */	lfs f0, lit_1856@l(r3)  /* 0x8064625C@l */
/* 804C9CC0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804C9CC4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 804C9CC8  D0 1F 00 38 */	stfs f0, 0x38(r31)
lbl_804C9CCC:
/* 804C9CCC  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C9CD0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C9CD4  41 82 00 3C */	beq lbl_804C9D10
/* 804C9CD8  3C 60 80 64 */	lis r3, lit_845@ha /* 0x80646204@ha */
/* 804C9CDC  3C 80 80 64 */	lis r4, lit_1859@ha /* 0x80646268@ha */
/* 804C9CE0  C0 23 62 04 */	lfs f1, lit_845@l(r3)  /* 0x80646204@l */
/* 804C9CE4  3C A0 80 64 */	lis r5, lit_1858@ha /* 0x80646264@ha */
/* 804C9CE8  C0 44 62 68 */	lfs f2, lit_1859@l(r4)  /* 0x80646268@l */
/* 804C9CEC  EC 01 F8 28 */	fsubs f0, f1, f31
/* 804C9CF0  C0 65 62 64 */	lfs f3, lit_1858@l(r5)  /* 0x80646264@l */
/* 804C9CF4  EC 00 00 32 */	fmuls f0, f0, f0
/* 804C9CF8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804C9CFC  EC 02 00 32 */	fmuls f0, f2, f0
/* 804C9D00  EC 03 00 2A */	fadds f0, f3, f0
/* 804C9D04  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 804C9D08  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 804C9D0C  D0 1F 00 34 */	stfs f0, 0x34(r31)
lbl_804C9D10:
/* 804C9D10  A8 7F 00 5C */	lha r3, 0x5c(r31)
/* 804C9D14  4B EF 0D DD */	bl sin_s
/* 804C9D18  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804C9D1C  A8 7F 00 5C */	lha r3, 0x5c(r31)
/* 804C9D20  EF E0 00 72 */	fmuls f31, f0, f1
/* 804C9D24  4B EF 0D 79 */	bl cos_s
/* 804C9D28  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 804C9D2C  3C 60 80 64 */	lis r3, lit_1004@ha /* 0x8064621C@ha */
/* 804C9D30  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804C9D34  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 804C9D38  EC 02 00 32 */	fmuls f0, f2, f0
/* 804C9D3C  C0 43 62 1C */	lfs f2, lit_1004@l(r3)  /* 0x8064621C@l */
/* 804C9D40  EC 83 00 72 */	fmuls f4, f3, f1
/* 804C9D44  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804C9D48  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804C9D4C  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 804C9D50  EC 1F 00 32 */	fmuls f0, f31, f0
/* 804C9D54  EC 01 00 2A */	fadds f0, f1, f0
/* 804C9D58  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 804C9D5C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 804C9D60  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 804C9D64  EC 02 00 32 */	fmuls f0, f2, f0
/* 804C9D68  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 804C9D6C  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 804C9D70  EC 21 00 F2 */	fmuls f1, f1, f3
/* 804C9D74  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804C9D78  EC 22 08 2A */	fadds f1, f2, f1
/* 804C9D7C  EC 03 00 32 */	fmuls f0, f3, f0
/* 804C9D80  EC 01 00 2A */	fadds f0, f1, f0
/* 804C9D84  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 804C9D88  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804C9D8C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 804C9D90  EC 04 00 32 */	fmuls f0, f4, f0
/* 804C9D94  EC 01 00 2A */	fadds f0, f1, f0
/* 804C9D98  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 804C9D9C  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C9DA0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804C9DA4  41 82 00 68 */	beq lbl_804C9E0C
/* 804C9DA8  A0 9F 00 78 */	lhz r4, 0x78(r31)
/* 804C9DAC  3C 00 43 30 */	lis r0, 0x4330
/* 804C9DB0  3C 60 80 64 */	lis r3, lit_1524@ha /* 0x8064622C@ha */
/* 804C9DB4  90 01 00 30 */	stw r0, 0x30(r1)
/* 804C9DB8  C8 23 62 2C */	lfd f1, lit_1524@l(r3)  /* 0x8064622C@l */
/* 804C9DBC  90 81 00 34 */	stw r4, 0x34(r1)
/* 804C9DC0  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804C9DC4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804C9DC8  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C9DCC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804C9DD0  40 81 00 3C */	ble lbl_804C9E0C
/* 804C9DD4  A0 1F 00 76 */	lhz r0, 0x76(r31)
/* 804C9DD8  28 00 00 FF */	cmplwi r0, 0xff
/* 804C9DDC  41 81 00 20 */	bgt lbl_804C9DFC
/* 804C9DE0  20 00 00 FF */	subfic r0, r0, 0xff
/* 804C9DE4  98 1F 00 72 */	stb r0, 0x72(r31)
/* 804C9DE8  A0 7F 00 76 */	lhz r3, 0x76(r31)
/* 804C9DEC  A8 1F 00 70 */	lha r0, 0x70(r31)
/* 804C9DF0  7C 03 02 14 */	add r0, r3, r0
/* 804C9DF4  B0 1F 00 76 */	sth r0, 0x76(r31)
/* 804C9DF8  48 00 00 14 */	b lbl_804C9E0C
lbl_804C9DFC:
/* 804C9DFC  38 00 00 00 */	li r0, 0
/* 804C9E00  98 1F 00 72 */	stb r0, 0x72(r31)
/* 804C9E04  90 1F 00 00 */	stw r0, 0(r31)
/* 804C9E08  90 1F 00 04 */	stw r0, 4(r31)
lbl_804C9E0C:
/* 804C9E0C  A0 7F 00 6C */	lhz r3, 0x6c(r31)
/* 804C9E10  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 804C9E14  41 82 00 28 */	beq lbl_804C9E3C
/* 804C9E18  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 804C9E1C  41 82 00 14 */	beq lbl_804C9E30
/* 804C9E20  A8 7F 00 48 */	lha r3, 0x48(r31)
/* 804C9E24  38 03 FE DD */	addi r0, r3, -291
/* 804C9E28  B0 1F 00 48 */	sth r0, 0x48(r31)
/* 804C9E2C  48 00 00 10 */	b lbl_804C9E3C
lbl_804C9E30:
/* 804C9E30  A8 7F 00 48 */	lha r3, 0x48(r31)
/* 804C9E34  38 03 01 23 */	addi r0, r3, 0x123
/* 804C9E38  B0 1F 00 48 */	sth r0, 0x48(r31)
lbl_804C9E3C:
/* 804C9E3C  A8 9F 00 50 */	lha r4, 0x50(r31)
/* 804C9E40  3C 00 43 30 */	lis r0, 0x4330
/* 804C9E44  90 01 00 30 */	stw r0, 0x30(r1)
/* 804C9E48  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806461FC@ha */
/* 804C9E4C  38 04 FF FF */	addi r0, r4, -1
/* 804C9E50  C8 23 61 FC */	lfd f1, lit_770@l(r3)  /* 0x806461FC@l */
/* 804C9E54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C9E58  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804C9E5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C9E60  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804C9E64  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C9E68  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 804C9E6C  40 82 00 8C */	bne lbl_804C9EF8
/* 804C9E70  A0 7F 00 6C */	lhz r3, 0x6c(r31)
/* 804C9E74  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 804C9E78  41 82 00 80 */	beq lbl_804C9EF8
/* 804C9E7C  54 60 04 E2 */	rlwinm r0, r3, 0, 0x13, 0x11
/* 804C9E80  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 804C9E84  A0 9F 00 6C */	lhz r4, 0x6c(r31)
/* 804C9E88  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 804C9E8C  40 82 00 6C */	bne lbl_804C9EF8
/* 804C9E90  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804C9E94  28 03 28 00 */	cmplwi r3, 0x2800
/* 804C9E98  41 82 00 1C */	beq lbl_804C9EB4
/* 804C9E9C  38 03 D7 FF */	addi r0, r3, -10241
/* 804C9EA0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804C9EA4  28 00 00 03 */	cmplwi r0, 3
/* 804C9EA8  40 81 00 0C */	ble lbl_804C9EB4
/* 804C9EAC  28 03 28 07 */	cmplwi r3, 0x2807
/* 804C9EB0  40 82 00 14 */	bne lbl_804C9EC4
lbl_804C9EB4:
/* 804C9EB4  38 9F 00 14 */	addi r4, r31, 0x14
/* 804C9EB8  38 60 01 27 */	li r3, 0x127
/* 804C9EBC  48 16 40 ED */	bl sAdo_OngenTrgStart
/* 804C9EC0  48 00 00 38 */	b lbl_804C9EF8
lbl_804C9EC4:
/* 804C9EC4  28 03 21 00 */	cmplwi r3, 0x2100
/* 804C9EC8  41 80 00 1C */	blt lbl_804C9EE4
/* 804C9ECC  28 03 21 04 */	cmplwi r3, 0x2104
/* 804C9ED0  41 81 00 14 */	bgt lbl_804C9EE4
/* 804C9ED4  38 9F 00 14 */	addi r4, r31, 0x14
/* 804C9ED8  38 60 04 44 */	li r3, 0x444
/* 804C9EDC  48 16 40 CD */	bl sAdo_OngenTrgStart
/* 804C9EE0  48 00 00 18 */	b lbl_804C9EF8
lbl_804C9EE4:
/* 804C9EE4  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 804C9EE8  40 82 00 10 */	bne lbl_804C9EF8
/* 804C9EEC  38 9F 00 14 */	addi r4, r31, 0x14
/* 804C9EF0  38 60 01 28 */	li r3, 0x128
/* 804C9EF4  48 16 40 B5 */	bl sAdo_OngenTrgStart
lbl_804C9EF8:
/* 804C9EF8  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C9EFC  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804C9F00  41 82 00 38 */	beq lbl_804C9F38
/* 804C9F04  A8 9F 00 50 */	lha r4, 0x50(r31)
/* 804C9F08  3C 00 43 30 */	lis r0, 0x4330
/* 804C9F0C  90 01 00 30 */	stw r0, 0x30(r1)
/* 804C9F10  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806461FC@ha */
/* 804C9F14  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804C9F18  C8 23 61 FC */	lfd f1, lit_770@l(r3)  /* 0x806461FC@l */
/* 804C9F1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C9F20  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804C9F24  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804C9F28  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C9F2C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804C9F30  4C 41 13 82 */	cror 2, 1, 2
/* 804C9F34  41 82 00 2C */	beq lbl_804C9F60
lbl_804C9F38:
/* 804C9F38  3C 60 80 64 */	lis r3, data_806461DC@ha /* 0x806461DC@ha */
/* 804C9F3C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 804C9F40  C0 03 61 DC */	lfs f0, data_806461DC@l(r3)  /* 0x806461DC@l */
/* 804C9F44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C9F48  40 80 01 9C */	bge lbl_804CA0E4
/* 804C9F4C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 804C9F50  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 804C9F54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C9F58  4C 40 13 82 */	cror 2, 0, 2
/* 804C9F5C  40 82 01 88 */	bne lbl_804CA0E4
lbl_804C9F60:
/* 804C9F60  38 7F 00 14 */	addi r3, r31, 0x14
/* 804C9F64  38 9F 00 20 */	addi r4, r31, 0x20
/* 804C9F68  4B EF 0F 55 */	bl xyz_t_move
/* 804C9F6C  A0 7F 00 6C */	lhz r3, 0x6c(r31)
/* 804C9F70  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 804C9F74  41 82 00 10 */	beq lbl_804C9F84
/* 804C9F78  7F E3 FB 78 */	mr r3, r31
/* 804C9F7C  4B FF FA BD */	bl bIT_actor_drop_move_bury_change
/* 804C9F80  48 00 01 78 */	b lbl_804CA0F8
lbl_804C9F84:
/* 804C9F84  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 804C9F88  2C 00 00 00 */	cmpwi r0, 0
/* 804C9F8C  41 82 00 F0 */	beq lbl_804CA07C
/* 804C9F90  54 60 04 3C */	rlwinm r0, r3, 0, 0x10, 0x1e
/* 804C9F94  38 7F 00 14 */	addi r3, r31, 0x14
/* 804C9F98  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 804C9F9C  38 9F 00 20 */	addi r4, r31, 0x20
/* 804C9FA0  4B EF 0F 1D */	bl xyz_t_move
/* 804C9FA4  3C 60 80 64 */	lis r3, data_806461DC@ha /* 0x806461DC@ha */
/* 804C9FA8  3C 00 43 30 */	lis r0, 0x4330
/* 804C9FAC  38 83 61 DC */	addi r4, r3, data_806461DC@l /* 0x806461DC@l */
/* 804C9FB0  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806461FC@ha */
/* 804C9FB4  C0 04 00 00 */	lfs f0, 0(r4)
/* 804C9FB8  38 83 61 FC */	addi r4, r3, lit_770@l /* 0x806461FC@l */
/* 804C9FBC  90 01 00 30 */	stw r0, 0x30(r1)
/* 804C9FC0  38 7F 00 94 */	addi r3, r31, 0x94
/* 804C9FC4  C8 44 00 00 */	lfd f2, 0(r4)
/* 804C9FC8  38 9F 00 14 */	addi r4, r31, 0x14
/* 804C9FCC  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804C9FD0  A8 1F 00 50 */	lha r0, 0x50(r31)
/* 804C9FD4  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 804C9FD8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C9FDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C9FE0  C8 21 00 30 */	lfd f1, 0x30(r1)
/* 804C9FE4  EC 21 10 28 */	fsubs f1, f1, f2
/* 804C9FE8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C9FEC  FC 00 00 1E */	fctiwz f0, f0
/* 804C9FF0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804C9FF4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804C9FF8  B0 1F 00 50 */	sth r0, 0x50(r31)
/* 804C9FFC  4B EF 0E C1 */	bl xyz_t_move
/* 804CA000  A8 7F 00 50 */	lha r3, 0x50(r31)
/* 804CA004  3C 00 43 30 */	lis r0, 0x4330
/* 804CA008  3C A0 80 64 */	lis r5, data_806461DC@ha /* 0x806461DC@ha */
/* 804CA00C  3C 80 80 64 */	lis r4, lit_770@ha /* 0x806461FC@ha */
/* 804CA010  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804CA014  90 01 00 20 */	stw r0, 0x20(r1)
/* 804CA018  38 C5 61 DC */	addi r6, r5, data_806461DC@l /* 0x806461DC@l */
/* 804CA01C  38 A4 61 FC */	addi r5, r4, lit_770@l /* 0x806461FC@l */
/* 804CA020  90 61 00 24 */	stw r3, 0x24(r1)
/* 804CA024  38 61 00 0C */	addi r3, r1, 0xc
/* 804CA028  C0 26 00 00 */	lfs f1, 0(r6)
/* 804CA02C  38 81 00 08 */	addi r4, r1, 8
/* 804CA030  C8 65 00 00 */	lfd f3, 0(r5)
/* 804CA034  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804CA038  FC 40 08 90 */	fmr f2, f1
/* 804CA03C  C0 9F 00 68 */	lfs f4, 0x68(r31)
/* 804CA040  EC 60 18 28 */	fsubs f3, f0, f3
/* 804CA044  4B FF DB 71 */	bl func_calc_spec_drop_time
/* 804CA048  C0 01 00 08 */	lfs f0, 8(r1)
/* 804CA04C  3C 60 80 64 */	lis r3, lit_845@ha /* 0x80646204@ha */
/* 804CA050  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804CA054  C0 03 62 04 */	lfs f0, lit_845@l(r3)  /* 0x80646204@l */
/* 804CA058  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804CA05C  D0 3F 00 A0 */	stfs f1, 0xa0(r31)
/* 804CA060  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 804CA064  D0 3F 00 A4 */	stfs f1, 0xa4(r31)
/* 804CA068  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 804CA06C  A8 7F 00 6E */	lha r3, 0x6e(r31)
/* 804CA070  38 03 FF FF */	addi r0, r3, -1
/* 804CA074  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 804CA078  48 00 00 80 */	b lbl_804CA0F8
lbl_804CA07C:
/* 804CA07C  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 804CA080  28 00 00 62 */	cmplwi r0, 0x62
/* 804CA084  40 82 00 1C */	bne lbl_804CA0A0
/* 804CA088  38 00 00 01 */	li r0, 1
/* 804CA08C  3C 60 80 4D */	lis r3, bIT_actor_drop_wait_bee@ha /* 0x804C9AB8@ha */
/* 804CA090  B0 1F 00 90 */	sth r0, 0x90(r31)
/* 804CA094  38 03 9A B8 */	addi r0, r3, bIT_actor_drop_wait_bee@l /* 0x804C9AB8@l */
/* 804CA098  90 1F 00 00 */	stw r0, 0(r31)
/* 804CA09C  48 00 00 5C */	b lbl_804CA0F8
lbl_804CA0A0:
/* 804CA0A0  38 00 00 00 */	li r0, 0
/* 804CA0A4  90 1F 00 00 */	stw r0, 0(r31)
/* 804CA0A8  90 1F 00 04 */	stw r0, 4(r31)
/* 804CA0AC  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804CA0B0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804CA0B4  40 82 00 44 */	bne lbl_804CA0F8
/* 804CA0B8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 804CA0BC  38 81 00 10 */	addi r4, r1, 0x10
/* 804CA0C0  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 804CA0C4  38 A0 00 01 */	li r5, 1
/* 804CA0C8  90 61 00 10 */	stw r3, 0x10(r1)
/* 804CA0CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CA0D0  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 804CA0D4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804CA0D8  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804CA0DC  4B ED D7 55 */	bl mFI_SetFG_common
/* 804CA0E0  48 00 00 18 */	b lbl_804CA0F8
lbl_804CA0E4:
/* 804CA0E4  3C 60 80 64 */	lis r3, lit_1004@ha /* 0x8064621C@ha */
/* 804CA0E8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 804CA0EC  C0 03 62 1C */	lfs f0, lit_1004@l(r3)  /* 0x8064621C@l */
/* 804CA0F0  EC 01 00 2A */	fadds f0, f1, f0
/* 804CA0F4  D0 1F 00 4C */	stfs f0, 0x4c(r31)
lbl_804CA0F8:
/* 804CA0F8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804CA0FC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804CA100  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 804CA104  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 804CA108  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804CA10C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804CA110  7C 08 03 A6 */	mtlr r0
/* 804CA114  38 21 00 60 */	addi r1, r1, 0x60
/* 804CA118  4E 80 00 20 */	blr 
