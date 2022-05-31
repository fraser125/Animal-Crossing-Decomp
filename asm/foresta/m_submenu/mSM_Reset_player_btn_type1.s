lbl_803EF740:
/* 803EF740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EF744  7C 08 02 A6 */	mflr r0
/* 803EF748  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF74C  4B FE 9E F5 */	bl get_player_actor_withoutCheck
/* 803EF750  28 03 00 00 */	cmplwi r3, 0
/* 803EF754  41 82 00 14 */	beq lbl_803EF768
/* 803EF758  38 80 00 00 */	li r4, 0
/* 803EF75C  38 00 00 01 */	li r0, 1
/* 803EF760  90 83 13 8C */	stw r4, 0x138c(r3)
/* 803EF764  90 03 13 90 */	stw r0, 0x1390(r3)
lbl_803EF768:
/* 803EF768  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF76C  7C 08 03 A6 */	mtlr r0
/* 803EF770  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF774  4E 80 00 20 */	blr 
