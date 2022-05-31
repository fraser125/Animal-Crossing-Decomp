lbl_804EBCAC:
/* 804EBCAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EBCB0  7C 08 02 A6 */	mflr r0
/* 804EBCB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EBCB8  4B EE D9 89 */	bl get_player_actor_withoutCheck
/* 804EBCBC  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804EBCC0  2C 00 00 0B */	cmpwi r0, 0xb
/* 804EBCC4  40 80 00 18 */	bge lbl_804EBCDC
/* 804EBCC8  2C 00 00 07 */	cmpwi r0, 7
/* 804EBCCC  40 80 00 08 */	bge lbl_804EBCD4
/* 804EBCD0  48 00 00 0C */	b lbl_804EBCDC
lbl_804EBCD4:
/* 804EBCD4  38 60 00 01 */	li r3, 1
/* 804EBCD8  48 00 00 08 */	b lbl_804EBCE0
lbl_804EBCDC:
/* 804EBCDC  38 60 00 00 */	li r3, 0
lbl_804EBCE0:
/* 804EBCE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EBCE4  7C 08 03 A6 */	mtlr r0
/* 804EBCE8  38 21 00 10 */	addi r1, r1, 0x10
/* 804EBCEC  4E 80 00 20 */	blr 
