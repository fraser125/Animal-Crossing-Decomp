lbl_8046A9A8:
/* 8046A9A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046A9AC  7C 08 02 A6 */	mflr r0
/* 8046A9B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046A9B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8046A9B8  7C 7F 1B 78 */	mr r31, r3
/* 8046A9BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8046A9C0  7C 9E 23 78 */	mr r30, r4
/* 8046A9C4  4B BF 23 31 */	bl fqrand
/* 8046A9C8  7F C4 07 34 */	extsh r4, r30
/* 8046A9CC  A8 BF 00 6A */	lha r5, 0x6a(r31)
/* 8046A9D0  3C 64 00 01 */	addis r3, r4, 1
/* 8046A9D4  38 03 80 00 */	addi r0, r3, -32768
/* 8046A9D8  7C 00 07 34 */	extsh r0, r0
/* 8046A9DC  7C 05 00 00 */	cmpw r5, r0
/* 8046A9E0  40 82 00 74 */	bne lbl_8046AA54
/* 8046A9E4  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 8046A9E8  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 8046A9EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046A9F0  40 80 00 2C */	bge lbl_8046AA1C
/* 8046A9F4  3C 60 80 64 */	lis r3, lit_460@ha /* 0x806445C0@ha */
/* 8046A9F8  C0 03 45 C0 */	lfs f0, lit_460@l(r3)  /* 0x806445C0@l */
/* 8046A9FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046AA00  40 80 00 10 */	bge lbl_8046AA10
/* 8046AA04  38 04 C0 00 */	addi r0, r4, -16384
/* 8046AA08  B0 1F 00 6A */	sth r0, 0x6a(r31)
/* 8046AA0C  48 00 01 00 */	b lbl_8046AB0C
lbl_8046AA10:
/* 8046AA10  38 04 40 00 */	addi r0, r4, 0x4000
/* 8046AA14  B0 1F 00 6A */	sth r0, 0x6a(r31)
/* 8046AA18  48 00 00 F4 */	b lbl_8046AB0C
lbl_8046AA1C:
/* 8046AA1C  B3 DF 00 6A */	sth r30, 0x6a(r31)
/* 8046AA20  4B BF 23 0D */	bl fqrand2
/* 8046AA24  3C 60 80 64 */	lis r3, lit_531@ha /* 0x80644614@ha */
/* 8046AA28  A8 1F 00 6A */	lha r0, 0x6a(r31)
/* 8046AA2C  C0 03 46 14 */	lfs f0, lit_531@l(r3)  /* 0x80644614@l */
/* 8046AA30  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046AA34  FC 00 00 1E */	fctiwz f0, f0
/* 8046AA38  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046AA3C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8046AA40  54 63 60 26 */	slwi r3, r3, 0xc
/* 8046AA44  7C 63 07 34 */	extsh r3, r3
/* 8046AA48  7C 00 1A 14 */	add r0, r0, r3
/* 8046AA4C  B0 1F 00 6A */	sth r0, 0x6a(r31)
/* 8046AA50  48 00 00 BC */	b lbl_8046AB0C
lbl_8046AA54:
/* 8046AA54  7C 04 28 51 */	subf. r0, r4, r5
/* 8046AA58  40 81 00 5C */	ble lbl_8046AAB4
/* 8046AA5C  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 8046AA60  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 8046AA64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046AA68  40 80 00 10 */	bge lbl_8046AA78
/* 8046AA6C  38 04 40 00 */	addi r0, r4, 0x4000
/* 8046AA70  B0 1F 00 6A */	sth r0, 0x6a(r31)
/* 8046AA74  48 00 00 98 */	b lbl_8046AB0C
lbl_8046AA78:
/* 8046AA78  38 04 C0 00 */	addi r0, r4, -16384
/* 8046AA7C  B0 1F 00 6A */	sth r0, 0x6a(r31)
/* 8046AA80  4B BF 22 75 */	bl fqrand
/* 8046AA84  3C 60 80 64 */	lis r3, lit_531@ha /* 0x80644614@ha */
/* 8046AA88  A8 1F 00 6A */	lha r0, 0x6a(r31)
/* 8046AA8C  C0 03 46 14 */	lfs f0, lit_531@l(r3)  /* 0x80644614@l */
/* 8046AA90  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046AA94  FC 00 00 1E */	fctiwz f0, f0
/* 8046AA98  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046AA9C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8046AAA0  54 63 60 26 */	slwi r3, r3, 0xc
/* 8046AAA4  7C 63 07 34 */	extsh r3, r3
/* 8046AAA8  7C 00 1A 14 */	add r0, r0, r3
/* 8046AAAC  B0 1F 00 6A */	sth r0, 0x6a(r31)
/* 8046AAB0  48 00 00 5C */	b lbl_8046AB0C
lbl_8046AAB4:
/* 8046AAB4  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 8046AAB8  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 8046AABC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046AAC0  40 80 00 10 */	bge lbl_8046AAD0
/* 8046AAC4  38 04 C0 00 */	addi r0, r4, -16384
/* 8046AAC8  B0 1F 00 6A */	sth r0, 0x6a(r31)
/* 8046AACC  48 00 00 40 */	b lbl_8046AB0C
lbl_8046AAD0:
/* 8046AAD0  38 04 40 00 */	addi r0, r4, 0x4000
/* 8046AAD4  B0 1F 00 6A */	sth r0, 0x6a(r31)
/* 8046AAD8  4B BF 22 1D */	bl fqrand
/* 8046AADC  3C 60 80 64 */	lis r3, lit_531@ha /* 0x80644614@ha */
/* 8046AAE0  A8 1F 00 6A */	lha r0, 0x6a(r31)
/* 8046AAE4  C0 03 46 14 */	lfs f0, lit_531@l(r3)  /* 0x80644614@l */
/* 8046AAE8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046AAEC  FC 00 00 50 */	fneg f0, f0
/* 8046AAF0  FC 00 00 1E */	fctiwz f0, f0
/* 8046AAF4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046AAF8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8046AAFC  54 63 60 26 */	slwi r3, r3, 0xc
/* 8046AB00  7C 63 07 34 */	extsh r3, r3
/* 8046AB04  7C 00 1A 14 */	add r0, r0, r3
/* 8046AB08  B0 1F 00 6A */	sth r0, 0x6a(r31)
lbl_8046AB0C:
/* 8046AB0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046AB10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046AB14  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8046AB18  7C 08 03 A6 */	mtlr r0
/* 8046AB1C  38 21 00 20 */	addi r1, r1, 0x20
/* 8046AB20  4E 80 00 20 */	blr 
