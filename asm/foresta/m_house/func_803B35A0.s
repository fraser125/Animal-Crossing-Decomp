lbl_803B35A0:
/* 803B35A0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B35A4  38 00 00 E4 */	li r0, 0xe4
/* 803B35A8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B35AC  3C 63 00 02 */	addis r3, r3, 2
/* 803B35B0  98 03 06 8A */	stb r0, 0x68a(r3)
/* 803B35B4  4E 80 00 20 */	blr 
