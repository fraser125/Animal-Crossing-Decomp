lbl_8052E1D8:
/* 8052E1D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052E1DC  7C 08 02 A6 */	mflr r0
/* 8052E1E0  28 07 00 00 */	cmplwi r7, 0
/* 8052E1E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052E1E8  98 83 08 1A */	stb r4, 0x81a(r3)
/* 8052E1EC  98 A3 08 1B */	stb r5, 0x81b(r3)
/* 8052E1F0  90 C3 08 1C */	stw r6, 0x81c(r3)
/* 8052E1F4  41 82 00 14 */	beq lbl_8052E208
/* 8052E1F8  7C E4 3B 78 */	mr r4, r7
/* 8052E1FC  38 63 08 20 */	addi r3, r3, 0x820
/* 8052E200  4B E8 CC BD */	bl xyz_t_move
/* 8052E204  48 00 00 10 */	b lbl_8052E214
lbl_8052E208:
/* 8052E208  38 63 08 20 */	addi r3, r3, 0x820
/* 8052E20C  38 80 00 0C */	li r4, 0xc
/* 8052E210  4B B2 EE 59 */	bl bzero
lbl_8052E214:
/* 8052E214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052E218  7C 08 03 A6 */	mtlr r0
/* 8052E21C  38 21 00 10 */	addi r1, r1, 0x10
/* 8052E220  4E 80 00 20 */	blr 
