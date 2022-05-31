lbl_804BE7A8:
/* 804BE7A8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804BE7AC  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010B30@ha */
/* 804BE7B0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804BE7B4  3C A5 00 02 */	addis r5, r5, 2
/* 804BE7B8  38 04 0B 30 */	addi r0, r4, 0x0B30 /* 0x00010B30@l */
/* 804BE7BC  80 85 61 1C */	lwz r4, 0x611c(r5)
/* 804BE7C0  7C 04 00 00 */	cmpw r4, r0
/* 804BE7C4  40 80 00 0C */	bge lbl_804BE7D0
/* 804BE7C8  2C 04 62 70 */	cmpwi r4, 0x6270
/* 804BE7CC  40 80 00 0C */	bge lbl_804BE7D8
lbl_804BE7D0:
/* 804BE7D0  38 A0 00 01 */	li r5, 1
/* 804BE7D4  48 00 00 08 */	b lbl_804BE7DC
lbl_804BE7D8:
/* 804BE7D8  38 A0 00 00 */	li r5, 0
lbl_804BE7DC:
/* 804BE7DC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804BE7E0  38 00 00 01 */	li r0, 1
/* 804BE7E4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804BE7E8  3C 84 00 03 */	addis r4, r4, 3
/* 804BE7EC  98 A4 88 6B */	stb r5, -0x7795(r4)
/* 804BE7F0  98 03 01 75 */	stb r0, 0x175(r3)
/* 804BE7F4  4E 80 00 20 */	blr 
