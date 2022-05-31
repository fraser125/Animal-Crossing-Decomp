lbl_803A8160:
/* 803A8160  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803A8164  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 803A8168  38 66 85 38 */	addi r3, r6, common_data@l /* 0x81138538@l */
/* 803A816C  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 803A8170  3C E3 00 01 */	addis r7, r3, 1
/* 803A8174  39 20 00 00 */	li r9, 0
/* 803A8178  38 60 00 00 */	li r3, 0
/* 803A817C  38 00 01 00 */	li r0, 0x100
/* 803A8180  38 E7 37 A8 */	addi r7, r7, 0x37a8
lbl_803A8184:
/* 803A8184  39 40 00 00 */	li r10, 0
lbl_803A8188:
/* 803A8188  7C E8 3B 78 */	mr r8, r7
/* 803A818C  7C 09 03 A6 */	mtctr r0
lbl_803A8190:
/* 803A8190  A0 C8 00 00 */	lhz r6, 0(r8)
/* 803A8194  7C 06 28 40 */	cmplw r6, r5
/* 803A8198  41 80 00 10 */	blt lbl_803A81A8
/* 803A819C  7C 06 20 40 */	cmplw r6, r4
/* 803A81A0  41 81 00 08 */	bgt lbl_803A81A8
/* 803A81A4  38 63 00 01 */	addi r3, r3, 1
lbl_803A81A8:
/* 803A81A8  39 08 00 02 */	addi r8, r8, 2
/* 803A81AC  42 00 FF E4 */	bdnz lbl_803A8190
/* 803A81B0  39 4A 00 01 */	addi r10, r10, 1
/* 803A81B4  38 E7 02 00 */	addi r7, r7, 0x200
/* 803A81B8  2C 0A 00 05 */	cmpwi r10, 5
/* 803A81BC  41 80 FF CC */	blt lbl_803A8188
/* 803A81C0  39 29 00 01 */	addi r9, r9, 1
/* 803A81C4  2C 09 00 06 */	cmpwi r9, 6
/* 803A81C8  41 80 FF BC */	blt lbl_803A8184
/* 803A81CC  4E 80 00 20 */	blr 
