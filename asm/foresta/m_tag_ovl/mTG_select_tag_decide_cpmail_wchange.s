lbl_805FB370:
/* 805FB370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FB374  7C 08 02 A6 */	mflr r0
/* 805FB378  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FB37C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FB380  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805FB384  80 A5 00 40 */	lwz r5, 0x40(r5)
/* 805FB388  83 E4 09 C0 */	lwz r31, 0x9c0(r4)
/* 805FB38C  88 1F 0B A8 */	lbz r0, 0xba8(r31)
/* 805FB390  7C 00 28 00 */	cmpw r0, r5
/* 805FB394  41 82 00 34 */	beq lbl_805FB3C8
/* 805FB398  98 BF 0B B2 */	stb r5, 0xbb2(r31)
/* 805FB39C  38 00 00 28 */	li r0, 0x28
/* 805FB3A0  B0 1F 0B B0 */	sth r0, 0xbb0(r31)
/* 805FB3A4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805FB3A8  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805FB3AC  81 84 03 70 */	lwz r12, 0x370(r4)
/* 805FB3B0  7D 89 03 A6 */	mtctr r12
/* 805FB3B4  4E 80 04 21 */	bctrl 
/* 805FB3B8  38 60 04 1C */	li r3, 0x41c
/* 805FB3BC  48 03 29 49 */	bl sAdo_SysTrgStart
/* 805FB3C0  38 00 00 00 */	li r0, 0
/* 805FB3C4  90 1F 0B B4 */	stw r0, 0xbb4(r31)
lbl_805FB3C8:
/* 805FB3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FB3CC  38 60 00 00 */	li r3, 0
/* 805FB3D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FB3D4  7C 08 03 A6 */	mtlr r0
/* 805FB3D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805FB3DC  4E 80 00 20 */	blr 
