lbl_8055E440:
/* 8055E440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E444  7C 08 02 A6 */	mflr r0
/* 8055E448  38 A0 08 00 */	li r5, 0x800
/* 8055E44C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E450  A8 83 09 A6 */	lha r4, 0x9a6(r3)
/* 8055E454  38 63 00 DE */	addi r3, r3, 0xde
/* 8055E458  4B E5 C6 ED */	bl chase_angle
/* 8055E45C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055E460  7C 08 03 A6 */	mtlr r0
/* 8055E464  38 21 00 10 */	addi r1, r1, 0x10
/* 8055E468  4E 80 00 20 */	blr 
