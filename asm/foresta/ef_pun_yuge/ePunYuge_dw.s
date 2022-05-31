lbl_8061AA90:
/* 8061AA90  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8061AA94  7C 08 02 A6 */	mflr r0
/* 8061AA98  90 01 00 74 */	stw r0, 0x74(r1)
/* 8061AA9C  39 61 00 70 */	addi r11, r1, 0x70
/* 8061AAA0  4B A8 04 11 */	bl func_8009AEB0
/* 8061AAA4  7C 74 1B 78 */	mr r20, r3
/* 8061AAA8  3C 60 80 6D */	lis r3, data_806D3308@ha /* 0x806D3308@ha */
/* 8061AAAC  A8 14 00 00 */	lha r0, 0(r20)
/* 8061AAB0  7C 95 23 78 */	mr r21, r4
/* 8061AAB4  3B C3 33 08 */	addi r30, r3, data_806D3308@l /* 0x806D3308@l */
/* 8061AAB8  20 00 00 1A */	subfic r0, r0, 0x1a
/* 8061AABC  7C 1B 07 34 */	extsh r27, r0
/* 8061AAC0  7F 63 0E 71 */	srawi. r3, r27, 1
/* 8061AAC4  40 80 00 0C */	bge lbl_8061AAD0
/* 8061AAC8  38 00 00 00 */	li r0, 0
/* 8061AACC  48 00 00 14 */	b lbl_8061AAE0
lbl_8061AAD0:
/* 8061AAD0  2C 03 00 0C */	cmpwi r3, 0xc
/* 8061AAD4  38 00 00 0C */	li r0, 0xc
/* 8061AAD8  41 81 00 08 */	bgt lbl_8061AAE0
/* 8061AADC  7C 60 1B 78 */	mr r0, r3
lbl_8061AAE0:
/* 8061AAE0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061AAE4  7C 1F 07 34 */	extsh r31, r0
/* 8061AAE8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061AAEC  3C A0 80 65 */	lis r5, lit_430@ha /* 0x8064CA00@ha */
/* 8061AAF0  3F 83 00 02 */	addis r28, r3, 2
/* 8061AAF4  3C 80 80 65 */	lis r4, lit_431@ha /* 0x8064CA04@ha */
/* 8061AAF8  80 7C 60 9C */	lwz r3, 0x609c(r28)
/* 8061AAFC  39 1E 00 60 */	addi r8, r30, 0x60
/* 8061AB00  38 E5 CA 00 */	addi r7, r5, lit_430@l /* 0x8064CA00@l */
/* 8061AB04  38 C4 CA 04 */	addi r6, r4, lit_431@l /* 0x8064CA04@l */
/* 8061AB08  57 FD 10 3A */	slwi r29, r31, 2
/* 8061AB0C  38 BE 00 2C */	addi r5, r30, 0x2c
/* 8061AB10  7C 85 EA 14 */	add r4, r5, r29
/* 8061AB14  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8061AB18  7F 63 DB 78 */	mr r3, r27
/* 8061AB1C  7F 45 E8 AE */	lbzx r26, r5, r29
/* 8061AB20  8B 24 00 01 */	lbz r25, 1(r4)
/* 8061AB24  38 80 00 00 */	li r4, 0
/* 8061AB28  7F 08 F8 AE */	lbzx r24, r8, r31
/* 8061AB2C  38 A0 00 08 */	li r5, 8
/* 8061AB30  C0 27 00 00 */	lfs f1, 0(r7)
/* 8061AB34  C0 46 00 00 */	lfs f2, 0(r6)
/* 8061AB38  7D 89 03 A6 */	mtctr r12
/* 8061AB3C  4E 80 04 21 */	bctrl 
/* 8061AB40  FC 00 08 1E */	fctiwz f0, f1
/* 8061AB44  80 7C 60 9C */	lwz r3, 0x609c(r28)
/* 8061AB48  3C A0 80 65 */	lis r5, lit_431@ha /* 0x8064CA04@ha */
/* 8061AB4C  3C 80 80 65 */	lis r4, lit_385@ha /* 0x8064C9F8@ha */
/* 8061AB50  38 C5 CA 04 */	addi r6, r5, lit_431@l /* 0x8064CA04@l */
/* 8061AB54  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8061AB58  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8061AB5C  38 A4 C9 F8 */	addi r5, r4, lit_385@l /* 0x8064C9F8@l */
/* 8061AB60  7F 63 DB 78 */	mr r3, r27
/* 8061AB64  C0 26 00 00 */	lfs f1, 0(r6)
/* 8061AB68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061AB6C  38 80 00 0C */	li r4, 0xc
/* 8061AB70  C0 45 00 00 */	lfs f2, 0(r5)
/* 8061AB74  38 A0 00 1A */	li r5, 0x1a
/* 8061AB78  54 17 06 3E */	clrlwi r23, r0, 0x18
/* 8061AB7C  7D 89 03 A6 */	mtctr r12
/* 8061AB80  4E 80 04 21 */	bctrl 
/* 8061AB84  FC 00 08 1E */	fctiwz f0, f1
/* 8061AB88  80 7C 60 9C */	lwz r3, 0x609c(r28)
/* 8061AB8C  3C A0 80 65 */	lis r5, lit_385@ha /* 0x8064C9F8@ha */
/* 8061AB90  3C 80 80 65 */	lis r4, lit_431@ha /* 0x8064CA04@ha */
/* 8061AB94  38 C5 C9 F8 */	addi r6, r5, lit_385@l /* 0x8064C9F8@l */
/* 8061AB98  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8061AB9C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8061ABA0  38 A4 CA 04 */	addi r5, r4, lit_431@l /* 0x8064CA04@l */
/* 8061ABA4  7F 63 DB 78 */	mr r3, r27
/* 8061ABA8  C0 26 00 00 */	lfs f1, 0(r6)
/* 8061ABAC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8061ABB0  38 80 00 00 */	li r4, 0
/* 8061ABB4  C0 45 00 00 */	lfs f2, 0(r5)
/* 8061ABB8  38 A0 00 08 */	li r5, 8
/* 8061ABBC  54 16 06 3E */	clrlwi r22, r0, 0x18
/* 8061ABC0  7D 89 03 A6 */	mtctr r12
/* 8061ABC4  4E 80 04 21 */	bctrl 
/* 8061ABC8  FC 00 08 1E */	fctiwz f0, f1
/* 8061ABCC  2C 1F 00 04 */	cmpwi r31, 4
/* 8061ABD0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8061ABD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061ABD8  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 8061ABDC  41 81 00 44 */	bgt lbl_8061AC20
/* 8061ABE0  3C C0 80 65 */	lis r6, lit_432@ha /* 0x8064CA08@ha */
/* 8061ABE4  3C A0 80 65 */	lis r5, lit_433@ha /* 0x8064CA0C@ha */
/* 8061ABE8  C0 46 CA 08 */	lfs f2, lit_432@l(r6)  /* 0x8064CA08@l */
/* 8061ABEC  3C 80 80 65 */	lis r4, lit_434@ha /* 0x8064CA10@ha */
/* 8061ABF0  C0 25 CA 0C */	lfs f1, lit_433@l(r5)  /* 0x8064CA0C@l */
/* 8061ABF4  38 61 00 08 */	addi r3, r1, 8
/* 8061ABF8  C0 04 CA 10 */	lfs f0, lit_434@l(r4)  /* 0x8064CA10@l */
/* 8061ABFC  D0 41 00 08 */	stfs f2, 8(r1)
/* 8061AC00  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8061AC04  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8061AC08  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8061AC0C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8061AC10  7C 03 EC 2E */	lfsx f0, r3, r29
/* 8061AC14  D0 14 00 38 */	stfs f0, 0x38(r20)
/* 8061AC18  D0 54 00 34 */	stfs f2, 0x34(r20)
/* 8061AC1C  48 00 00 3C */	b lbl_8061AC58
lbl_8061AC20:
/* 8061AC20  80 9C 60 9C */	lwz r4, 0x609c(r28)
/* 8061AC24  3C C0 80 65 */	lis r6, lit_432@ha /* 0x8064CA08@ha */
/* 8061AC28  3C A0 80 65 */	lis r5, lit_435@ha /* 0x8064CA14@ha */
/* 8061AC2C  7F 63 DB 78 */	mr r3, r27
/* 8061AC30  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8061AC34  38 80 00 0A */	li r4, 0xa
/* 8061AC38  C0 45 CA 14 */	lfs f2, lit_435@l(r5)  /* 0x8064CA14@l */
/* 8061AC3C  38 A0 00 1A */	li r5, 0x1a
/* 8061AC40  C0 26 CA 08 */	lfs f1, lit_432@l(r6)  /* 0x8064CA08@l */
/* 8061AC44  7D 89 03 A6 */	mtctr r12
/* 8061AC48  4E 80 04 21 */	bctrl 
/* 8061AC4C  D0 34 00 34 */	stfs f1, 0x34(r20)
/* 8061AC50  C0 14 00 34 */	lfs f0, 0x34(r20)
/* 8061AC54  D0 14 00 38 */	stfs f0, 0x38(r20)
lbl_8061AC58:
/* 8061AC58  83 95 00 00 */	lwz r28, 0(r21)
/* 8061AC5C  7F 83 E3 78 */	mr r3, r28
/* 8061AC60  4B DC A4 F9 */	bl _texture_z_light_fog_prim_xlu
/* 8061AC64  C0 34 00 10 */	lfs f1, 0x10(r20)
/* 8061AC68  38 60 00 00 */	li r3, 0
/* 8061AC6C  C0 54 00 14 */	lfs f2, 0x14(r20)
/* 8061AC70  C0 74 00 18 */	lfs f3, 0x18(r20)
/* 8061AC74  4B DF 16 8D */	bl Matrix_translate
/* 8061AC78  38 75 20 4C */	addi r3, r21, 0x204c
/* 8061AC7C  38 80 00 01 */	li r4, 1
/* 8061AC80  4B DF 16 19 */	bl Matrix_mult
/* 8061AC84  A8 74 00 4C */	lha r3, 0x4c(r20)
/* 8061AC88  38 80 00 01 */	li r4, 1
/* 8061AC8C  4B DF 1B 65 */	bl Matrix_RotateZ
/* 8061AC90  C0 34 00 40 */	lfs f1, 0x40(r20)
/* 8061AC94  38 60 00 01 */	li r3, 1
/* 8061AC98  C0 54 00 44 */	lfs f2, 0x44(r20)
/* 8061AC9C  C0 74 00 48 */	lfs f3, 0x48(r20)
/* 8061ACA0  4B DF 16 61 */	bl Matrix_translate
/* 8061ACA4  C0 34 00 34 */	lfs f1, 0x34(r20)
/* 8061ACA8  38 60 00 01 */	li r3, 1
/* 8061ACAC  C0 54 00 38 */	lfs f2, 0x38(r20)
/* 8061ACB0  C0 74 00 3C */	lfs f3, 0x3c(r20)
/* 8061ACB4  4B DF 17 39 */	bl Matrix_scale
/* 8061ACB8  82 9C 02 E0 */	lwz r20, 0x2e0(r28)
/* 8061ACBC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8061ACC0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8061ACC4  38 74 00 08 */	addi r3, r20, 8
/* 8061ACC8  90 7C 02 E0 */	stw r3, 0x2e0(r28)
/* 8061ACCC  90 14 00 00 */	stw r0, 0(r20)
/* 8061ACD0  80 75 00 00 */	lwz r3, 0(r21)
/* 8061ACD4  4B DF 27 01 */	bl _Matrix_to_Mtx_new
/* 8061ACD8  90 74 00 04 */	stw r3, 4(r20)
/* 8061ACDC  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 8061ACE0  56 E4 80 1E */	slwi r4, r23, 0x10
/* 8061ACE4  57 E0 80 1E */	slwi r0, r31, 0x10
/* 8061ACE8  81 7C 02 E0 */	lwz r11, 0x2e0(r28)
/* 8061ACEC  3C 60 80 CC */	lis r3, ef_pun01_00_modelT@ha /* 0x80CBC8E0@ha */
/* 8061ACF0  38 C5 00 20 */	addi r6, r5, 0x0020 /* 0xDB060020@l */
/* 8061ACF4  57 47 10 3A */	slwi r7, r26, 2
/* 8061ACF8  39 0B 00 08 */	addi r8, r11, 8
/* 8061ACFC  39 9E 00 00 */	addi r12, r30, 0
/* 8061AD00  91 1C 02 E0 */	stw r8, 0x2e0(r28)
/* 8061AD04  39 45 00 24 */	addi r10, r5, 0x24
/* 8061AD08  57 29 10 3A */	slwi r9, r25, 2
/* 8061AD0C  67 08 FA 00 */	oris r8, r24, 0xfa00
/* 8061AD10  90 CB 00 00 */	stw r6, 0(r11)
/* 8061AD14  64 86 FF 00 */	oris r6, r4, 0xff00
/* 8061AD18  56 E5 40 2E */	slwi r5, r23, 8
/* 8061AD1C  64 04 FF 00 */	oris r4, r0, 0xff00
/* 8061AD20  7C EC 38 2E */	lwzx r7, r12, r7
/* 8061AD24  7C C5 2B 78 */	or r5, r6, r5
/* 8061AD28  57 E0 40 2E */	slwi r0, r31, 8
/* 8061AD2C  3C C0 FB 00 */	lis r6, 0xfb00
/* 8061AD30  90 EB 00 04 */	stw r7, 4(r11)
/* 8061AD34  7C 80 03 78 */	or r0, r4, r0
/* 8061AD38  7E C7 2B 78 */	or r7, r22, r5
/* 8061AD3C  3C 80 DE 00 */	lis r4, 0xde00
/* 8061AD40  81 7C 02 E0 */	lwz r11, 0x2e0(r28)
/* 8061AD44  60 05 00 FF */	ori r5, r0, 0xff
/* 8061AD48  38 03 C8 E0 */	addi r0, r3, ef_pun01_00_modelT@l /* 0x80CBC8E0@l */
/* 8061AD4C  38 6B 00 08 */	addi r3, r11, 8
/* 8061AD50  90 7C 02 E0 */	stw r3, 0x2e0(r28)
/* 8061AD54  91 4B 00 00 */	stw r10, 0(r11)
/* 8061AD58  7C 6C 48 2E */	lwzx r3, r12, r9
/* 8061AD5C  90 6B 00 04 */	stw r3, 4(r11)
/* 8061AD60  81 3C 02 E0 */	lwz r9, 0x2e0(r28)
/* 8061AD64  38 69 00 08 */	addi r3, r9, 8
/* 8061AD68  90 7C 02 E0 */	stw r3, 0x2e0(r28)
/* 8061AD6C  91 09 00 00 */	stw r8, 0(r9)
/* 8061AD70  90 E9 00 04 */	stw r7, 4(r9)
/* 8061AD74  80 FC 02 E0 */	lwz r7, 0x2e0(r28)
/* 8061AD78  38 67 00 08 */	addi r3, r7, 8
/* 8061AD7C  90 7C 02 E0 */	stw r3, 0x2e0(r28)
/* 8061AD80  90 C7 00 00 */	stw r6, 0(r7)
/* 8061AD84  90 A7 00 04 */	stw r5, 4(r7)
/* 8061AD88  80 BC 02 E0 */	lwz r5, 0x2e0(r28)
/* 8061AD8C  38 65 00 08 */	addi r3, r5, 8
/* 8061AD90  90 7C 02 E0 */	stw r3, 0x2e0(r28)
/* 8061AD94  90 85 00 00 */	stw r4, 0(r5)
/* 8061AD98  90 05 00 04 */	stw r0, 4(r5)
/* 8061AD9C  39 61 00 70 */	addi r11, r1, 0x70
/* 8061ADA0  4B A8 01 5D */	bl func_8009AEFC
/* 8061ADA4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8061ADA8  7C 08 03 A6 */	mtlr r0
/* 8061ADAC  38 21 00 70 */	addi r1, r1, 0x70
/* 8061ADB0  4E 80 00 20 */	blr 
