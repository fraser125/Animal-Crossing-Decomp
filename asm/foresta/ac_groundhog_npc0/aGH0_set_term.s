lbl_80590CD0:
/* 80590CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80590CD4  7C 08 02 A6 */	mflr r0
/* 80590CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80590CDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80590CE0  7C 7F 1B 78 */	mr r31, r3
/* 80590CE4  4B FF FF C9 */	bl aGH0_get_now_term
/* 80590CE8  90 7F 09 A0 */	stw r3, 0x9a0(r31)
/* 80590CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80590CF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80590CF4  7C 08 03 A6 */	mtlr r0
/* 80590CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80590CFC  4E 80 00 20 */	blr 
