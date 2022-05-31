lbl_804D0A0C:
/* 804D0A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D0A10  7C 08 02 A6 */	mflr r0
/* 804D0A14  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804D0A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D0A1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D0A20  7C 7F 1B 78 */	mr r31, r3
/* 804D0A24  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804D0A28  3C 63 00 02 */	addis r3, r3, 2
/* 804D0A2C  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804D0A30  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804D0A34  40 80 00 14 */	bge lbl_804D0A48
/* 804D0A38  38 60 00 01 */	li r3, 1
/* 804D0A3C  4B FF FD AD */	bl calc_scale_Ef_Room_Sunshine_Museum
/* 804D0A40  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 804D0A44  48 00 00 44 */	b lbl_804D0A88
lbl_804D0A48:
/* 804D0A48  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000A8C0@ha */
/* 804D0A4C  38 03 A8 C0 */	addi r0, r3, 0xA8C0 /* 0x0000A8C0@l */
/* 804D0A50  7C 04 00 00 */	cmpw r4, r0
/* 804D0A54  41 80 00 28 */	blt lbl_804D0A7C
/* 804D0A58  38 03 19 40 */	addi r0, r3, 0x1940
/* 804D0A5C  7C 04 00 00 */	cmpw r4, r0
/* 804D0A60  40 80 00 1C */	bge lbl_804D0A7C
/* 804D0A64  3C 84 FF FF */	addis r4, r4, 0xffff
/* 804D0A68  38 60 00 00 */	li r3, 0
/* 804D0A6C  38 84 57 40 */	addi r4, r4, 0x5740
/* 804D0A70  4B FF FD 79 */	bl calc_scale_Ef_Room_Sunshine_Museum
/* 804D0A74  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 804D0A78  48 00 00 10 */	b lbl_804D0A88
lbl_804D0A7C:
/* 804D0A7C  3C 60 80 64 */	lis r3, lit_391@ha /* 0x806463D0@ha */
/* 804D0A80  C0 03 63 D0 */	lfs f0, lit_391@l(r3)  /* 0x806463D0@l */
/* 804D0A84  D0 1F 00 5C */	stfs f0, 0x5c(r31)
lbl_804D0A88:
/* 804D0A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D0A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D0A90  7C 08 03 A6 */	mtlr r0
/* 804D0A94  38 21 00 10 */	addi r1, r1, 0x10
/* 804D0A98  4E 80 00 20 */	blr 
