lbl_8037F5F8:
/* 8037F5F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037F5FC  7C 08 02 A6 */	mflr r0
/* 8037F600  3C 80 80 64 */	lis r4, lit_508@ha /* 0x8064136C@ha */
/* 8037F604  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037F608  C0 04 13 6C */	lfs f0, lit_508@l(r4)  /* 0x8064136C@l */
/* 8037F60C  C0 23 1C 00 */	lfs f1, 0x1c00(r3)
/* 8037F610  EC 01 00 2A */	fadds f0, f1, f0
/* 8037F614  D0 03 1C 00 */	stfs f0, 0x1c00(r3)
/* 8037F618  C0 23 1C 00 */	lfs f1, 0x1c00(r3)
/* 8037F61C  C0 03 1C 1C */	lfs f0, 0x1c1c(r3)
/* 8037F620  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037F624  40 81 00 18 */	ble lbl_8037F63C
/* 8037F628  38 00 00 00 */	li r0, 0
/* 8037F62C  38 80 00 00 */	li r4, 0
/* 8037F630  90 03 1B F4 */	stw r0, 0x1bf4(r3)
/* 8037F634  38 A0 00 05 */	li r5, 5
/* 8037F638  48 00 10 A1 */	bl Camera2_request_main_normal
lbl_8037F63C:
/* 8037F63C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037F640  7C 08 03 A6 */	mtlr r0
/* 8037F644  38 21 00 10 */	addi r1, r1, 0x10
/* 8037F648  4E 80 00 20 */	blr 
