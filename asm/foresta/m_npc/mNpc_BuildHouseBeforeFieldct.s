lbl_803CF660:
/* 803CF660  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803CF664  7C 08 02 A6 */	mflr r0
/* 803CF668  90 01 00 44 */	stw r0, 0x44(r1)
/* 803CF66C  39 61 00 40 */	addi r11, r1, 0x40
/* 803CF670  4B CC B8 41 */	bl func_8009AEB0
/* 803CF674  3C 63 FF FF */	addis r3, r3, 0xffff
/* 803CF678  2C 04 00 00 */	cmpwi r4, 0
/* 803CF67C  38 03 70 00 */	addi r0, r3, 0x7000
/* 803CF680  7C DC 33 78 */	mr r28, r6
/* 803CF684  7C FD 3B 78 */	mr r29, r7
/* 803CF688  54 08 04 3E */	clrlwi r8, r0, 0x10
/* 803CF68C  41 80 00 EC */	blt lbl_803CF778
/* 803CF690  2C 04 00 05 */	cmpwi r4, 5
/* 803CF694  40 80 00 E4 */	bge lbl_803CF778
/* 803CF698  2C 05 00 00 */	cmpwi r5, 0
/* 803CF69C  41 80 00 DC */	blt lbl_803CF778
/* 803CF6A0  2C 05 00 06 */	cmpwi r5, 6
/* 803CF6A4  40 80 00 D4 */	bge lbl_803CF778
/* 803CF6A8  2C 1C 00 00 */	cmpwi r28, 0
/* 803CF6AC  40 81 00 CC */	ble lbl_803CF778
/* 803CF6B0  2C 1C 00 0F */	cmpwi r28, 0xf
/* 803CF6B4  40 80 00 C4 */	bge lbl_803CF778
/* 803CF6B8  2C 1D 00 00 */	cmpwi r29, 0
/* 803CF6BC  40 81 00 BC */	ble lbl_803CF778
/* 803CF6C0  2C 1D 00 0F */	cmpwi r29, 0xf
/* 803CF6C4  40 80 00 B4 */	bge lbl_803CF778
/* 803CF6C8  1C C5 0A 00 */	mulli r6, r5, 0xa00
/* 803CF6CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CF6D0  3C E0 80 66 */	lis r7, set_fg@ha /* 0x8065B2FC@ha */
/* 803CF6D4  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803CF6D8  B1 07 B2 FC */	sth r8, set_fg@l(r7)  /* 0x8065B2FC@l */
/* 803CF6DC  7C C0 32 14 */	add r6, r0, r6
/* 803CF6E0  54 80 48 2C */	slwi r0, r4, 9
/* 803CF6E4  38 64 00 01 */	addi r3, r4, 1
/* 803CF6E8  7C 86 02 14 */	add r4, r6, r0
/* 803CF6EC  3F E4 00 01 */	addis r31, r4, 1
/* 803CF6F0  38 85 00 01 */	addi r4, r5, 1
/* 803CF6F4  3B FF 37 A8 */	addi r31, r31, 0x37a8
/* 803CF6F8  4B FD 95 39 */	bl mFI_GetDepositP
/* 803CF6FC  3C A0 80 66 */	lis r5, ut_d@ha /* 0x8065B2B4@ha */
/* 803CF700  3C 80 80 66 */	lis r4, set_fg@ha /* 0x8065B2FC@ha */
/* 803CF704  3B C0 00 00 */	li r30, 0
/* 803CF708  7C 76 1B 78 */	mr r22, r3
/* 803CF70C  3B 05 B2 B4 */	addi r24, r5, ut_d@l /* 0x8065B2B4@l */
/* 803CF710  3B 24 B2 FC */	addi r25, r4, set_fg@l /* 0x8065B2FC@l */
/* 803CF714  3B 60 00 00 */	li r27, 0
/* 803CF718  3B 40 00 00 */	li r26, 0
lbl_803CF71C:
/* 803CF71C  7C 98 D2 14 */	add r4, r24, r26
/* 803CF720  80 64 00 00 */	lwz r3, 0(r4)
/* 803CF724  80 04 00 04 */	lwz r0, 4(r4)
/* 803CF728  7E BC 1A 14 */	add r21, r28, r3
/* 803CF72C  7E 9D 02 14 */	add r20, r29, r0
/* 803CF730  56 83 28 34 */	slwi r3, r20, 5
/* 803CF734  56 A0 08 3C */	slwi r0, r21, 1
/* 803CF738  7E E3 02 14 */	add r23, r3, r0
/* 803CF73C  7C 7F BA 2E */	lhzx r3, r31, r23
/* 803CF740  48 00 F1 11 */	bl mPB_keep_item
/* 803CF744  28 16 00 00 */	cmplwi r22, 0
/* 803CF748  41 82 00 14 */	beq lbl_803CF75C
/* 803CF74C  7E C3 B3 78 */	mr r3, r22
/* 803CF750  7E A4 AB 78 */	mr r4, r21
/* 803CF754  7E 85 A3 78 */	mr r5, r20
/* 803CF758  4B FD 96 B5 */	bl mFI_BlockDepositOFF
lbl_803CF75C:
/* 803CF75C  7C 19 DA 2E */	lhzx r0, r25, r27
/* 803CF760  3B DE 00 01 */	addi r30, r30, 1
/* 803CF764  2C 1E 00 09 */	cmpwi r30, 9
/* 803CF768  3B 5A 00 08 */	addi r26, r26, 8
/* 803CF76C  7C 1F BB 2E */	sthx r0, r31, r23
/* 803CF770  3B 7B 00 02 */	addi r27, r27, 2
/* 803CF774  41 80 FF A8 */	blt lbl_803CF71C
lbl_803CF778:
/* 803CF778  39 61 00 40 */	addi r11, r1, 0x40
/* 803CF77C  4B CC B7 81 */	bl func_8009AEFC
/* 803CF780  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803CF784  7C 08 03 A6 */	mtlr r0
/* 803CF788  38 21 00 40 */	addi r1, r1, 0x40
/* 803CF78C  4E 80 00 20 */	blr 
