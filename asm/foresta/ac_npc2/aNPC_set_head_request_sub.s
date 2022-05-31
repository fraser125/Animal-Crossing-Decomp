lbl_8053CCAC:
/* 8053CCAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053CCB0  7C 08 02 A6 */	mflr r0
/* 8053CCB4  28 07 00 00 */	cmplwi r7, 0
/* 8053CCB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053CCBC  98 83 08 1A */	stb r4, 0x81a(r3)
/* 8053CCC0  98 A3 08 1B */	stb r5, 0x81b(r3)
/* 8053CCC4  90 C3 08 1C */	stw r6, 0x81c(r3)
/* 8053CCC8  41 82 00 14 */	beq lbl_8053CCDC
/* 8053CCCC  7C E4 3B 78 */	mr r4, r7
/* 8053CCD0  38 63 08 20 */	addi r3, r3, 0x820
/* 8053CCD4  4B E7 E1 E9 */	bl xyz_t_move
/* 8053CCD8  48 00 00 10 */	b lbl_8053CCE8
lbl_8053CCDC:
/* 8053CCDC  38 63 08 20 */	addi r3, r3, 0x820
/* 8053CCE0  38 80 00 0C */	li r4, 0xc
/* 8053CCE4  4B B2 03 85 */	bl bzero
lbl_8053CCE8:
/* 8053CCE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053CCEC  7C 08 03 A6 */	mtlr r0
/* 8053CCF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8053CCF4  4E 80 00 20 */	blr 
