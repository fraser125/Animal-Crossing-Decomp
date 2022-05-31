lbl_804930B8:
/* 804930B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804930BC  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CECA4@ha */
/* 804930C0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804930C4  3C 84 00 02 */	addis r4, r4, 2
/* 804930C8  38 63 EC A4 */	addi r3, r3, l_normal_info@l /* 0x811CECA4@l */
/* 804930CC  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 804930D0  80 03 00 08 */	lwz r0, 8(r3)
/* 804930D4  80 64 00 8C */	lwz r3, 0x8c(r4)
/* 804930D8  7C 60 18 51 */	subf. r3, r0, r3
/* 804930DC  40 80 00 08 */	bge lbl_804930E4
/* 804930E0  38 60 00 00 */	li r3, 0
lbl_804930E4:
/* 804930E4  90 64 00 8C */	stw r3, 0x8c(r4)
/* 804930E8  4E 80 00 20 */	blr 
