lbl_8057DBA8:
/* 8057DBA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057DBAC  7C 08 02 A6 */	mflr r0
/* 8057DBB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057DBB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8057DBB8  7C 9F 23 78 */	mr r31, r4
/* 8057DBBC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8057DBC0  7C 7E 1B 78 */	mr r30, r3
/* 8057DBC4  7F E3 FB 78 */	mr r3, r31
/* 8057DBC8  4B E5 BA A9 */	bl mPlib_get_player_actor_main_index
/* 8057DBCC  2C 03 00 4B */	cmpwi r3, 0x4b
/* 8057DBD0  41 82 00 60 */	beq lbl_8057DC30
/* 8057DBD4  A8 9E 09 C8 */	lha r4, 0x9c8(r30)
/* 8057DBD8  3C A0 43 30 */	lis r5, 0x4330
/* 8057DBDC  A8 7E 09 CA */	lha r3, 0x9ca(r30)
/* 8057DBE0  3C C0 80 65 */	lis r6, lit_529@ha /* 0x80649A0C@ha */
/* 8057DBE4  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8057DBE8  90 A1 00 08 */	stw r5, 8(r1)
/* 8057DBEC  38 03 00 50 */	addi r0, r3, 0x50
/* 8057DBF0  C8 46 9A 0C */	lfd f2, lit_529@l(r6)  /* 0x80649A0C@l */
/* 8057DBF4  90 81 00 0C */	stw r4, 0xc(r1)
/* 8057DBF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8057DBFC  3C 60 80 65 */	lis r3, lit_913@ha /* 0x80649A1C@ha */
/* 8057DC00  C8 01 00 08 */	lfd f0, 8(r1)
/* 8057DC04  38 83 9A 1C */	addi r4, r3, lit_913@l /* 0x80649A1C@l */
/* 8057DC08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057DC0C  7F E3 FB 78 */	mr r3, r31
/* 8057DC10  EC 20 10 28 */	fsubs f1, f0, f2
/* 8057DC14  C0 64 00 00 */	lfs f3, 0(r4)
/* 8057DC18  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8057DC1C  38 80 00 00 */	li r4, 0
/* 8057DC20  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8057DC24  EC 40 10 28 */	fsubs f2, f0, f2
/* 8057DC28  4B E5 D1 B5 */	bl mPlib_request_main_demo_walk_type1
/* 8057DC2C  48 00 00 14 */	b lbl_8057DC40
lbl_8057DC30:
/* 8057DC30  7F C3 F3 78 */	mr r3, r30
/* 8057DC34  7F E4 FB 78 */	mr r4, r31
/* 8057DC38  38 A0 00 11 */	li r5, 0x11
/* 8057DC3C  48 00 06 05 */	bl aSHM_setup_think_proc
lbl_8057DC40:
/* 8057DC40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057DC44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8057DC48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8057DC4C  7C 08 03 A6 */	mtlr r0
/* 8057DC50  38 21 00 20 */	addi r1, r1, 0x20
/* 8057DC54  4E 80 00 20 */	blr 
