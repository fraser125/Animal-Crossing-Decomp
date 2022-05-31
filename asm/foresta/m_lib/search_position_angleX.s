lbl_803BB168:
/* 803BB168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BB16C  7C 08 02 A6 */	mflr r0
/* 803BB170  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BB174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BB178  7C 9F 23 78 */	mr r31, r4
/* 803BB17C  93 C1 00 08 */	stw r30, 8(r1)
/* 803BB180  7C 7E 1B 78 */	mr r30, r3
/* 803BB184  4B FF FF 09 */	bl search_position_distanceXZ
/* 803BB188  C0 5E 00 04 */	lfs f2, 4(r30)
/* 803BB18C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 803BB190  EC 42 00 28 */	fsubs f2, f2, f0
/* 803BB194  48 05 0E 6D */	bl atans_table
/* 803BB198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BB19C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BB1A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BB1A4  7C 08 03 A6 */	mtlr r0
/* 803BB1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 803BB1AC  4E 80 00 20 */	blr 
