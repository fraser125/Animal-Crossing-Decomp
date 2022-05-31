lbl_804A11DC:
/* 804A11DC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804A11E0  38 00 00 00 */	li r0, 0
/* 804A11E4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804A11E8  3C 63 00 02 */	addis r3, r3, 2
/* 804A11EC  90 03 60 F4 */	stw r0, 0x60f4(r3)
/* 804A11F0  4E 80 00 20 */	blr 
