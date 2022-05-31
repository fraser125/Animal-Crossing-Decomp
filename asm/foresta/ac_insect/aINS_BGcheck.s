lbl_80594DD0:
/* 80594DD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80594DD4  7C 08 02 A6 */	mflr r0
/* 80594DD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80594DDC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80594DE0  7C 7F 1B 78 */	mr r31, r3
/* 80594DE4  80 03 02 18 */	lwz r0, 0x218(r3)
/* 80594DE8  2C 00 00 03 */	cmpwi r0, 3
/* 80594DEC  41 82 00 6C */	beq lbl_80594E58
/* 80594DF0  40 80 00 14 */	bge lbl_80594E04
/* 80594DF4  2C 00 00 01 */	cmpwi r0, 1
/* 80594DF8  41 82 00 18 */	beq lbl_80594E10
/* 80594DFC  40 80 00 38 */	bge lbl_80594E34
/* 80594E00  48 00 00 AC */	b lbl_80594EAC
lbl_80594E04:
/* 80594E04  2C 00 00 05 */	cmpwi r0, 5
/* 80594E08  40 80 00 A4 */	bge lbl_80594EAC
/* 80594E0C  48 00 00 78 */	b lbl_80594E84
lbl_80594E10:
/* 80594E10  C0 3F 02 10 */	lfs f1, 0x210(r31)
/* 80594E14  7F E4 FB 78 */	mr r4, r31
/* 80594E18  C0 5F 02 14 */	lfs f2, 0x214(r31)
/* 80594E1C  38 60 00 00 */	li r3, 0
/* 80594E20  38 A0 00 01 */	li r5, 1
/* 80594E24  38 C0 00 00 */	li r6, 0
/* 80594E28  38 E0 00 01 */	li r7, 1
/* 80594E2C  4B DF 4F 75 */	bl mCoBG_BgCheckControll
/* 80594E30  48 00 00 7C */	b lbl_80594EAC
lbl_80594E34:
/* 80594E34  C0 3F 02 10 */	lfs f1, 0x210(r31)
/* 80594E38  7F E4 FB 78 */	mr r4, r31
/* 80594E3C  C0 5F 02 14 */	lfs f2, 0x214(r31)
/* 80594E40  38 60 00 00 */	li r3, 0
/* 80594E44  38 A0 00 00 */	li r5, 0
/* 80594E48  38 C0 00 00 */	li r6, 0
/* 80594E4C  38 E0 00 01 */	li r7, 1
/* 80594E50  4B DF 4F 51 */	bl mCoBG_BgCheckControll
/* 80594E54  48 00 00 58 */	b lbl_80594EAC
lbl_80594E58:
/* 80594E58  C0 3F 02 10 */	lfs f1, 0x210(r31)
/* 80594E5C  7F E4 FB 78 */	mr r4, r31
/* 80594E60  C0 5F 02 14 */	lfs f2, 0x214(r31)
/* 80594E64  38 60 00 00 */	li r3, 0
/* 80594E68  A9 1F 02 68 */	lha r8, 0x268(r31)
/* 80594E6C  38 A0 00 01 */	li r5, 1
/* 80594E70  A9 3F 02 6A */	lha r9, 0x26a(r31)
/* 80594E74  38 C0 00 00 */	li r6, 0
/* 80594E78  38 E0 00 01 */	li r7, 1
/* 80594E7C  4B DF 4D 4D */	bl mCoBG_BgCheckControll_RemoveDirectedUnitColumn
/* 80594E80  48 00 00 2C */	b lbl_80594EAC
lbl_80594E84:
/* 80594E84  C0 3F 02 10 */	lfs f1, 0x210(r31)
/* 80594E88  7F E4 FB 78 */	mr r4, r31
/* 80594E8C  C0 5F 02 14 */	lfs f2, 0x214(r31)
/* 80594E90  38 60 00 00 */	li r3, 0
/* 80594E94  A9 1F 02 68 */	lha r8, 0x268(r31)
/* 80594E98  38 A0 00 00 */	li r5, 0
/* 80594E9C  A9 3F 02 6A */	lha r9, 0x26a(r31)
/* 80594EA0  38 C0 00 00 */	li r6, 0
/* 80594EA4  38 E0 00 01 */	li r7, 1
/* 80594EA8  4B DF 4D 21 */	bl mCoBG_BgCheckControll_RemoveDirectedUnitColumn
lbl_80594EAC:
/* 80594EAC  88 7F 02 1E */	lbz r3, 0x21e(r31)
/* 80594EB0  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 80594EB4  40 82 00 28 */	bne lbl_80594EDC
/* 80594EB8  54 60 EF FE */	rlwinm r0, r3, 0x1d, 0x1f, 0x1f
/* 80594EBC  28 00 00 01 */	cmplwi r0, 1
/* 80594EC0  40 82 00 1C */	bne lbl_80594EDC
/* 80594EC4  3C 60 80 65 */	lis r3, lit_615@ha /* 0x80649D28@ha */
/* 80594EC8  C0 3F 02 10 */	lfs f1, 0x210(r31)
/* 80594ECC  C0 43 9D 28 */	lfs f2, lit_615@l(r3)  /* 0x80649D28@l */
/* 80594ED0  7F E4 FB 78 */	mr r4, r31
/* 80594ED4  38 61 00 08 */	addi r3, r1, 8
/* 80594ED8  4B DF D1 E9 */	bl mCoBG_UniqueWallCheck
lbl_80594EDC:
/* 80594EDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80594EE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80594EE4  7C 08 03 A6 */	mtlr r0
/* 80594EE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80594EEC  4E 80 00 20 */	blr 
