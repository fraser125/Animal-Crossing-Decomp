lbl_80595F44:
/* 80595F44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80595F48  7C 08 02 A6 */	mflr r0
/* 80595F4C  38 C0 00 00 */	li r6, 0
/* 80595F50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80595F54  38 00 00 50 */	li r0, 0x50
/* 80595F58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80595F5C  7C 7F 1B 78 */	mr r31, r3
/* 80595F60  3C 60 80 65 */	lis r3, lit_457@ha /* 0x80649DB0@ha */
/* 80595F64  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80595F68  38 A3 9D B0 */	addi r5, r3, lit_457@l /* 0x80649DB0@l */
/* 80595F6C  3C 60 80 65 */	lis r3, lit_426@ha /* 0x80649D98@ha */
/* 80595F70  C0 05 00 00 */	lfs f0, 0(r5)
/* 80595F74  90 DF 02 20 */	stw r6, 0x220(r31)
/* 80595F78  38 A3 9D 98 */	addi r5, r3, lit_426@l /* 0x80649D98@l */
/* 80595F7C  C0 25 00 00 */	lfs f1, 0(r5)
/* 80595F80  3C 60 80 65 */	lis r3, lit_458@ha /* 0x80649DB4@ha */
/* 80595F84  90 1F 02 24 */	stw r0, 0x224(r31)
/* 80595F88  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 80595F8C  C0 03 9D B4 */	lfs f0, lit_458@l(r3)  /* 0x80649DB4@l */
/* 80595F90  7C 83 23 78 */	mr r3, r4
/* 80595F94  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 80595F98  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 80595F9C  B0 DF 00 DC */	sth r6, 0xdc(r31)
/* 80595FA0  4B E4 36 A1 */	bl get_player_actor_withoutCheck
/* 80595FA4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80595FA8  41 82 00 3C */	beq lbl_80595FE4
/* 80595FAC  4B AC 6D 49 */	bl fqrand
/* 80595FB0  3C 80 80 65 */	lis r4, lit_398@ha /* 0x80649D8C@ha */
/* 80595FB4  3C 60 80 65 */	lis r3, lit_459@ha /* 0x80649DB8@ha */
/* 80595FB8  C0 44 9D 8C */	lfs f2, lit_398@l(r4)  /* 0x80649D8C@l */
/* 80595FBC  C0 03 9D B8 */	lfs f0, lit_459@l(r3)  /* 0x80649DB8@l */
/* 80595FC0  EC 21 10 28 */	fsubs f1, f1, f2
/* 80595FC4  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 80595FC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80595FCC  FC 00 00 1E */	fctiwz f0, f0
/* 80595FD0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80595FD4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80595FD8  7C 00 1A 14 */	add r0, r0, r3
/* 80595FDC  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80595FE0  B0 1F 00 DE */	sth r0, 0xde(r31)
lbl_80595FE4:
/* 80595FE4  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 80595FE8  38 60 00 01 */	li r3, 1
/* 80595FEC  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80595FF0  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 80595FF4  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 80595FF8  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80595FFC  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 80596000  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80596004  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80596008  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059600C  7C 08 03 A6 */	mtlr r0
/* 80596010  38 21 00 20 */	addi r1, r1, 0x20
/* 80596014  4E 80 00 20 */	blr 
