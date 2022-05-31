lbl_804DDC78:
/* 804DDC78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804DDC7C  7C 08 02 A6 */	mflr r0
/* 804DDC80  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DDC84  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804DDC88  2C 00 00 07 */	cmpwi r0, 7
/* 804DDC8C  40 82 00 4C */	bne lbl_804DDCD8
/* 804DDC90  38 00 00 00 */	li r0, 0
/* 804DDC94  38 81 00 08 */	addi r4, r1, 8
/* 804DDC98  B0 01 00 08 */	sth r0, 8(r1)
/* 804DDC9C  38 A1 00 0C */	addi r5, r1, 0xc
/* 804DDCA0  38 C1 00 18 */	addi r6, r1, 0x18
/* 804DDCA4  4B FF FF 7D */	bl Player_actor_check_putin_item
/* 804DDCA8  2C 03 00 00 */	cmpwi r3, 0
/* 804DDCAC  41 82 00 2C */	beq lbl_804DDCD8
/* 804DDCB0  A0 61 00 08 */	lhz r3, 8(r1)
/* 804DDCB4  38 00 00 00 */	li r0, 0
/* 804DDCB8  28 03 00 08 */	cmplwi r3, 8
/* 804DDCBC  41 80 00 10 */	blt lbl_804DDCCC
/* 804DDCC0  28 03 00 0A */	cmplwi r3, 0xa
/* 804DDCC4  41 81 00 08 */	bgt lbl_804DDCCC
/* 804DDCC8  38 00 00 01 */	li r0, 1
lbl_804DDCCC:
/* 804DDCCC  2C 00 00 00 */	cmpwi r0, 0
/* 804DDCD0  40 82 00 08 */	bne lbl_804DDCD8
/* 804DDCD4  48 00 00 08 */	b lbl_804DDCDC
lbl_804DDCD8:
/* 804DDCD8  38 60 00 00 */	li r3, 0
lbl_804DDCDC:
/* 804DDCDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DDCE0  7C 08 03 A6 */	mtlr r0
/* 804DDCE4  38 21 00 30 */	addi r1, r1, 0x30
/* 804DDCE8  4E 80 00 20 */	blr 
