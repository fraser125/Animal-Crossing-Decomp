lbl_8062E3D0:
/* 8062E3D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062E3D4  7C 08 02 A6 */	mflr r0
/* 8062E3D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062E3DC  4B 9E 5F 89 */	bl Na_KishaStatusTrg
/* 8062E3E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062E3E4  7C 08 03 A6 */	mtlr r0
/* 8062E3E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8062E3EC  4E 80 00 20 */	blr 
