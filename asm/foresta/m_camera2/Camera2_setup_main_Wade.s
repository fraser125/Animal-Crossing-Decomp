lbl_8037F550:
/* 8037F550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037F554  7C 08 02 A6 */	mflr r0
/* 8037F558  3C 80 80 64 */	lis r4, lit_474@ha /* 0x80641354@ha */
/* 8037F55C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037F560  C0 04 13 54 */	lfs f0, lit_474@l(r4)  /* 0x80641354@l */
/* 8037F564  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037F568  7C 7F 1B 78 */	mr r31, r3
/* 8037F56C  D0 03 1C 00 */	stfs f0, 0x1c00(r3)
/* 8037F570  80 83 1B 94 */	lwz r4, 0x1b94(r3)
/* 8037F574  80 03 1B 98 */	lwz r0, 0x1b98(r3)
/* 8037F578  90 83 1C 04 */	stw r4, 0x1c04(r3)
/* 8037F57C  90 03 1C 08 */	stw r0, 0x1c08(r3)
/* 8037F580  80 03 1B 9C */	lwz r0, 0x1b9c(r3)
/* 8037F584  90 03 1C 0C */	stw r0, 0x1c0c(r3)
/* 8037F588  80 83 1C 50 */	lwz r4, 0x1c50(r3)
/* 8037F58C  80 03 1C 54 */	lwz r0, 0x1c54(r3)
/* 8037F590  90 83 1C 10 */	stw r4, 0x1c10(r3)
/* 8037F594  90 03 1C 14 */	stw r0, 0x1c14(r3)
/* 8037F598  80 03 1C 58 */	lwz r0, 0x1c58(r3)
/* 8037F59C  90 03 1C 18 */	stw r0, 0x1c18(r3)
/* 8037F5A0  C0 03 1C 5C */	lfs f0, 0x1c5c(r3)
/* 8037F5A4  D0 03 1C 1C */	stfs f0, 0x1c1c(r3)
/* 8037F5A8  4B FF F4 ED */	bl Camera2_setup_main_Base
/* 8037F5AC  38 00 00 09 */	li r0, 9
/* 8037F5B0  90 1F 1B F4 */	stw r0, 0x1bf4(r31)
/* 8037F5B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037F5B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037F5BC  7C 08 03 A6 */	mtlr r0
/* 8037F5C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8037F5C4  4E 80 00 20 */	blr 
