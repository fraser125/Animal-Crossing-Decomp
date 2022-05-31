lbl_803DF740:
/* 803DF740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DF744  7C 08 02 A6 */	mflr r0
/* 803DF748  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DF74C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DF750  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DF754  93 C1 00 08 */	stw r30, 8(r1)
/* 803DF758  7C 7E 1B 78 */	mr r30, r3
/* 803DF75C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803DF760  3F E3 00 02 */	addis r31, r3, 2
/* 803DF764  3B FF 0D 98 */	addi r31, r31, 0xd98
/* 803DF768  4B FB C9 2D */	bl mEv_get_special_event_type
/* 803DF76C  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 803DF770  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803DF774  2C 00 00 03 */	cmpwi r0, 3
/* 803DF778  41 82 00 1C */	beq lbl_803DF794
/* 803DF77C  40 80 00 20 */	bge lbl_803DF79C
/* 803DF780  2C 00 00 02 */	cmpwi r0, 2
/* 803DF784  40 80 00 08 */	bge lbl_803DF78C
/* 803DF788  48 00 00 14 */	b lbl_803DF79C
lbl_803DF78C:
/* 803DF78C  38 00 00 4E */	li r0, 0x4e
/* 803DF790  48 00 00 10 */	b lbl_803DF7A0
lbl_803DF794:
/* 803DF794  38 00 00 4B */	li r0, 0x4b
/* 803DF798  48 00 00 08 */	b lbl_803DF7A0
lbl_803DF79C:
/* 803DF79C  38 00 FF FF */	li r0, -1
lbl_803DF7A0:
/* 803DF7A0  7C 00 18 00 */	cmpw r0, r3
/* 803DF7A4  40 82 00 20 */	bne lbl_803DF7C4
/* 803DF7A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DF7AC  7F E4 FB 78 */	mr r4, r31
/* 803DF7B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DF7B4  7F C5 F3 78 */	mr r5, r30
/* 803DF7B8  3C 63 00 02 */	addis r3, r3, 2
/* 803DF7BC  38 63 0E C6 */	addi r3, r3, 0xec6
/* 803DF7C0  4B FF FE B1 */	bl mPO_delivery_one_address_leaflet
lbl_803DF7C4:
/* 803DF7C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DF7C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DF7CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DF7D0  7C 08 03 A6 */	mtlr r0
/* 803DF7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803DF7D8  4E 80 00 20 */	blr 
