lbl_805C1190:
/* 805C1190  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805C1194  38 00 00 00 */	li r0, 0
/* 805C1198  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805C119C  3C 63 00 02 */	addis r3, r3, 2
/* 805C11A0  90 03 60 F0 */	stw r0, 0x60f0(r3)
/* 805C11A4  4E 80 00 20 */	blr 
