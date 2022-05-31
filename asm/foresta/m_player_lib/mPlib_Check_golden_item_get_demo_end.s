lbl_803DE75C:
/* 803DE75C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DE760  3C A0 80 66 */	lis r5, data_2387@ha /* 0x8065BD90@ha */
/* 803DE764  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803DE768  3C 84 00 02 */	addis r4, r4, 2
/* 803DE76C  38 A5 BD 90 */	addi r5, r5, data_2387@l /* 0x8065BD90@l */
/* 803DE770  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 803DE774  7C 65 18 AE */	lbzx r3, r5, r3
/* 803DE778  88 04 23 DA */	lbz r0, 0x23da(r4)
/* 803DE77C  7C 63 00 38 */	and r3, r3, r0
/* 803DE780  4E 80 00 20 */	blr 
