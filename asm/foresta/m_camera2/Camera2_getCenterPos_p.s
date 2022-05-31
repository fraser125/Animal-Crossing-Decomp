lbl_8037EDCC:
/* 8037EDCC  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8037EDD0  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 8037EDD4  80 63 00 00 */	lwz r3, 0(r3)
/* 8037EDD8  38 63 1B 94 */	addi r3, r3, 0x1b94
/* 8037EDDC  4E 80 00 20 */	blr 
