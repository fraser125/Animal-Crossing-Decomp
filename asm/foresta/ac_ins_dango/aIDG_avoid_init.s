lbl_80597F08:
/* 80597F08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80597F0C  7C 08 02 A6 */	mflr r0
/* 80597F10  3C A0 80 65 */	lis r5, lit_608@ha /* 0x80649E94@ha */
/* 80597F14  3C C0 80 65 */	lis r6, lit_609@ha /* 0x80649E98@ha */
/* 80597F18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80597F1C  38 E5 9E 94 */	addi r7, r5, lit_608@l /* 0x80649E94@l */
/* 80597F20  C0 07 00 00 */	lfs f0, 0(r7)
/* 80597F24  3C A0 80 65 */	lis r5, lit_610@ha /* 0x80649E9C@ha */
/* 80597F28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80597F2C  C0 26 9E 98 */	lfs f1, lit_609@l(r6)  /* 0x80649E98@l */
/* 80597F30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80597F34  7C 7E 1B 78 */	mr r30, r3
/* 80597F38  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 80597F3C  7C 83 23 78 */	mr r3, r4
/* 80597F40  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 80597F44  C0 05 9E 9C */	lfs f0, lit_610@l(r5)  /* 0x80649E9C@l */
/* 80597F48  D0 3E 01 E8 */	stfs f1, 0x1e8(r30)
/* 80597F4C  D0 1E 01 E0 */	stfs f0, 0x1e0(r30)
/* 80597F50  4B E4 16 F1 */	bl get_player_actor_withoutCheck
/* 80597F54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80597F58  41 82 00 3C */	beq lbl_80597F94
/* 80597F5C  4B AC 4D 99 */	bl fqrand
/* 80597F60  3C 80 80 65 */	lis r4, lit_612@ha /* 0x80649EA4@ha */
/* 80597F64  3C 60 80 65 */	lis r3, lit_611@ha /* 0x80649EA0@ha */
/* 80597F68  C0 44 9E A4 */	lfs f2, lit_612@l(r4)  /* 0x80649EA4@l */
/* 80597F6C  C0 03 9E A0 */	lfs f0, lit_611@l(r3)  /* 0x80649EA0@l */
/* 80597F70  EC 21 10 28 */	fsubs f1, f1, f2
/* 80597F74  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 80597F78  EC 00 00 72 */	fmuls f0, f0, f1
/* 80597F7C  FC 00 00 1E */	fctiwz f0, f0
/* 80597F80  D8 01 00 08 */	stfd f0, 8(r1)
/* 80597F84  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80597F88  7C 00 1A 14 */	add r0, r0, r3
/* 80597F8C  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 80597F90  B0 1E 00 DE */	sth r0, 0xde(r30)
lbl_80597F94:
/* 80597F94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80597F98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80597F9C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80597FA0  7C 08 03 A6 */	mtlr r0
/* 80597FA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80597FA8  4E 80 00 20 */	blr 
