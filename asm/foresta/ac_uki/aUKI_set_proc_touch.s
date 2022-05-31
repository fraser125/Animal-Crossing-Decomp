lbl_804AF228:
/* 804AF228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AF22C  7C 08 02 A6 */	mflr r0
/* 804AF230  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AF234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AF238  7C 9F 23 78 */	mr r31, r4
/* 804AF23C  93 C1 00 08 */	stw r30, 8(r1)
/* 804AF240  7C 7E 1B 78 */	mr r30, r3
/* 804AF244  4B FF E9 05 */	bl aUKI_clear_spd
/* 804AF248  7F C3 F3 78 */	mr r3, r30
/* 804AF24C  7F E4 FB 78 */	mr r4, r31
/* 804AF250  4B FF ED 2D */	bl aUKI_movement
/* 804AF254  7F C3 F3 78 */	mr r3, r30
/* 804AF258  4B EC 4F B1 */	bl Actor_position_move
/* 804AF25C  38 60 00 0C */	li r3, 0xc
/* 804AF260  38 00 00 02 */	li r0, 2
/* 804AF264  B0 7E 02 62 */	sth r3, 0x262(r30)
/* 804AF268  90 1E 02 8C */	stw r0, 0x28c(r30)
/* 804AF26C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AF270  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AF274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AF278  7C 08 03 A6 */	mtlr r0
/* 804AF27C  38 21 00 10 */	addi r1, r1, 0x10
/* 804AF280  4E 80 00 20 */	blr 
