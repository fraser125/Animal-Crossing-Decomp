lbl_805B99A8:
/* 805B99A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B99AC  7C 08 02 A6 */	mflr r0
/* 805B99B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B99B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B99B8  7C 7F 1B 78 */	mr r31, r3
/* 805B99BC  7C 83 23 78 */	mr r3, r4
/* 805B99C0  4B E1 FC 81 */	bl get_player_actor_withoutCheck
/* 805B99C4  28 03 00 00 */	cmplwi r3, 0
/* 805B99C8  38 C0 00 00 */	li r6, 0
/* 805B99CC  40 82 00 0C */	bne lbl_805B99D8
/* 805B99D0  38 60 00 00 */	li r3, 0
/* 805B99D4  48 00 00 70 */	b lbl_805B9A44
lbl_805B99D8:
/* 805B99D8  3C A0 80 65 */	lis r5, lit_546@ha /* 0x8064AAB4@ha */
/* 805B99DC  3C 80 80 65 */	lis r4, lit_547@ha /* 0x8064AAB8@ha */
/* 805B99E0  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 805B99E4  C0 45 AA B4 */	lfs f2, lit_546@l(r5)  /* 0x8064AAB4@l */
/* 805B99E8  C0 24 AA B8 */	lfs f1, lit_547@l(r4)  /* 0x8064AAB8@l */
/* 805B99EC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805B99F0  EC 43 10 28 */	fsubs f2, f3, f2
/* 805B99F4  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 805B99F8  EC 01 00 2A */	fadds f0, f1, f0
/* 805B99FC  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 805B9A00  EC 43 10 28 */	fsubs f2, f3, f2
/* 805B9A04  A8 03 00 DE */	lha r0, 0xde(r3)
/* 805B9A08  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B9A0C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805B9A10  EC 22 00 B2 */	fmuls f1, f2, f2
/* 805B9A14  28 00 40 00 */	cmplwi r0, 0x4000
/* 805B9A18  EC 00 00 32 */	fmuls f0, f0, f0
/* 805B9A1C  EC 21 00 2A */	fadds f1, f1, f0
/* 805B9A20  40 81 00 20 */	ble lbl_805B9A40
/* 805B9A24  28 00 80 00 */	cmplwi r0, 0x8000
/* 805B9A28  40 80 00 18 */	bge lbl_805B9A40
/* 805B9A2C  3C 60 80 65 */	lis r3, lit_468@ha /* 0x8064AAA8@ha */
/* 805B9A30  C0 03 AA A8 */	lfs f0, lit_468@l(r3)  /* 0x8064AAA8@l */
/* 805B9A34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B9A38  40 80 00 08 */	bge lbl_805B9A40
/* 805B9A3C  38 C0 00 01 */	li r6, 1
lbl_805B9A40:
/* 805B9A40  7C C3 33 78 */	mr r3, r6
lbl_805B9A44:
/* 805B9A44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B9A48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B9A4C  7C 08 03 A6 */	mtlr r0
/* 805B9A50  38 21 00 10 */	addi r1, r1, 0x10
/* 805B9A54  4E 80 00 20 */	blr 
