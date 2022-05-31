lbl_8037B6B4:
/* 8037B6B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037B6B8  7C 08 02 A6 */	mflr r0
/* 8037B6BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037B6C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037B6C4  7C 7F 1B 78 */	mr r31, r3
/* 8037B6C8  88 03 00 00 */	lbz r0, 0(r3)
/* 8037B6CC  28 00 00 00 */	cmplwi r0, 0
/* 8037B6D0  41 82 00 14 */	beq lbl_8037B6E4
/* 8037B6D4  88 7F 00 01 */	lbz r3, 1(r31)
/* 8037B6D8  48 2B 2A A1 */	bl sAdo_Pause
/* 8037B6DC  38 00 00 00 */	li r0, 0
/* 8037B6E0  98 1F 00 00 */	stb r0, 0(r31)
lbl_8037B6E4:
/* 8037B6E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037B6E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037B6EC  7C 08 03 A6 */	mtlr r0
/* 8037B6F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8037B6F4  4E 80 00 20 */	blr 
