lbl_804703BC:
/* 804703BC  2C 03 00 00 */	cmpwi r3, 0
/* 804703C0  40 80 00 0C */	bge lbl_804703CC
/* 804703C4  38 60 00 00 */	li r3, 0
/* 804703C8  48 00 00 10 */	b lbl_804703D8
lbl_804703CC:
/* 804703CC  2C 03 00 06 */	cmpwi r3, 6
/* 804703D0  41 80 00 08 */	blt lbl_804703D8
/* 804703D4  38 60 00 05 */	li r3, 5
lbl_804703D8:
/* 804703D8  3C 80 80 69 */	lis r4, aMR_icon_display_data@ha /* 0x8068975C@ha */
/* 804703DC  54 60 18 38 */	slwi r0, r3, 3
/* 804703E0  38 64 97 5C */	addi r3, r4, aMR_icon_display_data@l /* 0x8068975C@l */
/* 804703E4  7C 63 02 14 */	add r3, r3, r0
/* 804703E8  80 63 00 04 */	lwz r3, 4(r3)
/* 804703EC  4E 80 00 20 */	blr 
