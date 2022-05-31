lbl_803BB130:
/* 803BB130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BB134  7C 08 02 A6 */	mflr r0
/* 803BB138  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BB13C  C0 64 00 08 */	lfs f3, 8(r4)
/* 803BB140  C0 23 00 08 */	lfs f1, 8(r3)
/* 803BB144  C0 44 00 00 */	lfs f2, 0(r4)
/* 803BB148  C0 03 00 00 */	lfs f0, 0(r3)
/* 803BB14C  EC 23 08 28 */	fsubs f1, f3, f1
/* 803BB150  EC 42 00 28 */	fsubs f2, f2, f0
/* 803BB154  48 05 0E AD */	bl atans_table
/* 803BB158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BB15C  7C 08 03 A6 */	mtlr r0
/* 803BB160  38 21 00 10 */	addi r1, r1, 0x10
/* 803BB164  4E 80 00 20 */	blr 
