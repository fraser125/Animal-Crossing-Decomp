lbl_8059DB44:
/* 8059DB44  3C 80 80 65 */	lis r4, lit_534@ha /* 0x8064A158@ha */
/* 8059DB48  3C A0 80 65 */	lis r5, lit_592@ha /* 0x8064A16C@ha */
/* 8059DB4C  38 C4 A1 58 */	addi r6, r4, lit_534@l /* 0x8064A158@l */
/* 8059DB50  C0 05 A1 6C */	lfs f0, lit_592@l(r5)  /* 0x8064A16C@l */
/* 8059DB54  C0 66 00 00 */	lfs f3, 0(r6)
/* 8059DB58  3C 80 80 65 */	lis r4, lit_597@ha /* 0x8064A170@ha */
/* 8059DB5C  38 E4 A1 70 */	addi r7, r4, lit_597@l /* 0x8064A170@l */
/* 8059DB60  38 00 00 04 */	li r0, 4
/* 8059DB64  D0 63 01 EC */	stfs f3, 0x1ec(r3)
/* 8059DB68  3C 80 80 65 */	lis r4, lit_598@ha /* 0x8064A174@ha */
/* 8059DB6C  38 C4 A1 74 */	addi r6, r4, lit_598@l /* 0x8064A174@l */
/* 8059DB70  C0 47 00 00 */	lfs f2, 0(r7)
/* 8059DB74  D0 03 01 E8 */	stfs f0, 0x1e8(r3)
/* 8059DB78  3C 80 80 65 */	lis r4, data_8064A13C@ha /* 0x8064A13C@ha */
/* 8059DB7C  38 A4 A1 3C */	addi r5, r4, data_8064A13C@l /* 0x8064A13C@l */
/* 8059DB80  C0 26 00 00 */	lfs f1, 0(r6)
/* 8059DB84  D0 63 00 74 */	stfs f3, 0x74(r3)
/* 8059DB88  38 80 00 01 */	li r4, 1
/* 8059DB8C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059DB90  D0 43 00 78 */	stfs f2, 0x78(r3)
/* 8059DB94  D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 8059DB98  D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 8059DB9C  98 83 00 B5 */	stb r4, 0xb5(r3)
/* 8059DBA0  90 03 02 18 */	stw r0, 0x218(r3)
/* 8059DBA4  4E 80 00 20 */	blr 
