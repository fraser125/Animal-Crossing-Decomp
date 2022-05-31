lbl_804E0940:
/* 804E0940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E0944  7C 08 02 A6 */	mflr r0
/* 804E0948  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E094C  4B FF FF AD */	bl Player_actor_Get_ItemNoSubmenu
/* 804E0950  4B EF 91 85 */	bl mPlib_Get_ItemNoToItemKind
/* 804E0954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E0958  7C 08 03 A6 */	mtlr r0
/* 804E095C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E0960  4E 80 00 20 */	blr 
