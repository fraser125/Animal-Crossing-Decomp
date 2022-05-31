lbl_80493A20:
/* 80493A20  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80493A24  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80493A28  3C 63 00 02 */	addis r3, r3, 2
/* 80493A2C  88 E3 61 25 */	lbz r7, 0x6125(r3)
/* 80493A30  34 E7 FF FF */	addic. r7, r7, -1
/* 80493A34  41 80 00 0C */	blt lbl_80493A40
/* 80493A38  2C 07 00 0C */	cmpwi r7, 0xc
/* 80493A3C  41 80 00 08 */	blt lbl_80493A44
lbl_80493A40:
/* 80493A40  38 E0 00 00 */	li r7, 0
lbl_80493A44:
/* 80493A44  3C A0 80 69 */	lis r5, l_normal3_season@ha /* 0x8068B630@ha */
/* 80493A48  3C 60 80 69 */	lis r3, add_table@ha /* 0x8068B7A8@ha */
/* 80493A4C  54 86 10 3A */	slwi r6, r4, 2
/* 80493A50  54 E0 10 3A */	slwi r0, r7, 2
/* 80493A54  38 85 B6 30 */	addi r4, r5, l_normal3_season@l /* 0x8068B630@l */
/* 80493A58  38 63 B7 A8 */	addi r3, r3, add_table@l /* 0x8068B7A8@l */
/* 80493A5C  7C 84 30 2E */	lwzx r4, r4, r6
/* 80493A60  7C 03 00 2E */	lwzx r0, r3, r0
/* 80493A64  7C 64 02 14 */	add r3, r4, r0
/* 80493A68  4E 80 00 20 */	blr 
