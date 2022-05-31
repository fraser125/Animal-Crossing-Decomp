lbl_803EF778:
/* 803EF778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EF77C  7C 08 02 A6 */	mflr r0
/* 803EF780  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF784  4B FE 9E BD */	bl get_player_actor_withoutCheck
/* 803EF788  28 03 00 00 */	cmplwi r3, 0
/* 803EF78C  41 82 00 0C */	beq lbl_803EF798
/* 803EF790  38 00 00 01 */	li r0, 1
/* 803EF794  90 03 13 90 */	stw r0, 0x1390(r3)
lbl_803EF798:
/* 803EF798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF79C  7C 08 03 A6 */	mtlr r0
/* 803EF7A0  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF7A4  4E 80 00 20 */	blr 
