lbl_805EC374:
/* 805EC374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EC378  7C 08 02 A6 */	mflr r0
/* 805EC37C  38 80 00 05 */	li r4, 5
/* 805EC380  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EC384  38 00 00 00 */	li r0, 0
/* 805EC388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EC38C  93 C1 00 08 */	stw r30, 8(r1)
/* 805EC390  7C 7E 1B 78 */	mr r30, r3
/* 805EC394  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805EC398  90 03 09 3C */	stw r0, 0x93c(r3)
/* 805EC39C  3B E3 02 04 */	addi r31, r3, 0x204
/* 805EC3A0  7F E3 FB 78 */	mr r3, r31
/* 805EC3A4  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805EC3A8  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805EC3AC  7D 89 03 A6 */	mtctr r12
/* 805EC3B0  4E 80 04 21 */	bctrl 
/* 805EC3B4  38 60 01 7C */	li r3, 0x17c
/* 805EC3B8  48 04 19 4D */	bl sAdo_SysTrgStart
/* 805EC3BC  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805EC3C0  7F E4 FB 78 */	mr r4, r31
/* 805EC3C4  80 63 09 B8 */	lwz r3, 0x9b8(r3)
/* 805EC3C8  4B FF E6 CD */	bl mNT_set_init_data
/* 805EC3CC  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805EC3D0  38 00 00 08 */	li r0, 8
/* 805EC3D4  38 60 00 03 */	li r3, 3
/* 805EC3D8  80 84 09 B8 */	lwz r4, 0x9b8(r4)
/* 805EC3DC  98 04 00 01 */	stb r0, 1(r4)
/* 805EC3E0  4B D9 03 B1 */	bl mBGMPsComp_pause
/* 805EC3E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EC3E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EC3EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805EC3F0  7C 08 03 A6 */	mtlr r0
/* 805EC3F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805EC3F8  4E 80 00 20 */	blr 
