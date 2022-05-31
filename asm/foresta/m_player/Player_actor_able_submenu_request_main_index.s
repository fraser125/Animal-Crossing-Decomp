lbl_804DDCEC:
/* 804DDCEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DDCF0  7C 08 02 A6 */	mflr r0
/* 804DDCF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DDCF8  4B EF B9 49 */	bl get_player_actor_withoutCheck
/* 804DDCFC  80 03 0D 10 */	lwz r0, 0xd10(r3)
/* 804DDD00  2C 00 00 00 */	cmpwi r0, 0
/* 804DDD04  41 82 00 3C */	beq lbl_804DDD40
/* 804DDD08  80 83 0D 08 */	lwz r4, 0xd08(r3)
/* 804DDD0C  38 00 00 00 */	li r0, 0
/* 804DDD10  2C 04 00 00 */	cmpwi r4, 0
/* 804DDD14  41 80 00 10 */	blt lbl_804DDD24
/* 804DDD18  2C 04 00 79 */	cmpwi r4, 0x79
/* 804DDD1C  40 80 00 08 */	bge lbl_804DDD24
/* 804DDD20  38 00 00 01 */	li r0, 1
lbl_804DDD24:
/* 804DDD24  2C 00 00 00 */	cmpwi r0, 0
/* 804DDD28  41 82 00 20 */	beq lbl_804DDD48
/* 804DDD2C  3C 60 80 64 */	lis r3, data_4823@ha /* 0x80647BA8@ha */
/* 804DDD30  38 63 7B A8 */	addi r3, r3, data_4823@l /* 0x80647BA8@l */
/* 804DDD34  7C 63 20 AE */	lbzx r3, r3, r4
/* 804DDD38  7C 63 07 74 */	extsb r3, r3
/* 804DDD3C  48 00 00 10 */	b lbl_804DDD4C
lbl_804DDD40:
/* 804DDD40  38 60 00 01 */	li r3, 1
/* 804DDD44  48 00 00 08 */	b lbl_804DDD4C
lbl_804DDD48:
/* 804DDD48  38 60 00 00 */	li r3, 0
lbl_804DDD4C:
/* 804DDD4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DDD50  7C 08 03 A6 */	mtlr r0
/* 804DDD54  38 21 00 10 */	addi r1, r1, 0x10
/* 804DDD58  4E 80 00 20 */	blr 
