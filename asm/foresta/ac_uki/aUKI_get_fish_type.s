lbl_804AD788:
/* 804AD788  80 03 02 90 */	lwz r0, 0x290(r3)
/* 804AD78C  38 60 00 00 */	li r3, 0
/* 804AD790  2C 00 00 00 */	cmpwi r0, 0
/* 804AD794  4D 80 00 20 */	bltlr 
/* 804AD798  2C 00 00 2D */	cmpwi r0, 0x2d
/* 804AD79C  4C 80 00 20 */	bgelr 
/* 804AD7A0  3C 60 80 69 */	lis r3, fish_data@ha /* 0x8068F900@ha */
/* 804AD7A4  54 00 08 3C */	slwi r0, r0, 1
/* 804AD7A8  38 63 F9 00 */	addi r3, r3, fish_data@l /* 0x8068F900@l */
/* 804AD7AC  7C 63 02 2E */	lhzx r3, r3, r0
/* 804AD7B0  4E 80 00 20 */	blr 
