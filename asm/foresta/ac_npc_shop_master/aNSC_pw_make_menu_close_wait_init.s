lbl_8057C1F8:
/* 8057C1F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C1FC  7C 08 02 A6 */	mflr r0
/* 8057C200  38 A0 00 20 */	li r5, 0x20
/* 8057C204  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C208  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057C20C  7C 9F 23 78 */	mr r31, r4
/* 8057C210  38 80 00 10 */	li r4, 0x10
/* 8057C214  93 C1 00 08 */	stw r30, 8(r1)
/* 8057C218  7C 7E 1B 78 */	mr r30, r3
/* 8057C21C  38 7E 09 C8 */	addi r3, r30, 0x9c8
/* 8057C220  4B E3 E8 29 */	bl mem_clear
/* 8057C224  38 7F 1D EC */	addi r3, r31, 0x1dec
/* 8057C228  38 FE 09 C8 */	addi r7, r30, 0x9c8
/* 8057C22C  38 80 00 1D */	li r4, 0x1d
/* 8057C230  38 A0 00 00 */	li r5, 0
/* 8057C234  38 C0 00 00 */	li r6, 0
/* 8057C238  4B E7 34 CD */	bl mSM_open_submenu_new
/* 8057C23C  38 00 00 2C */	li r0, 0x2c
/* 8057C240  90 1E 09 98 */	stw r0, 0x998(r30)
/* 8057C244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C248  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057C24C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057C250  7C 08 03 A6 */	mtlr r0
/* 8057C254  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C258  4E 80 00 20 */	blr 
