lbl_8057CA78:
/* 8057CA78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057CA7C  7C 08 02 A6 */	mflr r0
/* 8057CA80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057CA84  4B E5 CB BD */	bl get_player_actor_withoutCheck
/* 8057CA88  28 03 00 00 */	cmplwi r3, 0
/* 8057CA8C  41 82 00 30 */	beq lbl_8057CABC
/* 8057CA90  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057CA94  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8057CA98  3C 84 00 02 */	addis r4, r4, 2
/* 8057CA9C  80 04 60 60 */	lwz r0, 0x6060(r4)
/* 8057CAA0  28 00 00 00 */	cmplwi r0, 0
/* 8057CAA4  41 82 00 18 */	beq lbl_8057CABC
/* 8057CAA8  A0 03 13 94 */	lhz r0, 0x1394(r3)
/* 8057CAAC  28 00 40 81 */	cmplwi r0, 0x4081
/* 8057CAB0  40 82 00 0C */	bne lbl_8057CABC
/* 8057CAB4  38 60 00 01 */	li r3, 1
/* 8057CAB8  48 00 00 08 */	b lbl_8057CAC0
lbl_8057CABC:
/* 8057CABC  38 60 00 00 */	li r3, 0
lbl_8057CAC0:
/* 8057CAC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057CAC4  7C 08 03 A6 */	mtlr r0
/* 8057CAC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057CACC  4E 80 00 20 */	blr 
