lbl_805B469C:
/* 805B469C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B46A0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FD20@ha */
/* 805B46A4  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 805B46A8  38 60 00 00 */	li r3, 0
/* 805B46AC  3C A5 00 02 */	addis r5, r5, 2
/* 805B46B0  38 04 FD 20 */	addi r0, r4, 0xFD20 /* 0x0000FD20@l */
/* 805B46B4  80 85 61 1C */	lwz r4, 0x611c(r5)
/* 805B46B8  7C 04 00 00 */	cmpw r4, r0
/* 805B46BC  40 80 00 0C */	bge lbl_805B46C8
/* 805B46C0  2C 04 54 60 */	cmpwi r4, 0x5460
/* 805B46C4  4C 80 00 20 */	bgelr 
lbl_805B46C8:
/* 805B46C8  38 60 00 01 */	li r3, 1
/* 805B46CC  4E 80 00 20 */	blr 
