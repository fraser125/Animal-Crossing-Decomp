lbl_80473F6C:
/* 80473F6C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80473F70  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80473F74  3C 63 00 02 */	addis r3, r3, 2
/* 80473F78  80 63 60 8C */	lwz r3, 0x608c(r3)
/* 80473F7C  28 03 00 00 */	cmplwi r3, 0
/* 80473F80  4D 82 00 20 */	beqlr 
/* 80473F84  80 63 00 00 */	lwz r3, 0(r3)
/* 80473F88  28 03 00 00 */	cmplwi r3, 0
/* 80473F8C  4D 82 00 20 */	beqlr 
/* 80473F90  38 00 00 01 */	li r0, 1
/* 80473F94  90 03 05 A8 */	stw r0, 0x5a8(r3)
/* 80473F98  4E 80 00 20 */	blr 
