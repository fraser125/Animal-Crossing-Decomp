lbl_8059DBA8:
/* 8059DBA8  3C 80 80 65 */	lis r4, lit_534@ha /* 0x8064A158@ha */
/* 8059DBAC  3C A0 80 65 */	lis r5, lit_592@ha /* 0x8064A16C@ha */
/* 8059DBB0  38 C4 A1 58 */	addi r6, r4, lit_534@l /* 0x8064A158@l */
/* 8059DBB4  3C 80 80 65 */	lis r4, lit_614@ha /* 0x8064A178@ha */
/* 8059DBB8  C0 06 00 00 */	lfs f0, 0(r6)
/* 8059DBBC  38 C5 A1 6C */	addi r6, r5, lit_592@l /* 0x8064A16C@l */
/* 8059DBC0  38 A4 A1 78 */	addi r5, r4, lit_614@l /* 0x8064A178@l */
/* 8059DBC4  C0 26 00 00 */	lfs f1, 0(r6)
/* 8059DBC8  D0 03 01 EC */	stfs f0, 0x1ec(r3)
/* 8059DBCC  38 80 00 01 */	li r4, 1
/* 8059DBD0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059DBD4  D0 23 01 E8 */	stfs f1, 0x1e8(r3)
/* 8059DBD8  C0 23 01 EC */	lfs f1, 0x1ec(r3)
/* 8059DBDC  D0 23 00 74 */	stfs f1, 0x74(r3)
/* 8059DBE0  D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 8059DBE4  88 03 02 1E */	lbz r0, 0x21e(r3)
/* 8059DBE8  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8059DBEC  98 03 02 1E */	stb r0, 0x21e(r3)
/* 8059DBF0  4E 80 00 20 */	blr 
