lbl_804FAC34:
/* 804FAC34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FAC38  7C 08 02 A6 */	mflr r0
/* 804FAC3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FAC40  39 61 00 30 */	addi r11, r1, 0x30
/* 804FAC44  4B BA 02 89 */	bl func_8009AECC
/* 804FAC48  2C 05 00 00 */	cmpwi r5, 0
/* 804FAC4C  7C 7C 1B 78 */	mr r28, r3
/* 804FAC50  7C 9D 23 78 */	mr r29, r4
/* 804FAC54  7C FB 3B 78 */	mr r27, r7
/* 804FAC58  40 81 00 84 */	ble lbl_804FACDC
/* 804FAC5C  2C 05 00 FE */	cmpwi r5, 0xfe
/* 804FAC60  41 82 00 6C */	beq lbl_804FACCC
/* 804FAC64  40 80 00 10 */	bge lbl_804FAC74
/* 804FAC68  2C 05 00 02 */	cmpwi r5, 2
/* 804FAC6C  41 82 00 54 */	beq lbl_804FACC0
/* 804FAC70  48 00 01 04 */	b lbl_804FAD74
lbl_804FAC74:
/* 804FAC74  2C 05 01 00 */	cmpwi r5, 0x100
/* 804FAC78  40 80 00 FC */	bge lbl_804FAD74
/* 804FAC7C  80 7B 00 00 */	lwz r3, 0(r27)
/* 804FAC80  3B E0 00 00 */	li r31, 0
/* 804FAC84  3B C0 00 01 */	li r30, 1
/* 804FAC88  2C 03 00 00 */	cmpwi r3, 0
/* 804FAC8C  40 81 00 8C */	ble lbl_804FAD18
/* 804FAC90  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804FAC94  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 804FAC98  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804FAC9C  3C A4 00 02 */	addis r5, r4, 2
/* 804FACA0  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 804FACA4  38 86 FF FF */	addi r4, r6, 0xFFFF /* 0x0000FFFF@l */
/* 804FACA8  81 85 00 04 */	lwz r12, 4(r5)
/* 804FACAC  7D 89 03 A6 */	mtctr r12
/* 804FACB0  4E 80 04 21 */	bctrl 
/* 804FACB4  38 00 00 00 */	li r0, 0
/* 804FACB8  90 1B 00 00 */	stw r0, 0(r27)
/* 804FACBC  48 00 00 5C */	b lbl_804FAD18
lbl_804FACC0:
/* 804FACC0  3B E0 00 6E */	li r31, 0x6e
/* 804FACC4  3B C0 00 00 */	li r30, 0
/* 804FACC8  48 00 00 50 */	b lbl_804FAD18
lbl_804FACCC:
/* 804FACCC  3B E0 00 76 */	li r31, 0x76
/* 804FACD0  3B C0 00 00 */	li r30, 0
/* 804FACD4  48 00 00 44 */	b lbl_804FAD18
/* 804FACD8  48 00 00 9C */	b lbl_804FAD74
lbl_804FACDC:
/* 804FACDC  2C 06 00 00 */	cmpwi r6, 0
/* 804FACE0  41 82 00 94 */	beq lbl_804FAD74
/* 804FACE4  80 1C 0D B4 */	lwz r0, 0xdb4(r28)
/* 804FACE8  2C 00 00 6E */	cmpwi r0, 0x6e
/* 804FACEC  40 82 00 10 */	bne lbl_804FACFC
/* 804FACF0  3B E0 00 6F */	li r31, 0x6f
/* 804FACF4  3B C0 00 01 */	li r30, 1
/* 804FACF8  48 00 00 20 */	b lbl_804FAD18
lbl_804FACFC:
/* 804FACFC  2C 00 00 76 */	cmpwi r0, 0x76
/* 804FAD00  40 82 00 74 */	bne lbl_804FAD74
/* 804FAD04  3B E0 00 00 */	li r31, 0
/* 804FAD08  3B C0 00 01 */	li r30, 1
/* 804FAD0C  48 00 00 0C */	b lbl_804FAD18
/* 804FAD10  48 00 00 64 */	b lbl_804FAD74
/* 804FAD14  48 00 00 60 */	b lbl_804FAD74
lbl_804FAD18:
/* 804FAD18  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804FAD1C  7F 83 E3 78 */	mr r3, r28
/* 804FAD20  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804FAD24  7F E4 FB 78 */	mr r4, r31
/* 804FAD28  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FAD2C  38 A1 00 0C */	addi r5, r1, 0xc
/* 804FAD30  38 C1 00 08 */	addi r6, r1, 8
/* 804FAD34  4B FD F2 2D */	bl Player_actor_SetupItem_Base1
/* 804FAD38  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FAD3C  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804FAD40  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FAD44  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804FAD48  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FAD4C  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FAD50  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804FAD54  7F 83 E3 78 */	mr r3, r28
/* 804FAD58  FC 40 08 90 */	fmr f2, f1
/* 804FAD5C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804FAD60  81 01 00 08 */	lwz r8, 8(r1)
/* 804FAD64  7F A4 EB 78 */	mr r4, r29
/* 804FAD68  7F E5 FB 78 */	mr r5, r31
/* 804FAD6C  7F C7 F3 78 */	mr r7, r30
/* 804FAD70  4B FD BA A1 */	bl Player_actor_InitAnimation_Base2
lbl_804FAD74:
/* 804FAD74  39 61 00 30 */	addi r11, r1, 0x30
/* 804FAD78  4B BA 01 A1 */	bl func_8009AF18
/* 804FAD7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FAD80  7C 08 03 A6 */	mtlr r0
/* 804FAD84  38 21 00 30 */	addi r1, r1, 0x30
/* 804FAD88  4E 80 00 20 */	blr 
