lbl_8037C770:
/* 8037C770  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037C774  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037C778  80 03 02 8C */	lwz r0, 0x28c(r3)
/* 8037C77C  2C 00 00 00 */	cmpwi r0, 0
/* 8037C780  4D 82 00 20 */	beqlr 
/* 8037C784  38 00 00 03 */	li r0, 3
/* 8037C788  90 03 02 8C */	stw r0, 0x28c(r3)
/* 8037C78C  4E 80 00 20 */	blr 
