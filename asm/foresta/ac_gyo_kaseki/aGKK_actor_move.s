lbl_805A6BA0:
/* 805A6BA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A6BA4  7C 08 02 A6 */	mflr r0
/* 805A6BA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A6BAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A6BB0  7C 9F 23 78 */	mr r31, r4
/* 805A6BB4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A6BB8  7C 7E 1B 78 */	mr r30, r3
/* 805A6BBC  80 83 00 28 */	lwz r4, 0x28(r3)
/* 805A6BC0  38 61 00 08 */	addi r3, r1, 8
/* 805A6BC4  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805A6BC8  90 81 00 08 */	stw r4, 8(r1)
/* 805A6BCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A6BD0  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805A6BD4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A6BD8  4B FF EA 1D */	bl aGKK_Get_water_surface_position_y
/* 805A6BDC  D0 3E 00 2C */	stfs f1, 0x2c(r30)
/* 805A6BE0  7F C3 F3 78 */	mr r3, r30
/* 805A6BE4  7F E4 FB 78 */	mr r4, r31
/* 805A6BE8  81 9E 01 E4 */	lwz r12, 0x1e4(r30)
/* 805A6BEC  7D 89 03 A6 */	mtctr r12
/* 805A6BF0  4E 80 04 21 */	bctrl 
/* 805A6BF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A6BF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A6BFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A6C00  7C 08 03 A6 */	mtlr r0
/* 805A6C04  38 21 00 20 */	addi r1, r1, 0x20
/* 805A6C08  4E 80 00 20 */	blr 
