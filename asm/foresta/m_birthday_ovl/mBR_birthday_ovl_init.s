lbl_805C4CC0:
/* 805C4CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C4CC4  7C 08 02 A6 */	mflr r0
/* 805C4CC8  38 80 00 05 */	li r4, 5
/* 805C4CCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C4CD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C4CD4  93 C1 00 08 */	stw r30, 8(r1)
/* 805C4CD8  7C 7E 1B 78 */	mr r30, r3
/* 805C4CDC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C4CE0  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805C4CE4  38 65 02 DC */	addi r3, r5, 0x2dc
/* 805C4CE8  83 E5 09 BC */	lwz r31, 0x9bc(r5)
/* 805C4CEC  7D 89 03 A6 */	mtctr r12
/* 805C4CF0  4E 80 04 21 */	bctrl 
/* 805C4CF4  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805C4CF8  38 A0 00 00 */	li r5, 0
/* 805C4CFC  38 00 00 01 */	li r0, 1
/* 805C4D00  38 60 01 7C */	li r3, 0x17c
/* 805C4D04  90 A4 09 3C */	stw r5, 0x93c(r4)
/* 805C4D08  B0 1F 00 00 */	sth r0, 0(r31)
/* 805C4D0C  B0 1F 00 02 */	sth r0, 2(r31)
/* 805C4D10  48 06 8F F5 */	bl sAdo_SysTrgStart
/* 805C4D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C4D18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C4D1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C4D20  7C 08 03 A6 */	mtlr r0
/* 805C4D24  38 21 00 10 */	addi r1, r1, 0x10
/* 805C4D28  4E 80 00 20 */	blr 
