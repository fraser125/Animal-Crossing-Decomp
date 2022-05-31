lbl_805B8088:
/* 805B8088  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B808C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FD20@ha */
/* 805B8090  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 805B8094  38 60 00 00 */	li r3, 0
/* 805B8098  3C A5 00 02 */	addis r5, r5, 2
/* 805B809C  38 04 FD 20 */	addi r0, r4, 0xFD20 /* 0x0000FD20@l */
/* 805B80A0  80 85 61 1C */	lwz r4, 0x611c(r5)
/* 805B80A4  7C 04 00 00 */	cmpw r4, r0
/* 805B80A8  40 80 00 0C */	bge lbl_805B80B4
/* 805B80AC  2C 04 46 50 */	cmpwi r4, 0x4650
/* 805B80B0  4D 81 00 20 */	bgtlr 
lbl_805B80B4:
/* 805B80B4  38 60 00 01 */	li r3, 1
/* 805B80B8  4E 80 00 20 */	blr 
