lbl_803E77D4:
/* 803E77D4  2C 03 00 00 */	cmpwi r3, 0
/* 803E77D8  54 85 07 BE */	clrlwi r5, r4, 0x1e
/* 803E77DC  40 80 00 0C */	bge lbl_803E77E8
/* 803E77E0  38 60 10 00 */	li r3, 0x1000
/* 803E77E4  4E 80 00 20 */	blr 
lbl_803E77E8:
/* 803E77E8  38 03 FC 00 */	addi r0, r3, -1024
/* 803E77EC  2C 03 04 00 */	cmpwi r3, 0x400
/* 803E77F0  54 00 10 3A */	slwi r0, r0, 2
/* 803E77F4  7C 80 2A 14 */	add r4, r0, r5
/* 803E77F8  38 04 30 00 */	addi r0, r4, 0x3000
/* 803E77FC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803E7800  40 80 00 14 */	bge lbl_803E7814
/* 803E7804  54 60 10 3A */	slwi r0, r3, 2
/* 803E7808  7C 60 2A 14 */	add r3, r0, r5
/* 803E780C  38 03 10 00 */	addi r0, r3, 0x1000
/* 803E7810  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_803E7814:
/* 803E7814  7C 03 03 78 */	mr r3, r0
/* 803E7818  4E 80 00 20 */	blr 
