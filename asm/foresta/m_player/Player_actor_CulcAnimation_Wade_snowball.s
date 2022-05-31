lbl_804E93B0:
/* 804E93B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E93B4  7C 08 02 A6 */	mflr r0
/* 804E93B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E93BC  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 804E93C0  2C 00 00 00 */	cmpwi r0, 0
/* 804E93C4  40 82 00 10 */	bne lbl_804E93D4
/* 804E93C8  38 81 00 08 */	addi r4, r1, 8
/* 804E93CC  4B FE D1 BD */	bl Player_actor_CulcAnimation_Base2
/* 804E93D0  48 00 00 08 */	b lbl_804E93D8
lbl_804E93D4:
/* 804E93D4  38 60 00 00 */	li r3, 0
lbl_804E93D8:
/* 804E93D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E93DC  7C 08 03 A6 */	mtlr r0
/* 804E93E0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E93E4  4E 80 00 20 */	blr 
