lbl_8037C750:
/* 8037C750  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037C754  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037C758  80 03 02 88 */	lwz r0, 0x288(r3)
/* 8037C75C  2C 00 00 00 */	cmpwi r0, 0
/* 8037C760  4D 82 00 20 */	beqlr 
/* 8037C764  38 00 00 03 */	li r0, 3
/* 8037C768  90 03 02 88 */	stw r0, 0x288(r3)
/* 8037C76C  4E 80 00 20 */	blr 