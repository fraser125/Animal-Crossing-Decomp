lbl_805C2094:
/* 805C2094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C2098  7C 08 02 A6 */	mflr r0
/* 805C209C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C20A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C20A4  93 C1 00 08 */	stw r30, 8(r1)
/* 805C20A8  7C 7E 1B 78 */	mr r30, r3
/* 805C20AC  80 04 00 08 */	lwz r0, 8(r4)
/* 805C20B0  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805C20B4  1C A0 00 48 */	mulli r5, r0, 0x48
/* 805C20B8  3B E5 00 54 */	addi r31, r5, 0x54
/* 805C20BC  7F E6 FA 14 */	add r31, r6, r31
/* 805C20C0  80 1F 00 04 */	lwz r0, 4(r31)
/* 805C20C4  2C 00 00 01 */	cmpwi r0, 1
/* 805C20C8  40 82 00 30 */	bne lbl_805C20F8
/* 805C20CC  81 86 09 40 */	lwz r12, 0x940(r6)
/* 805C20D0  7D 89 03 A6 */	mtctr r12
/* 805C20D4  4E 80 04 21 */	bctrl 
/* 805C20D8  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805C20DC  7F E3 FB 78 */	mr r3, r31
/* 805C20E0  38 80 00 04 */	li r4, 4
/* 805C20E4  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805C20E8  7D 89 03 A6 */	mtctr r12
/* 805C20EC  4E 80 04 21 */	bctrl 
/* 805C20F0  38 60 10 03 */	li r3, 0x1003
/* 805C20F4  48 06 BC 11 */	bl sAdo_SysTrgStart
lbl_805C20F8:
/* 805C20F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C20FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C2100  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C2104  7C 08 03 A6 */	mtlr r0
/* 805C2108  38 21 00 10 */	addi r1, r1, 0x10
/* 805C210C  4E 80 00 20 */	blr 
