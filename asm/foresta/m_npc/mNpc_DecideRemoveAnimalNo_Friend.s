lbl_803D06D4:
/* 803D06D4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803D06D8  7C 08 02 A6 */	mflr r0
/* 803D06DC  90 01 00 54 */	stw r0, 0x54(r1)
/* 803D06E0  39 61 00 50 */	addi r11, r1, 0x50
/* 803D06E4  4B CC A7 CD */	bl func_8009AEB0
/* 803D06E8  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803D06EC  7C 79 1B 78 */	mr r25, r3
/* 803D06F0  38 66 85 38 */	addi r3, r6, common_data@l /* 0x81138538@l */
/* 803D06F4  7C 9A 23 78 */	mr r26, r4
/* 803D06F8  3B 03 00 20 */	addi r24, r3, 0x20
/* 803D06FC  7C BB 2B 78 */	mr r27, r5
/* 803D0700  7F 16 C3 78 */	mr r22, r24
/* 803D0704  3B E0 FF FF */	li r31, -1
/* 803D0708  3B C0 00 00 */	li r30, 0
/* 803D070C  3B A0 00 00 */	li r29, 0
/* 803D0710  3B 80 00 00 */	li r28, 0
/* 803D0714  3A A0 00 00 */	li r21, 0
lbl_803D0718:
/* 803D0718  7E C3 B3 78 */	mr r3, r22
/* 803D071C  48 00 F9 29 */	bl mPr_NullCheckPersonalID
/* 803D0720  2C 03 00 00 */	cmpwi r3, 0
/* 803D0724  40 82 00 08 */	bne lbl_803D072C
/* 803D0728  3B DE 00 01 */	addi r30, r30, 1
lbl_803D072C:
/* 803D072C  3A B5 00 01 */	addi r21, r21, 1
/* 803D0730  3A D6 24 40 */	addi r22, r22, 0x2440
/* 803D0734  2C 15 00 04 */	cmpwi r21, 4
/* 803D0738  41 80 FF E0 */	blt lbl_803D0718
/* 803D073C  2C 1E 00 00 */	cmpwi r30, 0
/* 803D0740  40 81 00 BC */	ble lbl_803D07FC
/* 803D0744  3A C0 00 00 */	li r22, 0
lbl_803D0748:
/* 803D0748  7F 23 CB 78 */	mr r3, r25
/* 803D074C  4B FF BE 71 */	bl mNpc_CheckFreeAnimalInfo
/* 803D0750  2C 03 00 00 */	cmpwi r3, 0
/* 803D0754  40 82 00 98 */	bne lbl_803D07EC
/* 803D0758  7C 16 D0 00 */	cmpw r22, r26
/* 803D075C  41 82 00 90 */	beq lbl_803D07EC
/* 803D0760  7F 17 C3 78 */	mr r23, r24
/* 803D0764  3A A0 00 00 */	li r21, 0
/* 803D0768  3A 80 00 00 */	li r20, 0
lbl_803D076C:
/* 803D076C  7E E3 BB 78 */	mr r3, r23
/* 803D0770  48 00 F8 D5 */	bl mPr_NullCheckPersonalID
/* 803D0774  2C 03 00 00 */	cmpwi r3, 0
/* 803D0778  40 82 00 20 */	bne lbl_803D0798
/* 803D077C  7E E3 BB 78 */	mr r3, r23
/* 803D0780  38 99 00 10 */	addi r4, r25, 0x10
/* 803D0784  38 A0 00 07 */	li r5, 7
/* 803D0788  4B FF B5 F1 */	bl mNpc_GetAnimalMemoryIdx
/* 803D078C  2C 03 FF FF */	cmpwi r3, -1
/* 803D0790  41 82 00 18 */	beq lbl_803D07A8
/* 803D0794  3A B5 00 01 */	addi r21, r21, 1
lbl_803D0798:
/* 803D0798  3A 94 00 01 */	addi r20, r20, 1
/* 803D079C  3A F7 24 40 */	addi r23, r23, 0x2440
/* 803D07A0  2C 14 00 04 */	cmpwi r20, 4
/* 803D07A4  41 80 FF C8 */	blt lbl_803D076C
lbl_803D07A8:
/* 803D07A8  2C 1B 00 01 */	cmpwi r27, 1
/* 803D07AC  40 82 00 24 */	bne lbl_803D07D0
/* 803D07B0  7C 15 F0 00 */	cmpw r21, r30
/* 803D07B4  40 82 00 38 */	bne lbl_803D07EC
/* 803D07B8  38 00 00 01 */	li r0, 1
/* 803D07BC  3B BD 00 01 */	addi r29, r29, 1
/* 803D07C0  7C 00 B0 30 */	slw r0, r0, r22
/* 803D07C4  7F 80 03 78 */	or r0, r28, r0
/* 803D07C8  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 803D07CC  48 00 00 20 */	b lbl_803D07EC
lbl_803D07D0:
/* 803D07D0  2C 15 00 00 */	cmpwi r21, 0
/* 803D07D4  40 81 00 18 */	ble lbl_803D07EC
/* 803D07D8  38 00 00 01 */	li r0, 1
/* 803D07DC  3B BD 00 01 */	addi r29, r29, 1
/* 803D07E0  7C 00 B0 30 */	slw r0, r0, r22
/* 803D07E4  7F 80 03 78 */	or r0, r28, r0
/* 803D07E8  54 1C 04 3E */	clrlwi r28, r0, 0x10
lbl_803D07EC:
/* 803D07EC  3A D6 00 01 */	addi r22, r22, 1
/* 803D07F0  3B 39 09 88 */	addi r25, r25, 0x988
/* 803D07F4  2C 16 00 0F */	cmpwi r22, 0xf
/* 803D07F8  41 80 FF 50 */	blt lbl_803D0748
lbl_803D07FC:
/* 803D07FC  2C 1D 00 00 */	cmpwi r29, 0
/* 803D0800  40 81 00 74 */	ble lbl_803D0874
/* 803D0804  4B C8 C4 F1 */	bl fqrand
/* 803D0808  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 803D080C  3C 60 43 30 */	lis r3, 0x4330
/* 803D0810  90 01 00 0C */	stw r0, 0xc(r1)
/* 803D0814  3C 80 80 64 */	lis r4, data_806428CC@ha /* 0x806428CC@ha */
/* 803D0818  C8 44 28 CC */	lfd f2, data_806428CC@l(r4)  /* 0x806428CC@l */
/* 803D081C  38 00 00 0F */	li r0, 0xf
/* 803D0820  90 61 00 08 */	stw r3, 8(r1)
/* 803D0824  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 803D0828  38 80 00 00 */	li r4, 0
/* 803D082C  C8 01 00 08 */	lfd f0, 8(r1)
/* 803D0830  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D0834  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D0838  FC 00 00 1E */	fctiwz f0, f0
/* 803D083C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803D0840  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 803D0844  7C 09 03 A6 */	mtctr r0
lbl_803D0848:
/* 803D0848  7C 60 26 30 */	sraw r0, r3, r4
/* 803D084C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803D0850  2C 00 00 01 */	cmpwi r0, 1
/* 803D0854  40 82 00 18 */	bne lbl_803D086C
/* 803D0858  2C 05 00 00 */	cmpwi r5, 0
/* 803D085C  41 81 00 0C */	bgt lbl_803D0868
/* 803D0860  7C 9F 23 78 */	mr r31, r4
/* 803D0864  48 00 00 10 */	b lbl_803D0874
lbl_803D0868:
/* 803D0868  38 A5 FF FF */	addi r5, r5, -1
lbl_803D086C:
/* 803D086C  38 84 00 01 */	addi r4, r4, 1
/* 803D0870  42 00 FF D8 */	bdnz lbl_803D0848
lbl_803D0874:
/* 803D0874  7F E3 FB 78 */	mr r3, r31
/* 803D0878  39 61 00 50 */	addi r11, r1, 0x50
/* 803D087C  4B CC A6 81 */	bl func_8009AEFC
/* 803D0880  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803D0884  7C 08 03 A6 */	mtlr r0
/* 803D0888  38 21 00 50 */	addi r1, r1, 0x50
/* 803D088C  4E 80 00 20 */	blr 
