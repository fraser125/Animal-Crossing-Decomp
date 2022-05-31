lbl_8062B628:
/* 8062B628  3C 80 81 36 */	lis r4, struct_8135FB98+0x1@ha /* 0x8135FB99@ha */
/* 8062B62C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062B630  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062B634  88 04 FB 99 */	lbz r0, struct_8135FB98+0x1@l(r4)  /* 0x8135FB99@l */
/* 8062B638  3C 63 00 03 */	addis r3, r3, 3
/* 8062B63C  98 03 88 A0 */	stb r0, -0x7760(r3)
/* 8062B640  4E 80 00 20 */	blr 
