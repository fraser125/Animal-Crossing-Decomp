lbl_80538B90:
/* 80538B90  80 83 01 7C */	lwz r4, 0x17c(r3)
/* 80538B94  38 A0 00 00 */	li r5, 0
/* 80538B98  88 04 08 E8 */	lbz r0, 0x8e8(r4)
/* 80538B9C  28 00 00 00 */	cmplwi r0, 0
/* 80538BA0  40 82 00 20 */	bne lbl_80538BC0
/* 80538BA4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80538BA8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80538BAC  3C 84 00 02 */	addis r4, r4, 2
/* 80538BB0  A8 04 66 6C */	lha r0, 0x666c(r4)
/* 80538BB4  2C 00 00 01 */	cmpwi r0, 1
/* 80538BB8  40 82 00 08 */	bne lbl_80538BC0
/* 80538BBC  38 A0 00 01 */	li r5, 1
lbl_80538BC0:
/* 80538BC0  98 A3 08 18 */	stb r5, 0x818(r3)
/* 80538BC4  4E 80 00 20 */	blr 
