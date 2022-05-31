lbl_803AB3D4:
/* 803AB3D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AB3D8  7C 08 02 A6 */	mflr r0
/* 803AB3DC  3C 60 81 16 */	lis r3, l_mFI_climate@ha /* 0x81167D00@ha */
/* 803AB3E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AB3E4  84 03 7D 00 */	lwzu r0, l_mFI_climate@l(r3)  /* 0x81167D00@l */
/* 803AB3E8  2C 00 00 04 */	cmpwi r0, 4
/* 803AB3EC  41 82 00 30 */	beq lbl_803AB41C
/* 803AB3F0  40 80 00 14 */	bge lbl_803AB404
/* 803AB3F4  2C 00 00 02 */	cmpwi r0, 2
/* 803AB3F8  41 82 00 18 */	beq lbl_803AB410
/* 803AB3FC  40 80 00 2C */	bge lbl_803AB428
/* 803AB400  48 00 00 3C */	b lbl_803AB43C
lbl_803AB404:
/* 803AB404  2C 00 00 06 */	cmpwi r0, 6
/* 803AB408  40 80 00 34 */	bge lbl_803AB43C
/* 803AB40C  48 00 00 28 */	b lbl_803AB434
lbl_803AB410:
/* 803AB410  38 00 00 04 */	li r0, 4
/* 803AB414  90 03 00 00 */	stw r0, 0(r3)
/* 803AB418  48 00 00 24 */	b lbl_803AB43C
lbl_803AB41C:
/* 803AB41C  38 00 00 00 */	li r0, 0
/* 803AB420  90 03 00 00 */	stw r0, 0(r3)
/* 803AB424  48 00 00 18 */	b lbl_803AB43C
lbl_803AB428:
/* 803AB428  38 00 00 05 */	li r0, 5
/* 803AB42C  90 03 00 00 */	stw r0, 0(r3)
/* 803AB430  48 00 00 0C */	b lbl_803AB43C
lbl_803AB434:
/* 803AB434  38 00 00 01 */	li r0, 1
/* 803AB438  90 03 00 00 */	stw r0, 0(r3)
lbl_803AB43C:
/* 803AB43C  4B FE 23 F9 */	bl mCoBG_InitBoatCollision
/* 803AB440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AB444  7C 08 03 A6 */	mtlr r0
/* 803AB448  38 21 00 10 */	addi r1, r1, 0x10
/* 803AB44C  4E 80 00 20 */	blr 
