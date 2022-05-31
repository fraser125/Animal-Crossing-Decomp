lbl_803E5C70:
/* 803E5C70  2C 03 00 01 */	cmpwi r3, 1
/* 803E5C74  3C A0 80 66 */	lis r5, data_8065C810@ha /* 0x8065C810@ha */
/* 803E5C78  38 A5 C8 10 */	addi r5, r5, data_8065C810@l /* 0x8065C810@l */
/* 803E5C7C  41 82 00 28 */	beq lbl_803E5CA4
/* 803E5C80  40 80 00 10 */	bge lbl_803E5C90
/* 803E5C84  2C 03 00 00 */	cmpwi r3, 0
/* 803E5C88  40 80 00 14 */	bge lbl_803E5C9C
/* 803E5C8C  48 00 00 30 */	b lbl_803E5CBC
lbl_803E5C90:
/* 803E5C90  2C 03 00 03 */	cmpwi r3, 3
/* 803E5C94  40 80 00 28 */	bge lbl_803E5CBC
/* 803E5C98  48 00 00 1C */	b lbl_803E5CB4
lbl_803E5C9C:
/* 803E5C9C  38 65 00 00 */	addi r3, r5, 0
/* 803E5CA0  4E 80 00 20 */	blr 
lbl_803E5CA4:
/* 803E5CA4  54 80 10 3A */	slwi r0, r4, 2
/* 803E5CA8  38 65 00 78 */	addi r3, r5, 0x78
/* 803E5CAC  7C 63 00 2E */	lwzx r3, r3, r0
/* 803E5CB0  4E 80 00 20 */	blr 
lbl_803E5CB4:
/* 803E5CB4  38 65 00 88 */	addi r3, r5, 0x88
/* 803E5CB8  4E 80 00 20 */	blr 
lbl_803E5CBC:
/* 803E5CBC  38 65 00 00 */	addi r3, r5, 0
/* 803E5CC0  4E 80 00 20 */	blr 
