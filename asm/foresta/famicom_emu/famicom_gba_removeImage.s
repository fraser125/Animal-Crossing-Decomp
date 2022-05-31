lbl_8062D7F4:
/* 8062D7F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062D7F8  7C 08 02 A6 */	mflr r0
/* 8062D7FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D800  4B A3 41 B5 */	bl JC__JKRRemoveResource
/* 8062D804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062D808  7C 08 03 A6 */	mtlr r0
/* 8062D80C  38 21 00 10 */	addi r1, r1, 0x10
/* 8062D810  4E 80 00 20 */	blr 
