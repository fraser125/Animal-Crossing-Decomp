lbl_804834E8:
/* 804834E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804834EC  7C 08 02 A6 */	mflr r0
/* 804834F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804834F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804834F8  4B C1 79 DD */	bl func_8009AED4
/* 804834FC  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80483500  7C 9E 23 78 */	mr r30, r4
/* 80483504  38 86 85 38 */	addi r4, r6, common_data@l /* 0x81138538@l */
/* 80483508  7C BF 2B 78 */	mr r31, r5
/* 8048350C  3C 84 00 02 */	addis r4, r4, 2
/* 80483510  80 84 60 30 */	lwz r4, 0x6030(r4)
/* 80483514  28 04 00 00 */	cmplwi r4, 0
/* 80483518  41 82 00 0C */	beq lbl_80483524
/* 8048351C  80 04 00 00 */	lwz r0, 0(r4)
/* 80483520  48 00 00 08 */	b lbl_80483528
lbl_80483524:
/* 80483524  38 00 00 00 */	li r0, 0
lbl_80483528:
/* 80483528  28 00 00 00 */	cmplwi r0, 0
/* 8048352C  41 82 00 80 */	beq lbl_804835AC
/* 80483530  28 04 00 00 */	cmplwi r4, 0
/* 80483534  41 82 00 0C */	beq lbl_80483540
/* 80483538  80 E4 00 00 */	lwz r7, 0(r4)
/* 8048353C  48 00 00 08 */	b lbl_80483544
lbl_80483540:
/* 80483540  38 E0 00 00 */	li r7, 0
lbl_80483544:
/* 80483544  54 65 17 3A */	rlwinm r5, r3, 2, 0x1c, 0x1d
/* 80483548  54 7D 07 BE */	clrlwi r29, r3, 0x1e
/* 8048354C  7C C7 2A 14 */	add r6, r7, r5
/* 80483550  7F C4 F3 78 */	mr r4, r30
/* 80483554  80 66 01 C8 */	lwz r3, 0x1c8(r6)
/* 80483558  38 03 00 01 */	addi r0, r3, 1
/* 8048355C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80483560  90 06 01 C8 */	stw r0, 0x1c8(r6)
/* 80483564  80 06 01 C8 */	lwz r0, 0x1c8(r6)
/* 80483568  54 00 28 34 */	slwi r0, r0, 5
/* 8048356C  7C 07 02 14 */	add r0, r7, r0
/* 80483570  7C 60 2A 14 */	add r3, r0, r5
/* 80483574  80 63 01 88 */	lwz r3, 0x188(r3)
/* 80483578  4B F4 66 59 */	bl mNW_CopyOriginalTextureClass
/* 8048357C  1C BD 02 20 */	mulli r5, r29, 0x220
/* 80483580  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80483584  7F C4 F3 78 */	mr r4, r30
/* 80483588  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8048358C  7C 60 2A 14 */	add r3, r0, r5
/* 80483590  3C 63 00 02 */	addis r3, r3, 2
/* 80483594  38 63 14 00 */	addi r3, r3, 0x1400
/* 80483598  4B F4 66 39 */	bl mNW_CopyOriginalTextureClass
/* 8048359C  2C 1F 00 01 */	cmpwi r31, 1
/* 804835A0  40 82 00 0C */	bne lbl_804835AC
/* 804835A4  38 60 04 61 */	li r3, 0x461
/* 804835A8  48 1A A7 5D */	bl sAdo_SysTrgStart
lbl_804835AC:
/* 804835AC  39 61 00 20 */	addi r11, r1, 0x20
/* 804835B0  4B C1 79 71 */	bl func_8009AF20
/* 804835B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804835B8  7C 08 03 A6 */	mtlr r0
/* 804835BC  38 21 00 20 */	addi r1, r1, 0x20
/* 804835C0  4E 80 00 20 */	blr 
