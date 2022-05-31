lbl_805AA57C:
/* 805AA57C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AA580  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FD20@ha */
/* 805AA584  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 805AA588  38 60 00 00 */	li r3, 0
/* 805AA58C  3C A5 00 02 */	addis r5, r5, 2
/* 805AA590  38 04 FD 20 */	addi r0, r4, 0xFD20 /* 0x0000FD20@l */
/* 805AA594  80 85 61 1C */	lwz r4, 0x611c(r5)
/* 805AA598  7C 04 00 00 */	cmpw r4, r0
/* 805AA59C  40 80 00 0C */	bge lbl_805AA5A8
/* 805AA5A0  2C 04 46 50 */	cmpwi r4, 0x4650
/* 805AA5A4  4C 80 00 20 */	bgelr 
lbl_805AA5A8:
/* 805AA5A8  38 60 00 01 */	li r3, 1
/* 805AA5AC  4E 80 00 20 */	blr 
