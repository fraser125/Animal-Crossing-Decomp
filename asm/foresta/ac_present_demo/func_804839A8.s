lbl_804839A8:
/* 804839A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804839AC  7C 08 02 A6 */	mflr r0
/* 804839B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804839B4  39 61 00 20 */	addi r11, r1, 0x20
/* 804839B8  4B C1 75 1D */	bl func_8009AED4
/* 804839BC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804839C0  3C C0 81 1D */	lis r6, aPRD_clip@ha /* 0x811CE720@ha */
/* 804839C4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804839C8  7C 9E 23 78 */	mr r30, r4
/* 804839CC  38 06 E7 20 */	addi r0, r6, aPRD_clip@l /* 0x811CE720@l */
/* 804839D0  7C 7D 1B 78 */	mr r29, r3
/* 804839D4  3F E5 00 02 */	addis r31, r5, 2
/* 804839D8  38 80 00 08 */	li r4, 8
/* 804839DC  90 1F 60 B0 */	stw r0, 0x60b0(r31)
/* 804839E0  7C 03 03 78 */	mr r3, r0
/* 804839E4  4B BD 96 85 */	bl bzero
/* 804839E8  80 BF 60 B0 */	lwz r5, 0x60b0(r31)
/* 804839EC  38 00 00 03 */	li r0, 3
/* 804839F0  7F A3 EB 78 */	mr r3, r29
/* 804839F4  7F C4 F3 78 */	mr r4, r30
/* 804839F8  93 A5 00 00 */	stw r29, 0(r5)
/* 804839FC  38 A0 00 00 */	li r5, 0
/* 80483A00  80 DF 60 B0 */	lwz r6, 0x60b0(r31)
/* 80483A04  90 06 00 04 */	stw r0, 4(r6)
/* 80483A08  48 00 05 49 */	bl aPRD_setupAction
/* 80483A0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80483A10  4B C1 75 11 */	bl func_8009AF20
/* 80483A14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80483A18  7C 08 03 A6 */	mtlr r0
/* 80483A1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80483A20  4E 80 00 20 */	blr 
