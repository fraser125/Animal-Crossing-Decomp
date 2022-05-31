lbl_805D83B0:
/* 805D83B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D83B4  7C 08 02 A6 */	mflr r0
/* 805D83B8  38 C0 00 00 */	li r6, 0
/* 805D83BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D83C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D83C4  7C 9F 23 78 */	mr r31, r4
/* 805D83C8  38 80 00 10 */	li r4, 0x10
/* 805D83CC  4B E1 73 11 */	bl mSM_open_submenu
/* 805D83D0  38 00 00 02 */	li r0, 2
/* 805D83D4  38 60 10 03 */	li r3, 0x1003
/* 805D83D8  90 1F 00 04 */	stw r0, 4(r31)
/* 805D83DC  90 1F 00 30 */	stw r0, 0x30(r31)
/* 805D83E0  48 05 59 25 */	bl sAdo_SysTrgStart
/* 805D83E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D83E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D83EC  7C 08 03 A6 */	mtlr r0
/* 805D83F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805D83F4  4E 80 00 20 */	blr 
