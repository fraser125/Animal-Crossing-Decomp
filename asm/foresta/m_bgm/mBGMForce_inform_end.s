lbl_8037CB58:
/* 8037CB58  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CB5C  38 00 00 05 */	li r0, 5
/* 8037CB60  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CB64  90 03 02 FC */	stw r0, 0x2fc(r3)
/* 8037CB68  4E 80 00 20 */	blr 
