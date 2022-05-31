lbl_803ED9DC:
/* 803ED9DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ED9E0  7C 08 02 A6 */	mflr r0
/* 803ED9E4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803ED9E8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803ED9EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ED9F0  3C 63 00 02 */	addis r3, r3, 2
/* 803ED9F4  88 03 41 6F */	lbz r0, 0x416f(r3)
/* 803ED9F8  38 63 61 20 */	addi r3, r3, 0x6120
/* 803ED9FC  28 00 00 00 */	cmplwi r0, 0
/* 803EDA00  40 82 00 0C */	bne lbl_803EDA0C
/* 803EDA04  38 60 00 01 */	li r3, 1
/* 803EDA08  48 00 00 20 */	b lbl_803EDA28
lbl_803EDA0C:
/* 803EDA0C  4B FF FC 31 */	bl mSC_LightHouse_get_period
/* 803EDA10  2C 03 00 03 */	cmpwi r3, 3
/* 803EDA14  41 82 00 0C */	beq lbl_803EDA20
/* 803EDA18  38 60 00 00 */	li r3, 0
/* 803EDA1C  48 00 00 0C */	b lbl_803EDA28
lbl_803EDA20:
/* 803EDA20  4B FF FF 85 */	bl mSC_LightHouse_clear_data
/* 803EDA24  38 60 00 01 */	li r3, 1
lbl_803EDA28:
/* 803EDA28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EDA2C  7C 08 03 A6 */	mtlr r0
/* 803EDA30  38 21 00 10 */	addi r1, r1, 0x10
/* 803EDA34  4E 80 00 20 */	blr 
