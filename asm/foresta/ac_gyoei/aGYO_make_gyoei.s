lbl_805A20C8:
/* 805A20C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A20CC  7C 08 02 A6 */	mflr r0
/* 805A20D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A20D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A20D8  7C 7F 1B 78 */	mr r31, r3
/* 805A20DC  4B FF FD 3D */	bl aGYO_searchRegistSpace
/* 805A20E0  7C 64 1B 79 */	or. r4, r3, r3
/* 805A20E4  38 00 00 00 */	li r0, 0
/* 805A20E8  41 80 00 10 */	blt lbl_805A20F8
/* 805A20EC  7F E3 FB 78 */	mr r3, r31
/* 805A20F0  4B FF FD 6D */	bl aGYO_setupActor
/* 805A20F4  38 00 00 01 */	li r0, 1
lbl_805A20F8:
/* 805A20F8  7C 03 03 78 */	mr r3, r0
/* 805A20FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2100  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A2104  7C 08 03 A6 */	mtlr r0
/* 805A2108  38 21 00 10 */	addi r1, r1, 0x10
/* 805A210C  4E 80 00 20 */	blr 
