lbl_8039DBEC:
/* 8039DBEC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8039DBF0  7C 64 2E 70 */	srawi r4, r3, 5
/* 8039DBF4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8039DBF8  54 60 06 FE */	clrlwi r0, r3, 0x1b
/* 8039DBFC  3C A5 00 03 */	addis r5, r5, 3
/* 8039DC00  54 83 10 3A */	slwi r3, r4, 2
/* 8039DC04  7C 85 1A 14 */	add r4, r5, r3
/* 8039DC08  38 60 00 01 */	li r3, 1
/* 8039DC0C  80 84 85 98 */	lwz r4, -0x7a68(r4)
/* 8039DC10  7C 60 00 30 */	slw r0, r3, r0
/* 8039DC14  7C 83 00 38 */	and r3, r4, r0
/* 8039DC18  30 03 FF FF */	addic r0, r3, -1
/* 8039DC1C  7C 60 19 10 */	subfe r3, r0, r3
/* 8039DC20  4E 80 00 20 */	blr 
