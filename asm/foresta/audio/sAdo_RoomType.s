lbl_8062E570:
/* 8062E570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062E574  7C 08 02 A6 */	mflr r0
/* 8062E578  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062E57C  4B 9E 6F 41 */	bl Na_RoomType
/* 8062E580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062E584  7C 08 03 A6 */	mtlr r0
/* 8062E588  38 21 00 10 */	addi r1, r1, 0x10
/* 8062E58C  4E 80 00 20 */	blr 
