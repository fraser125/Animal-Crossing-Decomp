lbl_803EF3D4:
/* 803EF3D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EF3D8  7C 08 02 A6 */	mflr r0
/* 803EF3DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF3E0  4B FF FF 9D */	bl mSM_CHECK_ALL_FISH_GET_SUB
/* 803EF3E4  20 03 00 28 */	subfic r0, r3, 0x28
/* 803EF3E8  7C 00 00 34 */	cntlzw r0, r0
/* 803EF3EC  54 03 D9 7E */	srwi r3, r0, 5
/* 803EF3F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF3F4  7C 08 03 A6 */	mtlr r0
/* 803EF3F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF3FC  4E 80 00 20 */	blr 
