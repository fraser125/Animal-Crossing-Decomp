lbl_80512F34:
/* 80512F34  2C 04 00 00 */	cmpwi r4, 0
/* 80512F38  4D 80 00 20 */	bltlr 
/* 80512F3C  2C 04 00 50 */	cmpwi r4, 0x50
/* 80512F40  4C 80 00 20 */	bgelr 
/* 80512F44  2C 05 00 00 */	cmpwi r5, 0
/* 80512F48  4D 80 00 20 */	bltlr 
/* 80512F4C  2C 05 00 60 */	cmpwi r5, 0x60
/* 80512F50  4C 80 00 20 */	bgelr 
/* 80512F54  7C 80 26 70 */	srawi r0, r4, 4
/* 80512F58  54 A7 E0 06 */	slwi r7, r5, 0x1c
/* 80512F5C  7D 20 01 94 */	addze r9, r0
/* 80512F60  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 80512F64  7C A5 26 70 */	srawi r5, r5, 4
/* 80512F68  54 80 E0 06 */	slwi r0, r4, 0x1c
/* 80512F6C  7D 05 01 94 */	addze r8, r5
/* 80512F70  54 84 0F FE */	srwi r4, r4, 0x1f
/* 80512F74  7C A6 38 50 */	subf r5, r6, r7
/* 80512F78  1C E8 00 05 */	mulli r7, r8, 5
/* 80512F7C  7C 04 00 50 */	subf r0, r4, r0
/* 80512F80  54 A5 20 3E */	rotlwi r5, r5, 4
/* 80512F84  54 00 20 3E */	rotlwi r0, r0, 4
/* 80512F88  7C A5 32 14 */	add r5, r5, r6
/* 80512F8C  7C E9 3A 14 */	add r7, r9, r7
/* 80512F90  7C 00 22 14 */	add r0, r0, r4
/* 80512F94  54 E6 28 34 */	slwi r6, r7, 5
/* 80512F98  54 A5 08 3C */	slwi r5, r5, 1
/* 80512F9C  7C C3 32 14 */	add r6, r3, r6
/* 80512FA0  38 60 00 01 */	li r3, 1
/* 80512FA4  7C 86 2A 2E */	lhzx r4, r6, r5
/* 80512FA8  7C 60 00 30 */	slw r0, r3, r0
/* 80512FAC  7C 80 03 78 */	or r0, r4, r0
/* 80512FB0  7C 06 2B 2E */	sthx r0, r6, r5
/* 80512FB4  4E 80 00 20 */	blr 
