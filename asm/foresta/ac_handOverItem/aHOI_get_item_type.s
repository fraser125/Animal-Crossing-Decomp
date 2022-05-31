lbl_80426F78:
/* 80426F78  80 A3 01 E8 */	lwz r5, 0x1e8(r3)
/* 80426F7C  38 60 00 00 */	li r3, 0
/* 80426F80  2C 05 25 13 */	cmpwi r5, 0x2513
/* 80426F84  41 82 00 18 */	beq lbl_80426F9C
/* 80426F88  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80426F8C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80426F90  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80426F94  2C 00 00 0E */	cmpwi r0, 0xe
/* 80426F98  40 82 00 0C */	bne lbl_80426FA4
lbl_80426F9C:
/* 80426F9C  38 60 00 02 */	li r3, 2
/* 80426FA0  4E 80 00 20 */	blr 
lbl_80426FA4:
/* 80426FA4  54 A0 A7 3E */	rlwinm r0, r5, 0x14, 0x1c, 0x1f
/* 80426FA8  2C 00 00 02 */	cmpwi r0, 2
/* 80426FAC  4C 82 00 20 */	bnelr 
/* 80426FB0  54 A0 C7 3E */	rlwinm r0, r5, 0x18, 0x1c, 0x1f
/* 80426FB4  2C 00 00 03 */	cmpwi r0, 3
/* 80426FB8  4C 82 00 20 */	bnelr 
/* 80426FBC  38 60 00 01 */	li r3, 1
/* 80426FC0  4E 80 00 20 */	blr 
