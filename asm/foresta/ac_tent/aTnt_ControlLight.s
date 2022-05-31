lbl_805BE5A4:
/* 805BE5A4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BE5A8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BE5AC  3C 63 00 02 */	addis r3, r3, 2
/* 805BE5B0  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 805BE5B4  2C 04 46 50 */	cmpwi r4, 0x4650
/* 805BE5B8  41 80 00 1C */	blt lbl_805BE5D4
/* 805BE5BC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FD20@ha */
/* 805BE5C0  38 03 FD 20 */	addi r0, r3, 0xFD20 /* 0x0000FD20@l */
/* 805BE5C4  7C 04 00 00 */	cmpw r4, r0
/* 805BE5C8  40 80 00 0C */	bge lbl_805BE5D4
/* 805BE5CC  38 60 00 00 */	li r3, 0
/* 805BE5D0  4E 80 00 20 */	blr 
lbl_805BE5D4:
/* 805BE5D4  38 60 00 01 */	li r3, 1
/* 805BE5D8  4E 80 00 20 */	blr 
