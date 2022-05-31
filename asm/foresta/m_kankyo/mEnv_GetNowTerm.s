lbl_803B7EA8:
/* 803B7EA8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B7EAC  3C 60 80 65 */	lis r3, data_80655C78@ha /* 0x80655C78@ha */
/* 803B7EB0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803B7EB4  38 00 00 08 */	li r0, 8
/* 803B7EB8  3C 84 00 02 */	addis r4, r4, 2
/* 803B7EBC  38 C3 5C 78 */	addi r6, r3, data_80655C78@l /* 0x80655C78@l */
/* 803B7EC0  80 E4 61 1C */	lwz r7, 0x611c(r4)
/* 803B7EC4  38 60 00 00 */	li r3, 0
/* 803B7EC8  38 80 00 00 */	li r4, 0
/* 803B7ECC  7C 09 03 A6 */	mtctr r0
lbl_803B7ED0:
/* 803B7ED0  7C A6 22 14 */	add r5, r6, r4
/* 803B7ED4  80 05 00 04 */	lwz r0, 4(r5)
/* 803B7ED8  7C 00 38 00 */	cmpw r0, r7
/* 803B7EDC  4C 80 00 20 */	bgelr 
/* 803B7EE0  38 63 00 01 */	addi r3, r3, 1
/* 803B7EE4  38 84 00 04 */	addi r4, r4, 4
/* 803B7EE8  42 00 FF E8 */	bdnz lbl_803B7ED0
/* 803B7EEC  38 60 00 00 */	li r3, 0
/* 803B7EF0  4E 80 00 20 */	blr 
