lbl_8037B598:
/* 8037B598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037B59C  7C 08 02 A6 */	mflr r0
/* 8037B5A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037B5A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037B5A8  7C 7F 1B 78 */	mr r31, r3
/* 8037B5AC  88 03 00 00 */	lbz r0, 0(r3)
/* 8037B5B0  28 00 00 00 */	cmplwi r0, 0
/* 8037B5B4  41 82 00 14 */	beq lbl_8037B5C8
/* 8037B5B8  A0 7F 00 02 */	lhz r3, 2(r31)
/* 8037B5BC  48 2B 27 29 */	bl sAdo_BgmStop
/* 8037B5C0  38 00 00 00 */	li r0, 0
/* 8037B5C4  98 1F 00 00 */	stb r0, 0(r31)
lbl_8037B5C8:
/* 8037B5C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037B5CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037B5D0  7C 08 03 A6 */	mtlr r0
/* 8037B5D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8037B5D8  4E 80 00 20 */	blr 
