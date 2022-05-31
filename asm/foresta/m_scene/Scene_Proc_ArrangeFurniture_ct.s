lbl_803F1190:
/* 803F1190  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F1194  88 04 00 01 */	lbz r0, 1(r4)
/* 803F1198  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F119C  3C 63 00 02 */	addis r3, r3, 2
/* 803F11A0  90 03 60 2C */	stw r0, 0x602c(r3)
/* 803F11A4  4E 80 00 20 */	blr 
