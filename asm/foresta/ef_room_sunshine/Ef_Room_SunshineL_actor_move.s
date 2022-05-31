lbl_804CF24C:
/* 804CF24C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CF250  7C 08 02 A6 */	mflr r0
/* 804CF254  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804CF258  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CF25C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CF260  7C 7F 1B 78 */	mr r31, r3
/* 804CF264  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804CF268  3C 63 00 02 */	addis r3, r3, 2
/* 804CF26C  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804CF270  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804CF274  40 80 00 14 */	bge lbl_804CF288
/* 804CF278  38 60 00 01 */	li r3, 1
/* 804CF27C  4B FF FD 75 */	bl calc_scale_Ef_Room_Sunshine
/* 804CF280  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 804CF284  48 00 00 44 */	b lbl_804CF2C8
lbl_804CF288:
/* 804CF288  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000A8C0@ha */
/* 804CF28C  38 03 A8 C0 */	addi r0, r3, 0xA8C0 /* 0x0000A8C0@l */
/* 804CF290  7C 04 00 00 */	cmpw r4, r0
/* 804CF294  41 80 00 28 */	blt lbl_804CF2BC
/* 804CF298  38 03 19 40 */	addi r0, r3, 0x1940
/* 804CF29C  7C 04 00 00 */	cmpw r4, r0
/* 804CF2A0  40 80 00 1C */	bge lbl_804CF2BC
/* 804CF2A4  3C 84 FF FF */	addis r4, r4, 0xffff
/* 804CF2A8  38 60 00 00 */	li r3, 0
/* 804CF2AC  38 84 57 40 */	addi r4, r4, 0x5740
/* 804CF2B0  4B FF FD 41 */	bl calc_scale_Ef_Room_Sunshine
/* 804CF2B4  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 804CF2B8  48 00 00 10 */	b lbl_804CF2C8
lbl_804CF2BC:
/* 804CF2BC  3C 60 80 64 */	lis r3, lit_391@ha /* 0x806462F0@ha */
/* 804CF2C0  C0 03 62 F0 */	lfs f0, lit_391@l(r3)  /* 0x806462F0@l */
/* 804CF2C4  D0 1F 00 5C */	stfs f0, 0x5c(r31)
lbl_804CF2C8:
/* 804CF2C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CF2CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CF2D0  7C 08 03 A6 */	mtlr r0
/* 804CF2D4  38 21 00 10 */	addi r1, r1, 0x10
/* 804CF2D8  4E 80 00 20 */	blr 
