lbl_804DFF64:
/* 804DFF64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFF68  7C 08 02 A6 */	mflr r0
/* 804DFF6C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804DFF70  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804DFF74  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFF78  3C 84 00 02 */	addis r4, r4, 2
/* 804DFF7C  80 84 60 8C */	lwz r4, 0x608c(r4)
/* 804DFF80  28 04 00 00 */	cmplwi r4, 0
/* 804DFF84  41 82 00 14 */	beq lbl_804DFF98
/* 804DFF88  81 84 00 5C */	lwz r12, 0x5c(r4)
/* 804DFF8C  38 63 00 28 */	addi r3, r3, 0x28
/* 804DFF90  7D 89 03 A6 */	mtctr r12
/* 804DFF94  4E 80 04 21 */	bctrl 
lbl_804DFF98:
/* 804DFF98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFF9C  7C 08 03 A6 */	mtlr r0
/* 804DFFA0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFFA4  4E 80 00 20 */	blr 
