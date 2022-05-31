lbl_8061A808:
/* 8061A808  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061A80C  7C 08 02 A6 */	mflr r0
/* 8061A810  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061A814  39 61 00 30 */	addi r11, r1, 0x30
/* 8061A818  4B A8 06 B5 */	bl func_8009AECC
/* 8061A81C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8061A820  7C 7F 1B 78 */	mr r31, r3
/* 8061A824  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8061A828  A8 1F 00 00 */	lha r0, 0(r31)
/* 8061A82C  3F C3 00 02 */	addis r30, r3, 2
/* 8061A830  3C C0 80 65 */	lis r6, lit_412@ha /* 0x8064C9E4@ha */
/* 8061A834  80 7E 60 9C */	lwz r3, 0x609c(r30)
/* 8061A838  20 00 00 10 */	subfic r0, r0, 0x10
/* 8061A83C  3C A0 80 65 */	lis r5, data_8064C9D4@ha /* 0x8064C9D4@ha */
/* 8061A840  7C 9B 23 78 */	mr r27, r4
/* 8061A844  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8061A848  7C 1D 07 34 */	extsh r29, r0
/* 8061A84C  C0 45 C9 D4 */	lfs f2, data_8064C9D4@l(r5)  /* 0x8064C9D4@l */
/* 8061A850  7F A3 EB 78 */	mr r3, r29
/* 8061A854  3B 9F 00 34 */	addi r28, r31, 0x34
/* 8061A858  C0 26 C9 E4 */	lfs f1, lit_412@l(r6)  /* 0x8064C9E4@l */
/* 8061A85C  38 80 00 08 */	li r4, 8
/* 8061A860  38 A0 00 10 */	li r5, 0x10
/* 8061A864  7D 89 03 A6 */	mtctr r12
/* 8061A868  4E 80 04 21 */	bctrl 
/* 8061A86C  FC 00 08 1E */	fctiwz f0, f1
/* 8061A870  80 7E 60 9C */	lwz r3, 0x609c(r30)
/* 8061A874  3C A0 80 65 */	lis r5, lit_385@ha /* 0x8064C9E0@ha */
/* 8061A878  3C 80 80 65 */	lis r4, lit_413@ha /* 0x8064C9E8@ha */
/* 8061A87C  38 C5 C9 E0 */	addi r6, r5, lit_385@l /* 0x8064C9E0@l */
/* 8061A880  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8061A884  D8 01 00 08 */	stfd f0, 8(r1)
/* 8061A888  38 A4 C9 E8 */	addi r5, r4, lit_413@l /* 0x8064C9E8@l */
/* 8061A88C  7F A3 EB 78 */	mr r3, r29
/* 8061A890  C0 26 00 00 */	lfs f1, 0(r6)
/* 8061A894  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8061A898  38 80 00 00 */	li r4, 0
/* 8061A89C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8061A8A0  38 A0 00 10 */	li r5, 0x10
/* 8061A8A4  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 8061A8A8  7D 89 03 A6 */	mtctr r12
/* 8061A8AC  4E 80 04 21 */	bctrl 
/* 8061A8B0  D0 3C 00 00 */	stfs f1, 0(r28)
/* 8061A8B4  7F 63 DB 78 */	mr r3, r27
/* 8061A8B8  7F 85 E3 78 */	mr r5, r28
/* 8061A8BC  38 9F 00 10 */	addi r4, r31, 0x10
/* 8061A8C0  D0 3C 00 04 */	stfs f1, 4(r28)
/* 8061A8C4  38 DF 00 40 */	addi r6, r31, 0x40
/* 8061A8C8  D0 3C 00 08 */	stfs f1, 8(r28)
/* 8061A8CC  80 FE 60 9C */	lwz r7, 0x609c(r30)
/* 8061A8D0  83 9B 00 00 */	lwz r28, 0(r27)
/* 8061A8D4  81 87 00 1C */	lwz r12, 0x1c(r7)
/* 8061A8D8  7D 89 03 A6 */	mtctr r12
/* 8061A8DC  4E 80 04 21 */	bctrl 
/* 8061A8E0  80 FC 02 E0 */	lwz r7, 0x2e0(r28)
/* 8061A8E4  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 8061A8E8  3C 60 80 CC */	lis r3, ef_pun01_01_modelT@ha /* 0x80CBBE40@ha */
/* 8061A8EC  67 A5 FF 00 */	oris r5, r29, 0xff00
/* 8061A8F0  38 07 00 08 */	addi r0, r7, 8
/* 8061A8F4  38 C4 00 FF */	addi r6, r4, 0x00FF /* 0xFA0000FF@l */
/* 8061A8F8  90 1C 02 E0 */	stw r0, 0x2e0(r28)
/* 8061A8FC  3C 80 DE 00 */	lis r4, 0xde00
/* 8061A900  38 03 BE 40 */	addi r0, r3, ef_pun01_01_modelT@l /* 0x80CBBE40@l */
/* 8061A904  90 C7 00 00 */	stw r6, 0(r7)
/* 8061A908  90 A7 00 04 */	stw r5, 4(r7)
/* 8061A90C  80 BC 02 E0 */	lwz r5, 0x2e0(r28)
/* 8061A910  38 65 00 08 */	addi r3, r5, 8
/* 8061A914  90 7C 02 E0 */	stw r3, 0x2e0(r28)
/* 8061A918  90 85 00 00 */	stw r4, 0(r5)
/* 8061A91C  90 05 00 04 */	stw r0, 4(r5)
/* 8061A920  39 61 00 30 */	addi r11, r1, 0x30
/* 8061A924  4B A8 05 F5 */	bl func_8009AF18
/* 8061A928  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061A92C  7C 08 03 A6 */	mtlr r0
/* 8061A930  38 21 00 30 */	addi r1, r1, 0x30
/* 8061A934  4E 80 00 20 */	blr 
