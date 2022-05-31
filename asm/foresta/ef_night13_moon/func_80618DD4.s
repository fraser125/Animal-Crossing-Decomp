lbl_80618DD4:
/* 80618DD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80618DD8  7C 08 02 A6 */	mflr r0
/* 80618DDC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008000@ha */
/* 80618DE0  3C 80 80 65 */	lis r4, data_8064C8AC@ha /* 0x8064C8AC@ha */
/* 80618DE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80618DE8  38 00 00 00 */	li r0, 0
/* 80618DEC  38 A5 80 00 */	addi r5, r5, 0x8000 /* 0x00008000@l */
/* 80618DF0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80618DF4  7C 7F 1B 78 */	mr r31, r3
/* 80618DF8  38 61 00 0C */	addi r3, r1, 0xc
/* 80618DFC  85 04 C8 AC */	lwzu r8, data_8064C8AC@l(r4)  /* 0x8064C8AC@l */
/* 80618E00  90 01 00 0C */	stw r0, 0xc(r1)
/* 80618E04  80 E4 00 04 */	lwz r7, 4(r4)
/* 80618E08  80 C4 00 08 */	lwz r6, 8(r4)
/* 80618E0C  38 81 00 08 */	addi r4, r1, 8
/* 80618E10  91 01 00 10 */	stw r8, 0x10(r1)
/* 80618E14  90 E1 00 14 */	stw r7, 0x14(r1)
/* 80618E18  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80618E1C  90 01 00 08 */	stw r0, 8(r1)
/* 80618E20  91 1F 00 00 */	stw r8, 0(r31)
/* 80618E24  90 FF 00 04 */	stw r7, 4(r31)
/* 80618E28  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80618E2C  90 1F 00 08 */	stw r0, 8(r31)
/* 80618E30  4B D8 D5 D1 */	bl mFI_BlockKind2BkNum
/* 80618E34  2C 03 00 00 */	cmpwi r3, 0
/* 80618E38  41 82 00 64 */	beq lbl_80618E9C
/* 80618E3C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80618E40  38 81 00 18 */	addi r4, r1, 0x18
/* 80618E44  80 C1 00 08 */	lwz r6, 8(r1)
/* 80618E48  38 61 00 10 */	addi r3, r1, 0x10
/* 80618E4C  4B D8 CD 2D */	bl mFI_BkNum2WposXZ
/* 80618E50  2C 03 00 00 */	cmpwi r3, 0
/* 80618E54  41 82 00 48 */	beq lbl_80618E9C
/* 80618E58  3C 60 80 65 */	lis r3, lit_382@ha /* 0x8064C8B8@ha */
/* 80618E5C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80618E60  C0 23 C8 B8 */	lfs f1, lit_382@l(r3)  /* 0x8064C8B8@l */
/* 80618E64  EC 01 00 2A */	fadds f0, f1, f0
/* 80618E68  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80618E6C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80618E70  EC 01 00 2A */	fadds f0, f1, f0
/* 80618E74  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80618E78  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80618E7C  80 81 00 08 */	lwz r4, 8(r1)
/* 80618E80  4B D8 D2 C5 */	bl mFI_BkNum2BaseHeight
/* 80618E84  3C 80 80 65 */	lis r4, lit_383@ha /* 0x8064C8BC@ha */
/* 80618E88  38 60 00 01 */	li r3, 1
/* 80618E8C  C0 04 C8 BC */	lfs f0, lit_383@l(r4)  /* 0x8064C8BC@l */
/* 80618E90  EC 00 08 2A */	fadds f0, f0, f1
/* 80618E94  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80618E98  48 00 00 08 */	b lbl_80618EA0
lbl_80618E9C:
/* 80618E9C  38 60 00 00 */	li r3, 0
lbl_80618EA0:
/* 80618EA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80618EA4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80618EA8  7C 08 03 A6 */	mtlr r0
/* 80618EAC  38 21 00 30 */	addi r1, r1, 0x30
/* 80618EB0  4E 80 00 20 */	blr 
