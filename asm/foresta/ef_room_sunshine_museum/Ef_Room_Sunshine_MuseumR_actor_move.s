lbl_804D0A9C:
/* 804D0A9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D0AA0  7C 08 02 A6 */	mflr r0
/* 804D0AA4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804D0AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D0AAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D0AB0  7C 7F 1B 78 */	mr r31, r3
/* 804D0AB4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804D0AB8  3C 63 00 02 */	addis r3, r3, 2
/* 804D0ABC  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804D0AC0  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804D0AC4  41 80 00 2C */	blt lbl_804D0AF0
/* 804D0AC8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000A8C0@ha */
/* 804D0ACC  38 03 A8 C0 */	addi r0, r3, 0xA8C0 /* 0x0000A8C0@l */
/* 804D0AD0  7C 04 00 00 */	cmpw r4, r0
/* 804D0AD4  40 80 00 1C */	bge lbl_804D0AF0
/* 804D0AD8  7C 84 00 50 */	subf r4, r4, r0
/* 804D0ADC  38 60 00 00 */	li r3, 0
/* 804D0AE0  4B FF FD 09 */	bl calc_scale_Ef_Room_Sunshine_Museum
/* 804D0AE4  FC 00 08 50 */	fneg f0, f1
/* 804D0AE8  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804D0AEC  48 00 00 3C */	b lbl_804D0B28
lbl_804D0AF0:
/* 804D0AF0  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 804D0AF4  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 804D0AF8  7C 04 00 00 */	cmpw r4, r0
/* 804D0AFC  41 80 00 20 */	blt lbl_804D0B1C
/* 804D0B00  38 03 51 80 */	addi r0, r3, 0x5180
/* 804D0B04  38 60 00 01 */	li r3, 1
/* 804D0B08  7C 84 00 50 */	subf r4, r4, r0
/* 804D0B0C  4B FF FC DD */	bl calc_scale_Ef_Room_Sunshine_Museum
/* 804D0B10  FC 00 08 50 */	fneg f0, f1
/* 804D0B14  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804D0B18  48 00 00 10 */	b lbl_804D0B28
lbl_804D0B1C:
/* 804D0B1C  3C 60 80 64 */	lis r3, lit_391@ha /* 0x806463D0@ha */
/* 804D0B20  C0 03 63 D0 */	lfs f0, lit_391@l(r3)  /* 0x806463D0@l */
/* 804D0B24  D0 1F 00 5C */	stfs f0, 0x5c(r31)
lbl_804D0B28:
/* 804D0B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D0B2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D0B30  7C 08 03 A6 */	mtlr r0
/* 804D0B34  38 21 00 10 */	addi r1, r1, 0x10
/* 804D0B38  4E 80 00 20 */	blr 
