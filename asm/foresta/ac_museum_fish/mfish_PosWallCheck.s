lbl_80431AF8:
/* 80431AF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80431AFC  3C A0 80 68 */	lis r5, suisou_pos@ha /* 0x80684E7C@ha */
/* 80431B00  38 05 4E 7C */	addi r0, r5, suisou_pos@l /* 0x80684E7C@l */
/* 80431B04  39 00 00 00 */	li r8, 0
/* 80431B08  A8 C3 06 30 */	lha r6, 0x630(r3)
/* 80431B0C  1C A6 00 0C */	mulli r5, r6, 0xc
/* 80431B10  2C 06 00 04 */	cmpwi r6, 4
/* 80431B14  7C E0 2A 14 */	add r7, r0, r5
/* 80431B18  80 C7 00 00 */	lwz r6, 0(r7)
/* 80431B1C  80 A7 00 04 */	lwz r5, 4(r7)
/* 80431B20  80 07 00 08 */	lwz r0, 8(r7)
/* 80431B24  90 C1 00 08 */	stw r6, 8(r1)
/* 80431B28  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80431B2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80431B30  40 80 00 24 */	bge lbl_80431B54
/* 80431B34  3C A0 80 64 */	lis r5, lit_555@ha /* 0x80644278@ha */
/* 80431B38  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80431B3C  C0 25 42 78 */	lfs f1, lit_555@l(r5)  /* 0x80644278@l */
/* 80431B40  EC 01 00 2A */	fadds f0, f1, f0
/* 80431B44  FC 60 00 90 */	fmr f3, f0
/* 80431B48  FC 80 00 90 */	fmr f4, f0
/* 80431B4C  FC A0 00 90 */	fmr f5, f0
/* 80431B50  48 00 00 38 */	b lbl_80431B88
lbl_80431B54:
/* 80431B54  3C A0 80 64 */	lis r5, lit_556@ha /* 0x8064427C@ha */
/* 80431B58  3C C0 80 64 */	lis r6, lit_557@ha /* 0x80644280@ha */
/* 80431B5C  38 E5 42 7C */	addi r7, r5, lit_556@l /* 0x8064427C@l */
/* 80431B60  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 80431B64  C0 07 00 00 */	lfs f0, 0(r7)
/* 80431B68  3C A0 80 64 */	lis r5, lit_555@ha /* 0x80644278@ha */
/* 80431B6C  C0 26 42 80 */	lfs f1, lit_557@l(r6)  /* 0x80644280@l */
/* 80431B70  EC 40 18 2A */	fadds f2, f0, f3
/* 80431B74  C0 05 42 78 */	lfs f0, lit_555@l(r5)  /* 0x80644278@l */
/* 80431B78  EC 81 18 2A */	fadds f4, f1, f3
/* 80431B7C  EC A0 18 2A */	fadds f5, f0, f3
/* 80431B80  FC 00 10 90 */	fmr f0, f2
/* 80431B84  FC 60 10 90 */	fmr f3, f2
lbl_80431B88:
/* 80431B88  C0 21 00 08 */	lfs f1, 8(r1)
/* 80431B8C  C0 44 00 00 */	lfs f2, 0(r4)
/* 80431B90  EC 01 00 2A */	fadds f0, f1, f0
/* 80431B94  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80431B98  40 81 00 0C */	ble lbl_80431BA4
/* 80431B9C  61 08 00 04 */	ori r8, r8, 4
/* 80431BA0  48 00 00 14 */	b lbl_80431BB4
lbl_80431BA4:
/* 80431BA4  EC 01 18 28 */	fsubs f0, f1, f3
/* 80431BA8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80431BAC  40 80 00 08 */	bge lbl_80431BB4
/* 80431BB0  61 08 00 02 */	ori r8, r8, 2
lbl_80431BB4:
/* 80431BB4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80431BB8  C0 44 00 08 */	lfs f2, 8(r4)
/* 80431BBC  EC 01 20 2A */	fadds f0, f1, f4
/* 80431BC0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80431BC4  40 81 00 0C */	ble lbl_80431BD0
/* 80431BC8  61 08 00 08 */	ori r8, r8, 8
/* 80431BCC  48 00 00 14 */	b lbl_80431BE0
lbl_80431BD0:
/* 80431BD0  EC 01 28 28 */	fsubs f0, f1, f5
/* 80431BD4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80431BD8  40 80 00 08 */	bge lbl_80431BE0
/* 80431BDC  61 08 00 10 */	ori r8, r8, 0x10
lbl_80431BE0:
/* 80431BE0  7D 03 43 78 */	mr r3, r8
/* 80431BE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80431BE8  4E 80 00 20 */	blr 