lbl_803BD01C:
/* 803BD01C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BD020  7C 08 02 A6 */	mflr r0
/* 803BD024  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BD028  39 61 00 20 */	addi r11, r1, 0x20
/* 803BD02C  4B CD DE A9 */	bl func_8009AED4
/* 803BD030  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803BD034  3C 60 81 17 */	lis r3, free_str@ha /* 0x81169F8C@ha */
/* 803BD038  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803BD03C  38 63 9F 8C */	addi r3, r3, free_str@l /* 0x81169F8C@l */
/* 803BD040  3B E4 00 20 */	addi r31, r4, 0x20
/* 803BD044  4B FF 69 3D */	bl mLd_GetLandNameStringAddMura
/* 803BD048  3C 80 81 17 */	lis r4, free_str@ha /* 0x81169F8C@ha */
/* 803BD04C  7C 65 1B 78 */	mr r5, r3
/* 803BD050  38 60 00 00 */	li r3, 0
/* 803BD054  38 84 9F 8C */	addi r4, r4, free_str@l /* 0x81169F8C@l */
/* 803BD058  4B FF 49 01 */	bl mHandbill_Set_free_str
/* 803BD05C  3B A0 00 00 */	li r29, 0
lbl_803BD060:
/* 803BD060  7F E3 FB 78 */	mr r3, r31
/* 803BD064  48 02 2F E1 */	bl mPr_NullCheckPersonalID
/* 803BD068  2C 03 00 00 */	cmpwi r3, 0
/* 803BD06C  40 82 00 94 */	bne lbl_803BD100
/* 803BD070  7F E4 FB 78 */	mr r4, r31
/* 803BD074  38 60 00 01 */	li r3, 1
/* 803BD078  38 A0 00 08 */	li r5, 8
/* 803BD07C  4B FF 48 DD */	bl mHandbill_Set_free_str
/* 803BD080  3C 60 80 65 */	lis r3, l_mml_postoffice_info@ha /* 0x80656578@ha */
/* 803BD084  38 00 00 04 */	li r0, 4
/* 803BD088  38 63 65 78 */	addi r3, r3, l_mml_postoffice_info@l /* 0x80656578@l */
/* 803BD08C  7C 7E 1B 78 */	mr r30, r3
/* 803BD090  7C 09 03 A6 */	mtctr r0
lbl_803BD094:
/* 803BD094  80 7F 12 2C */	lwz r3, 0x122c(r31)
/* 803BD098  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 803BD09C  7C 03 00 40 */	cmplw r3, r0
/* 803BD0A0  41 80 00 58 */	blt lbl_803BD0F8
/* 803BD0A4  80 7F 23 48 */	lwz r3, 0x2348(r31)
/* 803BD0A8  80 1E 00 08 */	lwz r0, 8(r30)
/* 803BD0AC  7C 60 00 39 */	and. r0, r3, r0
/* 803BD0B0  40 82 00 48 */	bne lbl_803BD0F8
/* 803BD0B4  3C 60 80 65 */	lis r3, debug_name@ha /* 0x806565B8@ha */
/* 803BD0B8  A0 BE 00 04 */	lhz r5, 4(r30)
/* 803BD0BC  39 03 65 B8 */	addi r8, r3, debug_name@l /* 0x806565B8@l */
/* 803BD0C0  A0 DE 00 06 */	lhz r6, 6(r30)
/* 803BD0C4  80 FE 00 00 */	lwz r7, 0(r30)
/* 803BD0C8  7F E3 FB 78 */	mr r3, r31
/* 803BD0CC  7F A4 EB 78 */	mr r4, r29
/* 803BD0D0  39 20 00 00 */	li r9, 0
/* 803BD0D4  39 40 00 0A */	li r10, 0xa
/* 803BD0D8  4B FF FE 7D */	bl mMl_send_mail_com
/* 803BD0DC  2C 03 00 01 */	cmpwi r3, 1
/* 803BD0E0  40 82 00 20 */	bne lbl_803BD100
/* 803BD0E4  80 7F 23 48 */	lwz r3, 0x2348(r31)
/* 803BD0E8  80 1E 00 08 */	lwz r0, 8(r30)
/* 803BD0EC  7C 60 03 78 */	or r0, r3, r0
/* 803BD0F0  90 1F 23 48 */	stw r0, 0x2348(r31)
/* 803BD0F4  48 00 00 0C */	b lbl_803BD100
lbl_803BD0F8:
/* 803BD0F8  3B DE 00 10 */	addi r30, r30, 0x10
/* 803BD0FC  42 00 FF 98 */	bdnz lbl_803BD094
lbl_803BD100:
/* 803BD100  3B BD 00 01 */	addi r29, r29, 1
/* 803BD104  3B FF 24 40 */	addi r31, r31, 0x2440
/* 803BD108  2C 1D 00 04 */	cmpwi r29, 4
/* 803BD10C  41 80 FF 54 */	blt lbl_803BD060
/* 803BD110  39 61 00 20 */	addi r11, r1, 0x20
/* 803BD114  4B CD DE 0D */	bl func_8009AF20
/* 803BD118  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BD11C  7C 08 03 A6 */	mtlr r0
/* 803BD120  38 21 00 20 */	addi r1, r1, 0x20
/* 803BD124  4E 80 00 20 */	blr 
