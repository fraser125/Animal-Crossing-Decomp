lbl_8059DCEC:
/* 8059DCEC  39 20 00 00 */	li r9, 0
/* 8059DCF0  3C 80 80 65 */	lis r4, lit_629@ha /* 0x8064A17C@ha */
/* 8059DCF4  91 23 02 20 */	stw r9, 0x220(r3)
/* 8059DCF8  38 00 00 50 */	li r0, 0x50
/* 8059DCFC  39 04 A1 7C */	addi r8, r4, lit_629@l /* 0x8064A17C@l */
/* 8059DD00  3C 80 80 65 */	lis r4, lit_630@ha /* 0x8064A180@ha */
/* 8059DD04  90 03 02 24 */	stw r0, 0x224(r3)
/* 8059DD08  38 E4 A1 80 */	addi r7, r4, lit_630@l /* 0x8064A180@l */
/* 8059DD0C  3C A0 80 65 */	lis r5, lit_459@ha /* 0x8064A150@ha */
/* 8059DD10  3C 80 80 65 */	lis r4, lit_597@ha /* 0x8064A170@ha */
/* 8059DD14  B1 23 00 DC */	sth r9, 0xdc(r3)
/* 8059DD18  38 C5 A1 50 */	addi r6, r5, lit_459@l /* 0x8064A150@l */
/* 8059DD1C  38 A4 A1 70 */	addi r5, r4, lit_597@l /* 0x8064A170@l */
/* 8059DD20  C0 28 00 00 */	lfs f1, 0(r8)
/* 8059DD24  91 23 02 18 */	stw r9, 0x218(r3)
/* 8059DD28  38 80 00 01 */	li r4, 1
/* 8059DD2C  C0 07 00 00 */	lfs f0, 0(r7)
/* 8059DD30  D0 23 00 78 */	stfs f1, 0x78(r3)
/* 8059DD34  C0 26 00 00 */	lfs f1, 0(r6)
/* 8059DD38  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 8059DD3C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059DD40  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 8059DD44  D0 23 00 74 */	stfs f1, 0x74(r3)
/* 8059DD48  D0 23 01 EC */	stfs f1, 0x1ec(r3)
/* 8059DD4C  D0 23 01 E8 */	stfs f1, 0x1e8(r3)
/* 8059DD50  D0 03 02 44 */	stfs f0, 0x244(r3)
/* 8059DD54  88 03 02 1E */	lbz r0, 0x21e(r3)
/* 8059DD58  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8059DD5C  98 03 02 1E */	stb r0, 0x21e(r3)
/* 8059DD60  88 03 02 1E */	lbz r0, 0x21e(r3)
/* 8059DD64  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 8059DD68  98 03 02 1E */	stb r0, 0x21e(r3)
/* 8059DD6C  99 23 01 08 */	stb r9, 0x108(r3)
/* 8059DD70  4E 80 00 20 */	blr 
