lbl_803A5F1C:
/* 803A5F1C  3C C0 81 16 */	lis r6, data_81167BC0@ha /* 0x81167BC0@ha */
/* 803A5F20  54 67 20 36 */	slwi r7, r3, 4
/* 803A5F24  38 C6 7B C0 */	addi r6, r6, data_81167BC0@l /* 0x81167BC0@l */
/* 803A5F28  38 00 00 01 */	li r0, 1
/* 803A5F2C  7C C6 3A 14 */	add r6, r6, r7
/* 803A5F30  90 06 00 00 */	stw r0, 0(r6)
/* 803A5F34  90 66 00 04 */	stw r3, 4(r6)
/* 803A5F38  90 86 00 08 */	stw r4, 8(r6)
/* 803A5F3C  90 A6 00 0C */	stw r5, 0xc(r6)
/* 803A5F40  4E 80 00 20 */	blr 
