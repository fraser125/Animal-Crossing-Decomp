lbl_80419A14:
/* 80419A14  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80419A18  38 00 00 00 */	li r0, 0
/* 80419A1C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80419A20  3C 63 00 02 */	addis r3, r3, 2
/* 80419A24  90 03 60 FC */	stw r0, 0x60fc(r3)
/* 80419A28  4E 80 00 20 */	blr 
