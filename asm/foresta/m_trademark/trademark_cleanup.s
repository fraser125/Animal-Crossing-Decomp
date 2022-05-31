lbl_8062BD78:
/* 8062BD78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062BD7C  7C 08 02 A6 */	mflr r0
/* 8062BD80  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062BD84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062BD88  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062BD8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062BD90  3F E3 00 01 */	addis r31, r3, 1
/* 8062BD94  3B FF 9C E8 */	addi r31, r31, -25368
/* 8062BD98  93 C1 00 08 */	stw r30, 8(r1)
/* 8062BD9C  3B C0 00 00 */	li r30, 0
lbl_8062BDA0:
/* 8062BDA0  9B DF 00 2C */	stb r30, 0x2c(r31)
/* 8062BDA4  38 7F 1A 30 */	addi r3, r31, 0x1a30
/* 8062BDA8  38 80 00 0A */	li r4, 0xa
/* 8062BDAC  9B DF 00 2E */	stb r30, 0x2e(r31)
/* 8062BDB0  4B D9 09 A1 */	bl mMl_clear_mail_box
/* 8062BDB4  3B DE 00 01 */	addi r30, r30, 1
/* 8062BDB8  3B FF 26 B0 */	addi r31, r31, 0x26b0
/* 8062BDBC  2C 1E 00 04 */	cmpwi r30, 4
/* 8062BDC0  41 80 FF E0 */	blt lbl_8062BDA0
/* 8062BDC4  38 60 00 00 */	li r3, 0
/* 8062BDC8  4B 9D AA ED */	bl JW_SetLogoMode
/* 8062BDCC  3C 60 81 1C */	lis r3, SoftResetEnable@ha /* 0x811C5324@ha */
/* 8062BDD0  38 00 00 01 */	li r0, 1
/* 8062BDD4  98 03 53 24 */	stb r0, SoftResetEnable@l(r3)  /* 0x811C5324@l */
/* 8062BDD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062BDDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062BDE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062BDE4  7C 08 03 A6 */	mtlr r0
/* 8062BDE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8062BDEC  4E 80 00 20 */	blr 
