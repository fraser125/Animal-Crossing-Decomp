lbl_805B6BB0:
/* 805B6BB0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B6BB4  38 60 00 00 */	li r3, 0
/* 805B6BB8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B6BBC  3C 84 00 02 */	addis r4, r4, 2
/* 805B6BC0  80 04 61 1C */	lwz r0, 0x611c(r4)
/* 805B6BC4  2C 00 62 70 */	cmpwi r0, 0x6270
/* 805B6BC8  40 80 00 0C */	bge lbl_805B6BD4
/* 805B6BCC  2C 00 1C 20 */	cmpwi r0, 0x1c20
/* 805B6BD0  4C 80 00 20 */	bgelr 
lbl_805B6BD4:
/* 805B6BD4  38 60 00 01 */	li r3, 1
/* 805B6BD8  4E 80 00 20 */	blr 
