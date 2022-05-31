lbl_803F1EC8:
/* 803F1EC8  3C 60 80 66 */	lis r3, data_8065E1D8@ha /* 0x8065E1D8@ha */
/* 803F1ECC  38 83 E1 D8 */	addi r4, r3, data_8065E1D8@l /* 0x8065E1D8@l */
/* 803F1ED0  80 64 00 00 */	lwz r3, 0(r4)
/* 803F1ED4  2C 03 FF FF */	cmpwi r3, -1
/* 803F1ED8  40 82 00 10 */	bne lbl_803F1EE8
/* 803F1EDC  38 00 00 01 */	li r0, 1
/* 803F1EE0  90 04 00 00 */	stw r0, 0(r4)
/* 803F1EE4  48 00 00 1C */	b lbl_803F1F00
lbl_803F1EE8:
/* 803F1EE8  38 03 00 01 */	addi r0, r3, 1
/* 803F1EEC  2C 00 00 05 */	cmpwi r0, 5
/* 803F1EF0  90 04 00 00 */	stw r0, 0(r4)
/* 803F1EF4  40 81 00 0C */	ble lbl_803F1F00
/* 803F1EF8  38 00 00 01 */	li r0, 1
/* 803F1EFC  90 04 00 00 */	stw r0, 0(r4)
lbl_803F1F00:
/* 803F1F00  3C 60 80 66 */	lis r3, data_8065E1D8@ha /* 0x8065E1D8@ha */
/* 803F1F04  38 63 E1 D8 */	addi r3, r3, data_8065E1D8@l /* 0x8065E1D8@l */
/* 803F1F08  80 63 00 00 */	lwz r3, 0(r3)
/* 803F1F0C  4E 80 00 20 */	blr 
