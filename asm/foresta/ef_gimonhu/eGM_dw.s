lbl_8060C850:
/* 8060C850  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8060C854  7C 08 02 A6 */	mflr r0
/* 8060C858  90 01 00 34 */	stw r0, 0x34(r1)
/* 8060C85C  39 61 00 30 */	addi r11, r1, 0x30
/* 8060C860  4B A8 E6 6D */	bl func_8009AECC
/* 8060C864  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8060C868  7C 7B 1B 78 */	mr r27, r3
/* 8060C86C  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8060C870  A8 1B 00 00 */	lha r0, 0(r27)
/* 8060C874  3F C3 00 02 */	addis r30, r3, 2
/* 8060C878  3C C0 80 65 */	lis r6, lit_426@ha /* 0x8064C040@ha */
/* 8060C87C  80 7E 60 9C */	lwz r3, 0x609c(r30)
/* 8060C880  20 00 00 48 */	subfic r0, r0, 0x48
/* 8060C884  3C A0 80 65 */	lis r5, lit_386@ha /* 0x8064C03C@ha */
/* 8060C888  7C 9C 23 78 */	mr r28, r4
/* 8060C88C  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8060C890  7C 1F 07 34 */	extsh r31, r0
/* 8060C894  C0 45 C0 3C */	lfs f2, lit_386@l(r5)  /* 0x8064C03C@l */
/* 8060C898  7F E3 FB 78 */	mr r3, r31
/* 8060C89C  C0 26 C0 40 */	lfs f1, lit_426@l(r6)  /* 0x8064C040@l */
/* 8060C8A0  38 80 00 40 */	li r4, 0x40
/* 8060C8A4  38 A0 00 48 */	li r5, 0x48
/* 8060C8A8  7D 89 03 A6 */	mtctr r12
/* 8060C8AC  4E 80 04 21 */	bctrl 
/* 8060C8B0  FC 00 08 1E */	fctiwz f0, f1
/* 8060C8B4  2C 1F 00 32 */	cmpwi r31, 0x32
/* 8060C8B8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8060C8BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8060C8C0  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 8060C8C4  40 81 00 08 */	ble lbl_8060C8CC
/* 8060C8C8  3B E0 00 32 */	li r31, 0x32
lbl_8060C8CC:
/* 8060C8CC  7F E0 07 34 */	extsh r0, r31
/* 8060C8D0  3C 60 80 65 */	lis r3, lit_427@ha /* 0x8064C044@ha */
/* 8060C8D4  7C 00 0E 70 */	srawi r0, r0, 1
/* 8060C8D8  C0 43 C0 44 */	lfs f2, lit_427@l(r3)  /* 0x8064C044@l */
/* 8060C8DC  7C 04 07 35 */	extsh. r4, r0
/* 8060C8E0  40 80 00 0C */	bge lbl_8060C8EC
/* 8060C8E4  38 00 00 00 */	li r0, 0
/* 8060C8E8  48 00 00 14 */	b lbl_8060C8FC
lbl_8060C8EC:
/* 8060C8EC  2C 04 00 19 */	cmpwi r4, 0x19
/* 8060C8F0  38 00 00 19 */	li r0, 0x19
/* 8060C8F4  41 81 00 08 */	bgt lbl_8060C8FC
/* 8060C8F8  7C 80 23 78 */	mr r0, r4
lbl_8060C8FC:
/* 8060C8FC  7C 00 07 34 */	extsh r0, r0
/* 8060C900  3C 80 80 6D */	lis r4, eGM_scale_data@ha /* 0x806D23F8@ha */
/* 8060C904  54 00 18 38 */	slwi r0, r0, 3
/* 8060C908  3C 60 80 65 */	lis r3, lit_427@ha /* 0x8064C044@ha */
/* 8060C90C  38 A4 23 F8 */	addi r5, r4, eGM_scale_data@l /* 0x806D23F8@l */
/* 8060C910  7C 05 04 2E */	lfsx f0, r5, r0
/* 8060C914  38 83 C0 44 */	addi r4, r3, lit_427@l /* 0x8064C044@l */
/* 8060C918  7C 65 02 14 */	add r3, r5, r0
/* 8060C91C  C0 24 00 00 */	lfs f1, 0(r4)
/* 8060C920  EC 02 00 32 */	fmuls f0, f2, f0
/* 8060C924  D0 1B 00 34 */	stfs f0, 0x34(r27)
/* 8060C928  C0 03 00 04 */	lfs f0, 4(r3)
/* 8060C92C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8060C930  D0 1B 00 38 */	stfs f0, 0x38(r27)
/* 8060C934  D0 3B 00 3C */	stfs f1, 0x3c(r27)
/* 8060C938  83 FC 00 00 */	lwz r31, 0(r28)
/* 8060C93C  7F E3 FB 78 */	mr r3, r31
/* 8060C940  4B DD 88 19 */	bl _texture_z_light_fog_prim_xlu
/* 8060C944  80 DE 60 9C */	lwz r6, 0x609c(r30)
/* 8060C948  7F 83 E3 78 */	mr r3, r28
/* 8060C94C  38 9B 00 10 */	addi r4, r27, 0x10
/* 8060C950  38 BB 00 34 */	addi r5, r27, 0x34
/* 8060C954  81 86 00 1C */	lwz r12, 0x1c(r6)
/* 8060C958  38 DB 00 40 */	addi r6, r27, 0x40
/* 8060C95C  7D 89 03 A6 */	mtctr r12
/* 8060C960  4E 80 04 21 */	bctrl 
/* 8060C964  83 7F 02 E0 */	lwz r27, 0x2e0(r31)
/* 8060C968  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8060C96C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8060C970  38 7B 00 08 */	addi r3, r27, 8
/* 8060C974  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060C978  90 1B 00 00 */	stw r0, 0(r27)
/* 8060C97C  80 7C 00 00 */	lwz r3, 0(r28)
/* 8060C980  4B E0 0A 55 */	bl _Matrix_to_Mtx_new
/* 8060C984  90 7B 00 04 */	stw r3, 4(r27)
/* 8060C988  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 8060C98C  67 A5 FF FF */	oris r5, r29, 0xffff
/* 8060C990  3C 60 80 CB */	lis r3, ef_gimonhu01_00_modelT@ha /* 0x80CB2AA0@ha */
/* 8060C994  81 1F 02 E0 */	lwz r8, 0x2e0(r31)
/* 8060C998  38 C4 00 80 */	addi r6, r4, 0x0080 /* 0xFA000080@l */
/* 8060C99C  60 A5 FF 00 */	ori r5, r5, 0xff00
/* 8060C9A0  3C 80 DE 00 */	lis r4, 0xde00
/* 8060C9A4  38 E8 00 08 */	addi r7, r8, 8
/* 8060C9A8  38 03 2A A0 */	addi r0, r3, ef_gimonhu01_00_modelT@l /* 0x80CB2AA0@l */
/* 8060C9AC  90 FF 02 E0 */	stw r7, 0x2e0(r31)
/* 8060C9B0  90 C8 00 00 */	stw r6, 0(r8)
/* 8060C9B4  90 A8 00 04 */	stw r5, 4(r8)
/* 8060C9B8  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 8060C9BC  38 65 00 08 */	addi r3, r5, 8
/* 8060C9C0  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060C9C4  90 85 00 00 */	stw r4, 0(r5)
/* 8060C9C8  90 05 00 04 */	stw r0, 4(r5)
/* 8060C9CC  39 61 00 30 */	addi r11, r1, 0x30
/* 8060C9D0  4B A8 E5 49 */	bl func_8009AF18
/* 8060C9D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8060C9D8  7C 08 03 A6 */	mtlr r0
/* 8060C9DC  38 21 00 30 */	addi r1, r1, 0x30
/* 8060C9E0  4E 80 00 20 */	blr 
