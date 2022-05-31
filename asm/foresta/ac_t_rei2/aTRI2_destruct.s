lbl_804A98E8:
/* 804A98E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A98EC  7C 08 02 A6 */	mflr r0
/* 804A98F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A98F4  4B EC AB 4D */	bl Actor_delete
/* 804A98F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A98FC  7C 08 03 A6 */	mtlr r0
/* 804A9900  38 21 00 10 */	addi r1, r1, 0x10
/* 804A9904  4E 80 00 20 */	blr 
