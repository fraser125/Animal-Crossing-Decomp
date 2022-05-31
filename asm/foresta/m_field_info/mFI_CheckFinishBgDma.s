lbl_803A5F44:
/* 803A5F44  3C 80 81 16 */	lis r4, data_81167BC0@ha /* 0x81167BC0@ha */
/* 803A5F48  54 65 20 36 */	slwi r5, r3, 4
/* 803A5F4C  38 84 7B C0 */	addi r4, r4, data_81167BC0@l /* 0x81167BC0@l */
/* 803A5F50  38 60 00 00 */	li r3, 0
/* 803A5F54  7C 04 28 2E */	lwzx r0, r4, r5
/* 803A5F58  2C 00 00 00 */	cmpwi r0, 0
/* 803A5F5C  4C 82 00 20 */	bnelr 
/* 803A5F60  7C 84 2A 14 */	add r4, r4, r5
/* 803A5F64  80 04 00 04 */	lwz r0, 4(r4)
/* 803A5F68  2C 00 FF FF */	cmpwi r0, -1
/* 803A5F6C  4D 82 00 20 */	beqlr 
/* 803A5F70  38 60 00 01 */	li r3, 1
/* 803A5F74  4E 80 00 20 */	blr 
