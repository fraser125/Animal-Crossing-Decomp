lbl_8047038C:
/* 8047038C  2C 03 00 00 */	cmpwi r3, 0
/* 80470390  40 80 00 0C */	bge lbl_8047039C
/* 80470394  38 60 00 00 */	li r3, 0
/* 80470398  48 00 00 10 */	b lbl_804703A8
lbl_8047039C:
/* 8047039C  2C 03 00 06 */	cmpwi r3, 6
/* 804703A0  41 80 00 08 */	blt lbl_804703A8
/* 804703A4  38 60 00 05 */	li r3, 5
lbl_804703A8:
/* 804703A8  3C 80 80 69 */	lis r4, aMR_icon_display_data@ha /* 0x8068975C@ha */
/* 804703AC  54 60 18 38 */	slwi r0, r3, 3
/* 804703B0  38 64 97 5C */	addi r3, r4, aMR_icon_display_data@l /* 0x8068975C@l */
/* 804703B4  7C 63 00 2E */	lwzx r3, r3, r0
/* 804703B8  4E 80 00 20 */	blr 
