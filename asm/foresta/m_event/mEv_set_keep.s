lbl_8039DB84:
/* 8039DB84  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8039DB88  7C 64 2E 70 */	srawi r4, r3, 5
/* 8039DB8C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8039DB90  54 60 06 FE */	clrlwi r0, r3, 0x1b
/* 8039DB94  3C A5 00 03 */	addis r5, r5, 3
/* 8039DB98  54 83 10 3A */	slwi r3, r4, 2
/* 8039DB9C  7C 85 1A 14 */	add r4, r5, r3
/* 8039DBA0  38 60 00 01 */	li r3, 1
/* 8039DBA4  80 A4 85 98 */	lwz r5, -0x7a68(r4)
/* 8039DBA8  7C 60 00 30 */	slw r0, r3, r0
/* 8039DBAC  7C A5 03 78 */	or r5, r5, r0
/* 8039DBB0  90 A4 85 98 */	stw r5, -0x7a68(r4)
/* 8039DBB4  4E 80 00 20 */	blr 
