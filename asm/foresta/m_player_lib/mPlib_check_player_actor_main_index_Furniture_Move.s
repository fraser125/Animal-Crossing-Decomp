lbl_803DE238:
/* 803DE238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DE23C  7C 08 02 A6 */	mflr r0
/* 803DE240  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DE244  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DE248  3B E0 00 00 */	li r31, 0
/* 803DE24C  93 C1 00 08 */	stw r30, 8(r1)
/* 803DE250  7C 7E 1B 78 */	mr r30, r3
/* 803DE254  4B FF B4 1D */	bl mPlib_get_player_actor_main_index
/* 803DE258  2C 03 00 14 */	cmpwi r3, 0x14
/* 803DE25C  41 82 00 14 */	beq lbl_803DE270
/* 803DE260  7F C3 F3 78 */	mr r3, r30
/* 803DE264  4B FF B4 0D */	bl mPlib_get_player_actor_main_index
/* 803DE268  2C 03 00 15 */	cmpwi r3, 0x15
/* 803DE26C  40 82 00 08 */	bne lbl_803DE274
lbl_803DE270:
/* 803DE270  3B E0 00 01 */	li r31, 1
lbl_803DE274:
/* 803DE274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE278  7F E3 FB 78 */	mr r3, r31
/* 803DE27C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DE280  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DE284  7C 08 03 A6 */	mtlr r0
/* 803DE288  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE28C  4E 80 00 20 */	blr 
