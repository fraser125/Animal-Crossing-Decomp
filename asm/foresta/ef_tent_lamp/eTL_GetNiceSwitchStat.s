lbl_80622298:
/* 80622298  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062229C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 806222A0  3C 63 00 02 */	addis r3, r3, 2
/* 806222A4  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 806222A8  2C 04 46 50 */	cmpwi r4, 0x4650
/* 806222AC  41 80 00 1C */	blt lbl_806222C8
/* 806222B0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FD20@ha */
/* 806222B4  38 03 FD 20 */	addi r0, r3, 0xFD20 /* 0x0000FD20@l */
/* 806222B8  7C 04 00 00 */	cmpw r4, r0
/* 806222BC  40 80 00 0C */	bge lbl_806222C8
/* 806222C0  38 60 00 00 */	li r3, 0
/* 806222C4  4E 80 00 20 */	blr 
lbl_806222C8:
/* 806222C8  38 60 00 01 */	li r3, 1
/* 806222CC  4E 80 00 20 */	blr 
