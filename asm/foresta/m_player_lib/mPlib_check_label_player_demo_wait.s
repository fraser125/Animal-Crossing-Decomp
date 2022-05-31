lbl_803DB874:
/* 803DB874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB878  7C 08 02 A6 */	mflr r0
/* 803DB87C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB880  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB884  7C 9F 23 78 */	mr r31, r4
/* 803DB888  93 C1 00 08 */	stw r30, 8(r1)
/* 803DB88C  7C 7E 1B 78 */	mr r30, r3
/* 803DB890  4B FF DD E1 */	bl mPlib_get_player_actor_main_index
/* 803DB894  2C 03 00 4A */	cmpwi r3, 0x4a
/* 803DB898  40 82 00 20 */	bne lbl_803DB8B8
/* 803DB89C  7F C3 F3 78 */	mr r3, r30
/* 803DB8A0  4B FF DD A1 */	bl get_player_actor_withoutCheck
/* 803DB8A4  80 03 0D 1C */	lwz r0, 0xd1c(r3)
/* 803DB8A8  7C 00 F8 40 */	cmplw r0, r31
/* 803DB8AC  40 82 00 0C */	bne lbl_803DB8B8
/* 803DB8B0  38 60 00 01 */	li r3, 1
/* 803DB8B4  48 00 00 08 */	b lbl_803DB8BC
lbl_803DB8B8:
/* 803DB8B8  38 60 00 00 */	li r3, 0
lbl_803DB8BC:
/* 803DB8BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB8C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB8C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DB8C8  7C 08 03 A6 */	mtlr r0
/* 803DB8CC  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB8D0  4E 80 00 20 */	blr 
