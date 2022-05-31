lbl_8063C9B0:
/* 8063C9B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8063C9B4  7C 08 02 A6 */	mflr r0
/* 8063C9B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8063C9BC  39 61 00 30 */	addi r11, r1, 0x30
/* 8063C9C0  4B A5 E5 0D */	bl func_8009AECC
/* 8063C9C4  7C 7C 1B 78 */	mr r28, r3
/* 8063C9C8  7C BB 2B 78 */	mr r27, r5
/* 8063C9CC  A8 03 00 02 */	lha r0, 2(r3)
/* 8063C9D0  2C 00 00 01 */	cmpwi r0, 1
/* 8063C9D4  40 82 00 0C */	bne lbl_8063C9E0
/* 8063C9D8  80 BB 20 90 */	lwz r5, 0x2090(r27)
/* 8063C9DC  48 00 00 08 */	b lbl_8063C9E4
lbl_8063C9E0:
/* 8063C9E0  80 BB 00 A0 */	lwz r5, 0xa0(r27)
lbl_8063C9E4:
/* 8063C9E4  54 A4 10 3A */	slwi r4, r5, 2
/* 8063C9E8  7F 67 DB 78 */	mr r7, r27
/* 8063C9EC  7C 86 23 78 */	mr r6, r4
/* 8063C9F0  7C 65 00 D0 */	neg r3, r5
/* 8063C9F4  4B FF FF 6D */	bl fTL_GetTwoTileGfx
/* 8063C9F8  A8 1C 00 02 */	lha r0, 2(r28)
/* 8063C9FC  7C 7F 1B 78 */	mr r31, r3
/* 8063CA00  2C 00 00 01 */	cmpwi r0, 1
/* 8063CA04  40 82 00 1C */	bne lbl_8063CA20
/* 8063CA08  C0 1C 08 34 */	lfs f0, 0x834(r28)
/* 8063CA0C  FC 00 00 1E */	fctiwz f0, f0
/* 8063CA10  D8 01 00 08 */	stfd f0, 8(r1)
/* 8063CA14  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8063CA18  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 8063CA1C  48 00 00 08 */	b lbl_8063CA24
lbl_8063CA20:
/* 8063CA20  3B 80 00 9C */	li r28, 0x9c
lbl_8063CA24:
/* 8063CA24  28 1F 00 00 */	cmplwi r31, 0
/* 8063CA28  41 82 00 E4 */	beq lbl_8063CB0C
/* 8063CA2C  83 DB 00 00 */	lwz r30, 0(r27)
/* 8063CA30  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063CA34  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063CA38  83 BE 02 D0 */	lwz r29, 0x2d0(r30)
/* 8063CA3C  38 7D 00 08 */	addi r3, r29, 8
/* 8063CA40  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063CA44  90 1D 00 00 */	stw r0, 0(r29)
/* 8063CA48  80 7B 00 00 */	lwz r3, 0(r27)
/* 8063CA4C  4B DD 09 89 */	bl _Matrix_to_Mtx_new
/* 8063CA50  90 7D 00 04 */	stw r3, 4(r29)
/* 8063CA54  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063CA58  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063CA5C  83 BE 02 E0 */	lwz r29, 0x2e0(r30)
/* 8063CA60  38 7D 00 08 */	addi r3, r29, 8
/* 8063CA64  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8063CA68  90 1D 00 00 */	stw r0, 0(r29)
/* 8063CA6C  80 7B 00 00 */	lwz r3, 0(r27)
/* 8063CA70  4B DD 09 65 */	bl _Matrix_to_Mtx_new
/* 8063CA74  90 7D 00 04 */	stw r3, 4(r29)
/* 8063CA78  3C C0 81 0E */	lis r6, int_tak_lion_on_model@ha /* 0x810E4FC0@ha */
/* 8063CA7C  3C A0 81 0E */	lis r5, int_tak_lion_onT_model@ha /* 0x810E5050@ha */
/* 8063CA80  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8063CA84  81 5E 02 D0 */	lwz r10, 0x2d0(r30)
/* 8063CA88  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 8063CA8C  3C 60 81 0E */	lis r3, int_tak_lion_alphaT_model@ha /* 0x810E5190@ha */
/* 8063CA90  3D 20 DE 00 */	lis r9, 0xde00
/* 8063CA94  38 EA 00 08 */	addi r7, r10, 8
/* 8063CA98  39 06 4F C0 */	addi r8, r6, int_tak_lion_on_model@l /* 0x810E4FC0@l */
/* 8063CA9C  90 FE 02 D0 */	stw r7, 0x2d0(r30)
/* 8063CAA0  38 E5 50 50 */	addi r7, r5, int_tak_lion_onT_model@l /* 0x810E5050@l */
/* 8063CAA4  64 06 FA 00 */	oris r6, r0, 0xfa00
/* 8063CAA8  38 A0 FF 7F */	li r5, -129
/* 8063CAAC  91 2A 00 00 */	stw r9, 0(r10)
/* 8063CAB0  38 84 00 20 */	addi r4, r4, 0x0020 /* 0xDB060020@l */
/* 8063CAB4  38 03 51 90 */	addi r0, r3, int_tak_lion_alphaT_model@l /* 0x810E5190@l */
/* 8063CAB8  91 0A 00 04 */	stw r8, 4(r10)
/* 8063CABC  81 1E 02 D0 */	lwz r8, 0x2d0(r30)
/* 8063CAC0  38 68 00 08 */	addi r3, r8, 8
/* 8063CAC4  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8063CAC8  91 28 00 00 */	stw r9, 0(r8)
/* 8063CACC  90 E8 00 04 */	stw r7, 4(r8)
/* 8063CAD0  80 FE 02 E0 */	lwz r7, 0x2e0(r30)
/* 8063CAD4  38 67 00 08 */	addi r3, r7, 8
/* 8063CAD8  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8063CADC  90 C7 00 00 */	stw r6, 0(r7)
/* 8063CAE0  90 A7 00 04 */	stw r5, 4(r7)
/* 8063CAE4  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 8063CAE8  38 65 00 08 */	addi r3, r5, 8
/* 8063CAEC  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8063CAF0  90 85 00 00 */	stw r4, 0(r5)
/* 8063CAF4  93 E5 00 04 */	stw r31, 4(r5)
/* 8063CAF8  80 9E 02 E0 */	lwz r4, 0x2e0(r30)
/* 8063CAFC  38 64 00 08 */	addi r3, r4, 8
/* 8063CB00  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8063CB04  91 24 00 00 */	stw r9, 0(r4)
/* 8063CB08  90 04 00 04 */	stw r0, 4(r4)
lbl_8063CB0C:
/* 8063CB0C  39 61 00 30 */	addi r11, r1, 0x30
/* 8063CB10  4B A5 E4 09 */	bl func_8009AF18
/* 8063CB14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8063CB18  7C 08 03 A6 */	mtlr r0
/* 8063CB1C  38 21 00 30 */	addi r1, r1, 0x30
/* 8063CB20  4E 80 00 20 */	blr 
