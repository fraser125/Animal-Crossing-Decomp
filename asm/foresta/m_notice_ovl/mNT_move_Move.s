lbl_805EB3D4:
/* 805EB3D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EB3D8  7C 08 02 A6 */	mflr r0
/* 805EB3DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EB3E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EB3E4  7C 9F 23 78 */	mr r31, r4
/* 805EB3E8  93 C1 00 08 */	stw r30, 8(r1)
/* 805EB3EC  7C 7E 1B 78 */	mr r30, r3
/* 805EB3F0  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805EB3F4  81 85 09 44 */	lwz r12, 0x944(r5)
/* 805EB3F8  7D 89 03 A6 */	mtctr r12
/* 805EB3FC  4E 80 04 21 */	bctrl 
/* 805EB400  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 805EB404  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805EB408  FC 00 00 50 */	fneg f0, f0
/* 805EB40C  80 63 09 B8 */	lwz r3, 0x9b8(r3)
/* 805EB410  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 805EB414  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EB418  83 C1 00 08 */	lwz r30, 8(r1)
/* 805EB41C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EB420  7C 08 03 A6 */	mtlr r0
/* 805EB424  38 21 00 10 */	addi r1, r1, 0x10
/* 805EB428  4E 80 00 20 */	blr 
