lbl_804DE1FC:
/* 804DE1FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DE200  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DE204  80 03 00 14 */	lwz r0, 0x14(r3)
/* 804DE208  2C 00 00 00 */	cmpwi r0, 0
/* 804DE20C  41 80 00 0C */	blt lbl_804DE218
/* 804DE210  2C 00 00 34 */	cmpwi r0, 0x34
/* 804DE214  41 80 00 0C */	blt lbl_804DE220
lbl_804DE218:
/* 804DE218  38 60 00 00 */	li r3, 0
/* 804DE21C  4E 80 00 20 */	blr 
lbl_804DE220:
/* 804DE220  3C 60 80 64 */	lis r3, data_4943@ha /* 0x80647C24@ha */
/* 804DE224  38 63 7C 24 */	addi r3, r3, data_4943@l /* 0x80647C24@l */
/* 804DE228  7C 63 00 AE */	lbzx r3, r3, r0
/* 804DE22C  7C 63 07 74 */	extsb r3, r3
/* 804DE230  4E 80 00 20 */	blr 
