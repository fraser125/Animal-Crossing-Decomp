lbl_803E5E78:
/* 803E5E78  2C 03 00 00 */	cmpwi r3, 0
/* 803E5E7C  3C A0 80 66 */	lis r5, data_8065C810@ha /* 0x8065C810@ha */
/* 803E5E80  38 C5 C8 10 */	addi r6, r5, data_8065C810@l /* 0x8065C810@l */
/* 803E5E84  41 80 00 F0 */	blt lbl_803E5F74
/* 803E5E88  2C 03 04 F2 */	cmpwi r3, 0x4f2
/* 803E5E8C  40 80 00 E8 */	bge lbl_803E5F74
/* 803E5E90  38 A6 00 A0 */	addi r5, r6, 0xa0
/* 803E5E94  7C 05 18 AE */	lbzx r0, r5, r3
/* 803E5E98  2C 00 00 02 */	cmpwi r0, 2
/* 803E5E9C  41 82 00 58 */	beq lbl_803E5EF4
/* 803E5EA0  40 80 00 14 */	bge lbl_803E5EB4
/* 803E5EA4  2C 00 00 00 */	cmpwi r0, 0
/* 803E5EA8  41 82 00 1C */	beq lbl_803E5EC4
/* 803E5EAC  40 80 00 20 */	bge lbl_803E5ECC
/* 803E5EB0  48 00 00 BC */	b lbl_803E5F6C
lbl_803E5EB4:
/* 803E5EB4  2C 00 00 04 */	cmpwi r0, 4
/* 803E5EB8  41 82 00 8C */	beq lbl_803E5F44
/* 803E5EBC  40 80 00 B0 */	bge lbl_803E5F6C
/* 803E5EC0  48 00 00 5C */	b lbl_803E5F1C
lbl_803E5EC4:
/* 803E5EC4  38 60 FF FF */	li r3, -1
/* 803E5EC8  4E 80 00 20 */	blr 
lbl_803E5ECC:
/* 803E5ECC  2C 04 00 00 */	cmpwi r4, 0
/* 803E5ED0  41 80 00 1C */	blt lbl_803E5EEC
/* 803E5ED4  2C 04 00 02 */	cmpwi r4, 2
/* 803E5ED8  40 80 00 14 */	bge lbl_803E5EEC
/* 803E5EDC  54 80 10 3A */	slwi r0, r4, 2
/* 803E5EE0  38 66 05 94 */	addi r3, r6, 0x594
/* 803E5EE4  7C 63 00 2E */	lwzx r3, r3, r0
/* 803E5EE8  4E 80 00 20 */	blr 
lbl_803E5EEC:
/* 803E5EEC  38 60 FF FF */	li r3, -1
/* 803E5EF0  4E 80 00 20 */	blr 
lbl_803E5EF4:
/* 803E5EF4  2C 04 00 00 */	cmpwi r4, 0
/* 803E5EF8  41 80 00 1C */	blt lbl_803E5F14
/* 803E5EFC  2C 04 00 02 */	cmpwi r4, 2
/* 803E5F00  40 80 00 14 */	bge lbl_803E5F14
/* 803E5F04  54 80 10 3A */	slwi r0, r4, 2
/* 803E5F08  38 66 05 9C */	addi r3, r6, 0x59c
/* 803E5F0C  7C 63 00 2E */	lwzx r3, r3, r0
/* 803E5F10  4E 80 00 20 */	blr 
lbl_803E5F14:
/* 803E5F14  38 60 FF FF */	li r3, -1
/* 803E5F18  4E 80 00 20 */	blr 
lbl_803E5F1C:
/* 803E5F1C  2C 04 00 00 */	cmpwi r4, 0
/* 803E5F20  41 80 00 1C */	blt lbl_803E5F3C
/* 803E5F24  2C 04 00 02 */	cmpwi r4, 2
/* 803E5F28  40 80 00 14 */	bge lbl_803E5F3C
/* 803E5F2C  54 80 10 3A */	slwi r0, r4, 2
/* 803E5F30  38 66 05 A4 */	addi r3, r6, 0x5a4
/* 803E5F34  7C 63 00 2E */	lwzx r3, r3, r0
/* 803E5F38  4E 80 00 20 */	blr 
lbl_803E5F3C:
/* 803E5F3C  38 60 FF FF */	li r3, -1
/* 803E5F40  4E 80 00 20 */	blr 
lbl_803E5F44:
/* 803E5F44  2C 04 00 00 */	cmpwi r4, 0
/* 803E5F48  41 80 00 1C */	blt lbl_803E5F64
/* 803E5F4C  2C 04 00 02 */	cmpwi r4, 2
/* 803E5F50  40 80 00 14 */	bge lbl_803E5F64
/* 803E5F54  54 80 10 3A */	slwi r0, r4, 2
/* 803E5F58  38 66 05 AC */	addi r3, r6, 0x5ac
/* 803E5F5C  7C 63 00 2E */	lwzx r3, r3, r0
/* 803E5F60  4E 80 00 20 */	blr 
lbl_803E5F64:
/* 803E5F64  38 60 FF FF */	li r3, -1
/* 803E5F68  4E 80 00 20 */	blr 
lbl_803E5F6C:
/* 803E5F6C  38 60 FF FF */	li r3, -1
/* 803E5F70  4E 80 00 20 */	blr 
lbl_803E5F74:
/* 803E5F74  38 60 FF FF */	li r3, -1
/* 803E5F78  4E 80 00 20 */	blr 
