lbl_80442B1C:
/* 80442B1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80442B20  7C 08 02 A6 */	mflr r0
/* 80442B24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80442B28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80442B2C  7C 9F 23 78 */	mr r31, r4
/* 80442B30  93 C1 00 08 */	stw r30, 8(r1)
/* 80442B34  7C 7E 1B 78 */	mr r30, r3
/* 80442B38  4B FF 19 D1 */	bl mfish_onefish_ct
/* 80442B3C  7F C3 F3 78 */	mr r3, r30
/* 80442B40  7F E4 FB 78 */	mr r4, r31
/* 80442B44  4B FF 14 3D */	bl mfish_base_ct
/* 80442B48  3C 60 80 44 */	lis r3, mfish_bass_normal_process@ha /* 0x80441AA4@ha */
/* 80442B4C  38 03 1A A4 */	addi r0, r3, mfish_bass_normal_process@l /* 0x80441AA4@l */
/* 80442B50  90 1E 00 34 */	stw r0, 0x34(r30)
/* 80442B54  80 1E 05 9C */	lwz r0, 0x59c(r30)
/* 80442B58  2C 00 00 07 */	cmpwi r0, 7
/* 80442B5C  40 82 00 14 */	bne lbl_80442B70
/* 80442B60  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80442B64  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80442B68  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 80442B6C  48 00 00 28 */	b lbl_80442B94
lbl_80442B70:
/* 80442B70  2C 00 00 06 */	cmpwi r0, 6
/* 80442B74  40 82 00 14 */	bne lbl_80442B88
/* 80442B78  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80442B7C  C0 03 42 5C */	lfs f0, lit_471@l(r3)  /* 0x8064425C@l */
/* 80442B80  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 80442B84  48 00 00 10 */	b lbl_80442B94
lbl_80442B88:
/* 80442B88  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80442B8C  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80442B90  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
lbl_80442B94:
/* 80442B94  38 00 00 0B */	li r0, 0xb
/* 80442B98  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 80442B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80442BA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80442BA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80442BA8  7C 08 03 A6 */	mtlr r0
/* 80442BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80442BB0  4E 80 00 20 */	blr 
