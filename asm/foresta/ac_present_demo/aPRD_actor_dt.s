lbl_80483A24:
/* 80483A24  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80483A28  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80483A2C  3C 63 00 02 */	addis r3, r3, 2
/* 80483A30  80 03 60 B0 */	lwz r0, 0x60b0(r3)
/* 80483A34  28 00 00 00 */	cmplwi r0, 0
/* 80483A38  4D 82 00 20 */	beqlr 
/* 80483A3C  38 00 00 00 */	li r0, 0
/* 80483A40  90 03 60 B0 */	stw r0, 0x60b0(r3)
/* 80483A44  4E 80 00 20 */	blr 
