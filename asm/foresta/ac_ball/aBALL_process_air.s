lbl_80412DB0:
/* 80412DB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80412DB4  7C 08 02 A6 */	mflr r0
/* 80412DB8  3C A0 80 64 */	lis r5, lit_472@ha /* 0x806439AC@ha */
/* 80412DBC  3C C0 80 64 */	lis r6, lit_671@ha /* 0x80643A24@ha */
/* 80412DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80412DC4  38 E5 39 AC */	addi r7, r5, lit_472@l /* 0x806439AC@l */
/* 80412DC8  3C A0 80 64 */	lis r5, lit_672@ha /* 0x80643A28@ha */
/* 80412DCC  C0 07 00 00 */	lfs f0, 0(r7)
/* 80412DD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80412DD4  7C 9F 23 78 */	mr r31, r4
/* 80412DD8  C0 26 3A 24 */	lfs f1, lit_671@l(r6)  /* 0x80643A24@l */
/* 80412DDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80412DE0  7C 7E 1B 78 */	mr r30, r3
/* 80412DE4  C0 45 3A 28 */	lfs f2, lit_672@l(r5)  /* 0x80643A28@l */
/* 80412DE8  D0 03 01 F0 */	stfs f0, 0x1f0(r3)
/* 80412DEC  38 7E 01 E8 */	addi r3, r30, 0x1e8
/* 80412DF0  4B FA 84 E9 */	bl add_calc0
/* 80412DF4  3C 80 80 64 */	lis r4, lit_476@ha /* 0x806439BC@ha */
/* 80412DF8  3C 60 80 64 */	lis r3, lit_477@ha /* 0x806439C0@ha */
/* 80412DFC  C0 24 39 BC */	lfs f1, lit_476@l(r4)  /* 0x806439BC@l */
/* 80412E00  C0 03 39 C0 */	lfs f0, lit_477@l(r3)  /* 0x806439C0@l */
/* 80412E04  D0 3E 00 7C */	stfs f1, 0x7c(r30)
/* 80412E08  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 80412E0C  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80412E10  D0 1E 01 F4 */	stfs f0, 0x1f4(r30)
/* 80412E14  88 1E 00 98 */	lbz r0, 0x98(r30)
/* 80412E18  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80412E1C  41 82 00 30 */	beq lbl_80412E4C
/* 80412E20  88 1E 00 9A */	lbz r0, 0x9a(r30)
/* 80412E24  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80412E28  41 82 00 14 */	beq lbl_80412E3C
/* 80412E2C  7F C3 F3 78 */	mr r3, r30
/* 80412E30  7F E4 FB 78 */	mr r4, r31
/* 80412E34  48 00 07 5D */	bl aBALL_process_ground_water_init
/* 80412E38  48 00 00 2C */	b lbl_80412E64
lbl_80412E3C:
/* 80412E3C  7F C3 F3 78 */	mr r3, r30
/* 80412E40  7F E4 FB 78 */	mr r4, r31
/* 80412E44  48 00 00 39 */	bl aBALL_process_ground_init
/* 80412E48  48 00 00 1C */	b lbl_80412E64
lbl_80412E4C:
/* 80412E4C  88 1E 00 9A */	lbz r0, 0x9a(r30)
/* 80412E50  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80412E54  41 82 00 10 */	beq lbl_80412E64
/* 80412E58  7F C3 F3 78 */	mr r3, r30
/* 80412E5C  7F E4 FB 78 */	mr r4, r31
/* 80412E60  48 00 06 05 */	bl aBALL_process_air_water_init
lbl_80412E64:
/* 80412E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80412E68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80412E6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80412E70  7C 08 03 A6 */	mtlr r0
/* 80412E74  38 21 00 10 */	addi r1, r1, 0x10
/* 80412E78  4E 80 00 20 */	blr 
