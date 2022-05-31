lbl_805BBC98:
/* 805BBC98  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BBC9C  38 00 00 00 */	li r0, 0
/* 805BBCA0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BBCA4  3C 63 00 02 */	addis r3, r3, 2
/* 805BBCA8  90 03 60 EC */	stw r0, 0x60ec(r3)
/* 805BBCAC  4E 80 00 20 */	blr 
