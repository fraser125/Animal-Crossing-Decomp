lbl_80601924:
/* 80601924  7C 60 07 34 */	extsh r0, r3
/* 80601928  2C 00 00 04 */	cmpwi r0, 4
/* 8060192C  41 80 00 08 */	blt lbl_80601934
/* 80601930  38 60 00 00 */	li r3, 0
lbl_80601934:
/* 80601934  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80601938  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8060193C  3C A5 00 02 */	addis r5, r5, 2
/* 80601940  B0 65 66 6C */	sth r3, 0x666c(r5)
/* 80601944  B0 85 66 6E */	sth r4, 0x666e(r5)
/* 80601948  4E 80 00 20 */	blr 
