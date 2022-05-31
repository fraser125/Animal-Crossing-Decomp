lbl_8045CD48:
/* 8045CD48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045CD4C  7C 08 02 A6 */	mflr r0
/* 8045CD50  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045CD54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045CD58  7C 7F 1B 78 */	mr r31, r3
/* 8045CD5C  80 03 00 00 */	lwz r0, 0(r3)
/* 8045CD60  2C 00 00 03 */	cmpwi r0, 3
/* 8045CD64  41 82 00 98 */	beq lbl_8045CDFC
/* 8045CD68  4B BF FF 8D */	bl fqrand
/* 8045CD6C  3C 80 80 64 */	lis r4, lit_531@ha /* 0x80644614@ha */
/* 8045CD70  3C 60 81 1D */	lis r3, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8045CD74  C0 04 46 14 */	lfs f0, lit_531@l(r4)  /* 0x80644614@l */
/* 8045CD78  38 C3 DF D0 */	addi r6, r3, data_811CDFD0@l /* 0x811CDFD0@l */
/* 8045CD7C  38 E0 00 00 */	li r7, 0
/* 8045CD80  38 60 00 01 */	li r3, 1
/* 8045CD84  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045CD88  FC 00 00 1E */	fctiwz f0, f0
/* 8045CD8C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8045CD90  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8045CD94  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 8045CD98  48 00 00 20 */	b lbl_8045CDB8
lbl_8045CD9C:
/* 8045CD9C  2C 08 00 07 */	cmpwi r8, 7
/* 8045CDA0  40 80 00 14 */	bge lbl_8045CDB4
/* 8045CDA4  A8 9F 00 74 */	lha r4, 0x74(r31)
/* 8045CDA8  38 04 00 01 */	addi r0, r4, 1
/* 8045CDAC  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 8045CDB0  48 00 00 08 */	b lbl_8045CDB8
lbl_8045CDB4:
/* 8045CDB4  B0 FF 00 74 */	sth r7, 0x74(r31)
lbl_8045CDB8:
/* 8045CDB8  80 A6 00 00 */	lwz r5, 0(r6)
/* 8045CDBC  A9 1F 00 74 */	lha r8, 0x74(r31)
/* 8045CDC0  A8 85 2F 9C */	lha r4, 0x2f9c(r5)
/* 8045CDC4  7C 69 40 30 */	slw r9, r3, r8
/* 8045CDC8  7C 80 48 39 */	and. r0, r4, r9
/* 8045CDCC  40 82 FF D0 */	bne lbl_8045CD9C
/* 8045CDD0  7C 80 4B 78 */	or r0, r4, r9
/* 8045CDD4  3C 60 80 68 */	lis r3, flower_pos@ha /* 0x806869AC@ha */
/* 8045CDD8  B0 05 2F 9C */	sth r0, 0x2f9c(r5)
/* 8045CDDC  38 03 69 AC */	addi r0, r3, flower_pos@l /* 0x806869AC@l */
/* 8045CDE0  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8045CDE4  A8 9F 00 74 */	lha r4, 0x74(r31)
/* 8045CDE8  1C 84 00 0C */	mulli r4, r4, 0xc
/* 8045CDEC  7C 80 22 14 */	add r4, r0, r4
/* 8045CDF0  4B F5 E3 41 */	bl search_position_angleY
/* 8045CDF4  B0 7F 00 72 */	sth r3, 0x72(r31)
/* 8045CDF8  48 00 00 18 */	b lbl_8045CE10
lbl_8045CDFC:
/* 8045CDFC  3C 80 80 68 */	lis r4, ohmurasaki_tree_pos@ha /* 0x80686A0C@ha */
/* 8045CE00  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8045CE04  38 84 6A 0C */	addi r4, r4, ohmurasaki_tree_pos@l /* 0x80686A0C@l */
/* 8045CE08  4B F5 E3 29 */	bl search_position_angleY
/* 8045CE0C  B0 7F 00 72 */	sth r3, 0x72(r31)
lbl_8045CE10:
/* 8045CE10  4B BF FE E5 */	bl fqrand
/* 8045CE14  3C 60 80 64 */	lis r3, lit_503@ha /* 0x806445DC@ha */
/* 8045CE18  3C 80 80 64 */	lis r4, lit_502@ha /* 0x806445D8@ha */
/* 8045CE1C  38 A3 45 DC */	addi r5, r3, lit_503@l /* 0x806445DC@l */
/* 8045CE20  C0 04 45 D8 */	lfs f0, lit_502@l(r4)  /* 0x806445D8@l */
/* 8045CE24  C0 45 00 00 */	lfs f2, 0(r5)
/* 8045CE28  3C 60 80 46 */	lis r3, minsect_chou_aim_flower_process@ha /* 0x8045CE60@ha */
/* 8045CE2C  38 03 CE 60 */	addi r0, r3, minsect_chou_aim_flower_process@l /* 0x8045CE60@l */
/* 8045CE30  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045CE34  EC 00 08 2A */	fadds f0, f0, f1
/* 8045CE38  FC 00 00 1E */	fctiwz f0, f0
/* 8045CE3C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8045CE40  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8045CE44  B0 7F 00 6E */	sth r3, 0x6e(r31)
/* 8045CE48  90 1F 00 04 */	stw r0, 4(r31)
/* 8045CE4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045CE50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045CE54  7C 08 03 A6 */	mtlr r0
/* 8045CE58  38 21 00 20 */	addi r1, r1, 0x20
/* 8045CE5C  4E 80 00 20 */	blr 
