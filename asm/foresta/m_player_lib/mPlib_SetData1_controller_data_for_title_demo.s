lbl_803DDDDC:
/* 803DDDDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DDDE0  7C 08 02 A6 */	mflr r0
/* 803DDDE4  3C A0 81 17 */	lis r5, controller_data_for_title_demo@ha /* 0x8116EE38@ha */
/* 803DDDE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DDDEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DDDF0  7C 9F 23 78 */	mr r31, r4
/* 803DDDF4  93 C1 00 08 */	stw r30, 8(r1)
/* 803DDDF8  7C 7E 1B 78 */	mr r30, r3
/* 803DDDFC  38 65 EE 38 */	addi r3, r5, controller_data_for_title_demo@l /* 0x8116EE38@l */
/* 803DDE00  4B FB 7D 09 */	bl mCon_calc
/* 803DDE04  3C 60 81 17 */	lis r3, controller_data_for_title_demo@ha /* 0x8116EE38@ha */
/* 803DDE08  38 63 EE 38 */	addi r3, r3, controller_data_for_title_demo@l /* 0x8116EE38@l */
/* 803DDE0C  88 03 00 38 */	lbz r0, 0x38(r3)
/* 803DDE10  7C 00 07 75 */	extsb. r0, r0
/* 803DDE14  40 82 00 18 */	bne lbl_803DDE2C
/* 803DDE18  2C 1E 00 00 */	cmpwi r30, 0
/* 803DDE1C  41 82 00 10 */	beq lbl_803DDE2C
/* 803DDE20  38 00 00 01 */	li r0, 1
/* 803DDE24  98 03 00 38 */	stb r0, 0x38(r3)
/* 803DDE28  48 00 00 0C */	b lbl_803DDE34
lbl_803DDE2C:
/* 803DDE2C  38 00 00 00 */	li r0, 0
/* 803DDE30  98 03 00 38 */	stb r0, 0x38(r3)
lbl_803DDE34:
/* 803DDE34  3C 60 81 17 */	lis r3, controller_data_for_title_demo@ha /* 0x8116EE38@ha */
/* 803DDE38  38 63 EE 38 */	addi r3, r3, controller_data_for_title_demo@l /* 0x8116EE38@l */
/* 803DDE3C  88 03 00 3A */	lbz r0, 0x3a(r3)
/* 803DDE40  9B C3 00 39 */	stb r30, 0x39(r3)
/* 803DDE44  7C 00 07 75 */	extsb. r0, r0
/* 803DDE48  40 82 00 18 */	bne lbl_803DDE60
/* 803DDE4C  2C 1F 00 00 */	cmpwi r31, 0
/* 803DDE50  41 82 00 10 */	beq lbl_803DDE60
/* 803DDE54  38 00 00 01 */	li r0, 1
/* 803DDE58  98 03 00 3A */	stb r0, 0x3a(r3)
/* 803DDE5C  48 00 00 0C */	b lbl_803DDE68
lbl_803DDE60:
/* 803DDE60  38 00 00 00 */	li r0, 0
/* 803DDE64  98 03 00 3A */	stb r0, 0x3a(r3)
lbl_803DDE68:
/* 803DDE68  3C 60 81 17 */	lis r3, controller_data_for_title_demo@ha /* 0x8116EE38@ha */
/* 803DDE6C  38 63 EE 38 */	addi r3, r3, controller_data_for_title_demo@l /* 0x8116EE38@l */
/* 803DDE70  9B E3 00 3B */	stb r31, 0x3b(r3)
/* 803DDE74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DDE78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DDE7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DDE80  7C 08 03 A6 */	mtlr r0
/* 803DDE84  38 21 00 10 */	addi r1, r1, 0x10
/* 803DDE88  4E 80 00 20 */	blr 
