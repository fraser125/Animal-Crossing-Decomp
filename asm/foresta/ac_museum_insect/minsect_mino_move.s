lbl_80467A5C:
/* 80467A5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80467A60  7C 08 02 A6 */	mflr r0
/* 80467A64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80467A68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80467A6C  7C 7F 1B 78 */	mr r31, r3
/* 80467A70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80467A74  7C 9E 23 78 */	mr r30, r4
/* 80467A78  A8 63 00 6E */	lha r3, 0x6e(r3)
/* 80467A7C  38 03 FF FF */	addi r0, r3, -1
/* 80467A80  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 80467A84  A8 BF 00 8C */	lha r5, 0x8c(r31)
/* 80467A88  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 80467A8C  41 82 01 88 */	beq lbl_80467C14
/* 80467A90  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80467A94  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80467A98  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80467A9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80467AA0  40 80 00 74 */	bge lbl_80467B14
/* 80467AA4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80467AA8  3C 60 80 64 */	lis r3, mino_bottom_pos@ha /* 0x80644824@ha */
/* 80467AAC  3C 80 80 64 */	lis r4, lit_586@ha /* 0x80644634@ha */
/* 80467AB0  EC 40 08 2A */	fadds f2, f0, f1
/* 80467AB4  38 63 48 24 */	addi r3, r3, mino_bottom_pos@l /* 0x80644824@l */
/* 80467AB8  C0 24 46 34 */	lfs f1, lit_586@l(r4)  /* 0x80644634@l */
/* 80467ABC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80467AC0  D0 5F 00 20 */	stfs f2, 0x20(r31)
/* 80467AC4  EC 01 00 2A */	fadds f0, f1, f0
/* 80467AC8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80467ACC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80467AD0  40 80 01 04 */	bge lbl_80467BD4
/* 80467AD4  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 80467AD8  60 00 00 08 */	ori r0, r0, 8
/* 80467ADC  B0 1F 00 8C */	sth r0, 0x8c(r31)
/* 80467AE0  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 80467AE4  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80467AE8  B0 1F 00 8C */	sth r0, 0x8c(r31)
/* 80467AEC  4B BF 52 09 */	bl fqrand
/* 80467AF0  3C 60 80 64 */	lis r3, lit_762@ha /* 0x80644664@ha */
/* 80467AF4  C0 03 46 64 */	lfs f0, lit_762@l(r3)  /* 0x80644664@l */
/* 80467AF8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80467AFC  FC 00 00 1E */	fctiwz f0, f0
/* 80467B00  D8 01 00 08 */	stfd f0, 8(r1)
/* 80467B04  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80467B08  38 03 00 28 */	addi r0, r3, 0x28
/* 80467B0C  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 80467B10  48 00 00 C4 */	b lbl_80467BD4
lbl_80467B14:
/* 80467B14  54 A0 06 F7 */	rlwinm. r0, r5, 0, 0x1b, 0x1b
/* 80467B18  41 82 00 9C */	beq lbl_80467BB4
/* 80467B1C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80467B20  3C 80 80 64 */	lis r4, mino_top_pos@ha /* 0x80644818@ha */
/* 80467B24  3C 60 80 64 */	lis r3, lit_586@ha /* 0x80644634@ha */
/* 80467B28  EC 40 08 2A */	fadds f2, f0, f1
/* 80467B2C  38 84 48 18 */	addi r4, r4, mino_top_pos@l /* 0x80644818@l */
/* 80467B30  C0 24 00 04 */	lfs f1, 4(r4)
/* 80467B34  C0 03 46 34 */	lfs f0, lit_586@l(r3)  /* 0x80644634@l */
/* 80467B38  D0 5F 00 20 */	stfs f2, 0x20(r31)
/* 80467B3C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80467B40  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80467B44  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80467B48  40 81 00 44 */	ble lbl_80467B8C
/* 80467B4C  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 80467B50  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 80467B54  60 00 00 04 */	ori r0, r0, 4
/* 80467B58  B0 1F 00 8C */	sth r0, 0x8c(r31)
/* 80467B5C  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 80467B60  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80467B64  B0 1F 00 8C */	sth r0, 0x8c(r31)
/* 80467B68  4B BF 51 8D */	bl fqrand
/* 80467B6C  3C 60 80 64 */	lis r3, lit_762@ha /* 0x80644664@ha */
/* 80467B70  C0 03 46 64 */	lfs f0, lit_762@l(r3)  /* 0x80644664@l */
/* 80467B74  EC 00 00 72 */	fmuls f0, f0, f1
/* 80467B78  FC 00 00 1E */	fctiwz f0, f0
/* 80467B7C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80467B80  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80467B84  38 03 00 28 */	addi r0, r3, 0x28
/* 80467B88  B0 1F 00 6E */	sth r0, 0x6e(r31)
lbl_80467B8C:
/* 80467B8C  A8 9F 00 6E */	lha r4, 0x6e(r31)
/* 80467B90  38 60 00 0C */	li r3, 0xc
/* 80467B94  7C 04 1B D6 */	divw r0, r4, r3
/* 80467B98  7C 00 19 D6 */	mullw r0, r0, r3
/* 80467B9C  7C 00 20 51 */	subf. r0, r0, r4
/* 80467BA0  40 82 00 34 */	bne lbl_80467BD4
/* 80467BA4  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 80467BA8  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80467BAC  B0 1F 00 8C */	sth r0, 0x8c(r31)
/* 80467BB0  48 00 00 24 */	b lbl_80467BD4
lbl_80467BB4:
/* 80467BB4  A8 9F 00 6E */	lha r4, 0x6e(r31)
/* 80467BB8  38 60 00 0C */	li r3, 0xc
/* 80467BBC  7C 04 1B D6 */	divw r0, r4, r3
/* 80467BC0  7C 00 19 D6 */	mullw r0, r0, r3
/* 80467BC4  7C 00 20 51 */	subf. r0, r0, r4
/* 80467BC8  40 82 00 0C */	bne lbl_80467BD4
/* 80467BCC  60 A0 00 10 */	ori r0, r5, 0x10
/* 80467BD0  B0 1F 00 8C */	sth r0, 0x8c(r31)
lbl_80467BD4:
/* 80467BD4  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 80467BD8  2C 00 00 00 */	cmpwi r0, 0
/* 80467BDC  40 80 01 BC */	bge lbl_80467D98
/* 80467BE0  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 80467BE4  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80467BE8  B0 1F 00 8C */	sth r0, 0x8c(r31)
/* 80467BEC  4B BF 51 09 */	bl fqrand
/* 80467BF0  3C 60 80 64 */	lis r3, lit_762@ha /* 0x80644664@ha */
/* 80467BF4  C0 03 46 64 */	lfs f0, lit_762@l(r3)  /* 0x80644664@l */
/* 80467BF8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80467BFC  FC 00 00 1E */	fctiwz f0, f0
/* 80467C00  D8 01 00 08 */	stfd f0, 8(r1)
/* 80467C04  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80467C08  38 03 00 28 */	addi r0, r3, 0x28
/* 80467C0C  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 80467C10  48 00 01 88 */	b lbl_80467D98
lbl_80467C14:
/* 80467C14  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 80467C18  2C 00 00 00 */	cmpwi r0, 0
/* 80467C1C  40 80 01 7C */	bge lbl_80467D98
/* 80467C20  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 80467C24  41 82 00 60 */	beq lbl_80467C84
/* 80467C28  4B BF 50 CD */	bl fqrand
/* 80467C2C  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 80467C30  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 80467C34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80467C38  40 81 00 18 */	ble lbl_80467C50
/* 80467C3C  7F E3 FB 78 */	mr r3, r31
/* 80467C40  7F C5 F3 78 */	mr r5, r30
/* 80467C44  38 80 00 03 */	li r4, 3
/* 80467C48  48 00 09 ED */	bl minsect_mino_setupAction
/* 80467C4C  48 00 01 4C */	b lbl_80467D98
lbl_80467C50:
/* 80467C50  4B BF 50 A5 */	bl fqrand
/* 80467C54  3C 80 80 64 */	lis r4, lit_503@ha /* 0x806445DC@ha */
/* 80467C58  3C 60 80 64 */	lis r3, lit_3373@ha /* 0x8064483C@ha */
/* 80467C5C  C0 44 45 DC */	lfs f2, lit_503@l(r4)  /* 0x806445DC@l */
/* 80467C60  C0 03 48 3C */	lfs f0, lit_3373@l(r3)  /* 0x8064483C@l */
/* 80467C64  EC 22 00 72 */	fmuls f1, f2, f1
/* 80467C68  FC 20 08 1E */	fctiwz f1, f1
/* 80467C6C  D8 21 00 08 */	stfd f1, 8(r1)
/* 80467C70  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80467C74  38 03 00 28 */	addi r0, r3, 0x28
/* 80467C78  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 80467C7C  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80467C80  48 00 01 00 */	b lbl_80467D80
lbl_80467C84:
/* 80467C84  54 A0 07 39 */	rlwinm. r0, r5, 0, 0x1c, 0x1c
/* 80467C88  40 82 00 18 */	bne lbl_80467CA0
/* 80467C8C  4B BF 50 69 */	bl fqrand
/* 80467C90  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 80467C94  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 80467C98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80467C9C  40 81 00 8C */	ble lbl_80467D28
lbl_80467CA0:
/* 80467CA0  4B BF 50 55 */	bl fqrand
/* 80467CA4  3C 60 80 64 */	lis r3, lit_1461@ha /* 0x80644744@ha */
/* 80467CA8  C0 03 47 44 */	lfs f0, lit_1461@l(r3)  /* 0x80644744@l */
/* 80467CAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80467CB0  40 81 00 18 */	ble lbl_80467CC8
/* 80467CB4  7F E3 FB 78 */	mr r3, r31
/* 80467CB8  7F C5 F3 78 */	mr r5, r30
/* 80467CBC  38 80 00 02 */	li r4, 2
/* 80467CC0  48 00 09 75 */	bl minsect_mino_setupAction
/* 80467CC4  48 00 00 D4 */	b lbl_80467D98
lbl_80467CC8:
/* 80467CC8  4B BF 50 2D */	bl fqrand
/* 80467CCC  3C 60 80 64 */	lis r3, lit_503@ha /* 0x806445DC@ha */
/* 80467CD0  3C 80 80 64 */	lis r4, lit_3259@ha /* 0x80644830@ha */
/* 80467CD4  38 A3 45 DC */	addi r5, r3, lit_503@l /* 0x806445DC@l */
/* 80467CD8  C0 44 48 30 */	lfs f2, lit_3259@l(r4)  /* 0x80644830@l */
/* 80467CDC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80467CE0  3C 60 80 64 */	lis r3, lit_502@ha /* 0x806445D8@ha */
/* 80467CE4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80467CE8  C0 03 45 D8 */	lfs f0, lit_502@l(r3)  /* 0x806445D8@l */
/* 80467CEC  FC 20 08 1E */	fctiwz f1, f1
/* 80467CF0  D8 21 00 08 */	stfd f1, 8(r1)
/* 80467CF4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80467CF8  38 03 00 32 */	addi r0, r3, 0x32
/* 80467CFC  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 80467D00  D0 5F 00 40 */	stfs f2, 0x40(r31)
/* 80467D04  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 80467D08  60 00 00 10 */	ori r0, r0, 0x10
/* 80467D0C  B0 1F 00 8C */	sth r0, 0x8c(r31)
/* 80467D10  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80467D14  EC 01 00 2A */	fadds f0, f1, f0
/* 80467D18  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 80467D1C  A8 1F 00 78 */	lha r0, 0x78(r31)
/* 80467D20  B0 1F 00 7E */	sth r0, 0x7e(r31)
/* 80467D24  48 00 00 5C */	b lbl_80467D80
lbl_80467D28:
/* 80467D28  4B BF 4F CD */	bl fqrand
/* 80467D2C  3C 60 80 64 */	lis r3, lit_1525@ha /* 0x80644750@ha */
/* 80467D30  C0 03 47 50 */	lfs f0, lit_1525@l(r3)  /* 0x80644750@l */
/* 80467D34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80467D38  40 81 00 18 */	ble lbl_80467D50
/* 80467D3C  7F E3 FB 78 */	mr r3, r31
/* 80467D40  7F C5 F3 78 */	mr r5, r30
/* 80467D44  38 80 00 00 */	li r4, 0
/* 80467D48  48 00 08 ED */	bl minsect_mino_setupAction
/* 80467D4C  48 00 00 34 */	b lbl_80467D80
lbl_80467D50:
/* 80467D50  4B BF 4F A5 */	bl fqrand
/* 80467D54  3C 80 80 64 */	lis r4, lit_503@ha /* 0x806445DC@ha */
/* 80467D58  3C 60 80 64 */	lis r3, lit_3373@ha /* 0x8064483C@ha */
/* 80467D5C  C0 44 45 DC */	lfs f2, lit_503@l(r4)  /* 0x806445DC@l */
/* 80467D60  C0 03 48 3C */	lfs f0, lit_3373@l(r3)  /* 0x8064483C@l */
/* 80467D64  EC 22 00 72 */	fmuls f1, f2, f1
/* 80467D68  FC 20 08 1E */	fctiwz f1, f1
/* 80467D6C  D8 21 00 08 */	stfd f1, 8(r1)
/* 80467D70  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80467D74  38 03 00 28 */	addi r0, r3, 0x28
/* 80467D78  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 80467D7C  D0 1F 00 40 */	stfs f0, 0x40(r31)
lbl_80467D80:
/* 80467D80  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 80467D84  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 80467D88  B0 1F 00 8C */	sth r0, 0x8c(r31)
/* 80467D8C  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 80467D90  60 00 00 02 */	ori r0, r0, 2
/* 80467D94  B0 1F 00 8C */	sth r0, 0x8c(r31)
lbl_80467D98:
/* 80467D98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80467D9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80467DA0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80467DA4  7C 08 03 A6 */	mtlr r0
/* 80467DA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80467DAC  4E 80 00 20 */	blr 
