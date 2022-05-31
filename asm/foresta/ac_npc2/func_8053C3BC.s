lbl_8053C3BC:
/* 8053C3BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053C3C0  7C 08 02 A6 */	mflr r0
/* 8053C3C4  7C 65 1B 78 */	mr r5, r3
/* 8053C3C8  7C 83 23 78 */	mr r3, r4
/* 8053C3CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053C3D0  38 85 00 28 */	addi r4, r5, 0x28
/* 8053C3D4  48 0F 1B D5 */	bl sAdo_OngenTrgStart
/* 8053C3D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053C3DC  7C 08 03 A6 */	mtlr r0
/* 8053C3E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8053C3E4  4E 80 00 20 */	blr 
