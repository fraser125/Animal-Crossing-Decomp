lbl_803B35B8:
/* 803B35B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B35BC  54 60 08 3C */	slwi r0, r3, 1
/* 803B35C0  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803B35C4  3C 63 00 02 */	addis r3, r3, 2
/* 803B35C8  88 63 06 8A */	lbz r3, 0x68a(r3)
/* 803B35CC  7C 60 04 30 */	srw r0, r3, r0
/* 803B35D0  54 03 07 BE */	clrlwi r3, r0, 0x1e
/* 803B35D4  4E 80 00 20 */	blr 
