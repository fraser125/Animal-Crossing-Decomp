lbl_803EAD10:
/* 803EAD10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EAD14  7C 08 02 A6 */	mflr r0
/* 803EAD18  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EAD1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EAD20  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EAD24  3C 63 00 02 */	addis r3, r3, 2
/* 803EAD28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803EAD2C  80 03 61 24 */	lwz r0, 0x6124(r3)
/* 803EAD30  80 63 61 20 */	lwz r3, 0x6120(r3)
/* 803EAD34  90 01 00 0C */	stw r0, 0xc(r1)
/* 803EAD38  88 01 00 0D */	lbz r0, 0xd(r1)
/* 803EAD3C  90 61 00 08 */	stw r3, 8(r1)
/* 803EAD40  28 00 00 0B */	cmplwi r0, 0xb
/* 803EAD44  A0 61 00 0E */	lhz r3, 0xe(r1)
/* 803EAD48  8B E1 00 0B */	lbz r31, 0xb(r1)
/* 803EAD4C  40 82 00 28 */	bne lbl_803EAD74
/* 803EAD50  38 80 00 0B */	li r4, 0xb
/* 803EAD54  38 A0 00 04 */	li r5, 4
/* 803EAD58  38 C0 00 04 */	li r6, 4
/* 803EAD5C  48 01 C6 51 */	bl lbRTC_Weekly_day
/* 803EAD60  38 03 00 01 */	addi r0, r3, 1
/* 803EAD64  7C 00 F8 00 */	cmpw r0, r31
/* 803EAD68  40 82 00 0C */	bne lbl_803EAD74
/* 803EAD6C  38 60 00 01 */	li r3, 1
/* 803EAD70  48 00 00 08 */	b lbl_803EAD78
lbl_803EAD74:
/* 803EAD74  38 60 00 00 */	li r3, 0
lbl_803EAD78:
/* 803EAD78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EAD7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803EAD80  7C 08 03 A6 */	mtlr r0
/* 803EAD84  38 21 00 20 */	addi r1, r1, 0x20
/* 803EAD88  4E 80 00 20 */	blr 
