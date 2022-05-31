lbl_805F81EC:
/* 805F81EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F81F0  7C 08 02 A6 */	mflr r0
/* 805F81F4  38 A0 00 01 */	li r5, 1
/* 805F81F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F81FC  4B FF FE 61 */	bl mTG_nw_room_put_proc
/* 805F8200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F8204  7C 08 03 A6 */	mtlr r0
/* 805F8208  38 21 00 10 */	addi r1, r1, 0x10
/* 805F820C  4E 80 00 20 */	blr 
