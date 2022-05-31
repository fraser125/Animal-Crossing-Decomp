lbl_804D71C4:
/* 804D71C4  2C 03 00 00 */	cmpwi r3, 0
/* 804D71C8  40 81 00 24 */	ble lbl_804D71EC
/* 804D71CC  2C 03 00 05 */	cmpwi r3, 5
/* 804D71D0  40 80 00 1C */	bge lbl_804D71EC
/* 804D71D4  3C 80 80 64 */	lis r4, angle@ha /* 0x80646A48@ha */
/* 804D71D8  54 60 08 3C */	slwi r0, r3, 1
/* 804D71DC  38 64 6A 48 */	addi r3, r4, angle@l /* 0x80646A48@l */
/* 804D71E0  7C 63 02 14 */	add r3, r3, r0
/* 804D71E4  A8 63 FF FE */	lha r3, -2(r3)
/* 804D71E8  4E 80 00 20 */	blr 
lbl_804D71EC:
/* 804D71EC  38 60 00 00 */	li r3, 0
/* 804D71F0  4E 80 00 20 */	blr 
