lbl_8052FFA8:
/* 8052FFA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052FFAC  7C 08 02 A6 */	mflr r0
/* 8052FFB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052FFB4  88 03 08 30 */	lbz r0, 0x830(r3)
/* 8052FFB8  88 A3 08 31 */	lbz r5, 0x831(r3)
/* 8052FFBC  7C 00 28 40 */	cmplw r0, r5
/* 8052FFC0  41 82 00 10 */	beq lbl_8052FFD0
/* 8052FFC4  98 A3 08 30 */	stb r5, 0x830(r3)
/* 8052FFC8  68 A0 00 01 */	xori r0, r5, 1
/* 8052FFCC  98 03 01 08 */	stb r0, 0x108(r3)
lbl_8052FFD0:
/* 8052FFD0  88 03 08 30 */	lbz r0, 0x830(r3)
/* 8052FFD4  28 00 00 01 */	cmplwi r0, 1
/* 8052FFD8  40 82 00 0C */	bne lbl_8052FFE4
/* 8052FFDC  4B FF FD E9 */	bl aNPC_actor_move_hide
/* 8052FFE0  48 00 00 08 */	b lbl_8052FFE8
lbl_8052FFE4:
/* 8052FFE4  4B FF FF 11 */	bl aNPC_actor_move_show
lbl_8052FFE8:
/* 8052FFE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052FFEC  7C 08 03 A6 */	mtlr r0
/* 8052FFF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8052FFF4  4E 80 00 20 */	blr 
