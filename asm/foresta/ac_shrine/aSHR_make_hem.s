lbl_805BAED0:
/* 805BAED0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805BAED4  7C 08 02 A6 */	mflr r0
/* 805BAED8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805BAEDC  39 61 00 40 */	addi r11, r1, 0x40
/* 805BAEE0  4B AD FF F1 */	bl func_8009AED0
/* 805BAEE4  7C 7D 1B 78 */	mr r29, r3
/* 805BAEE8  7C 9E 23 78 */	mr r30, r4
/* 805BAEEC  80 03 01 4C */	lwz r0, 0x14c(r3)
/* 805BAEF0  28 00 00 00 */	cmplwi r0, 0
/* 805BAEF4  40 82 01 6C */	bne lbl_805BB060
/* 805BAEF8  4B E0 47 B1 */	bl func_803BF6A8
/* 805BAEFC  4B E0 5E 01 */	bl mMsg_Check_MainDisappear
/* 805BAF00  2C 03 00 00 */	cmpwi r3, 0
/* 805BAF04  41 82 01 5C */	beq lbl_805BB060
/* 805BAF08  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BAF0C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BAF10  3C 63 00 02 */	addis r3, r3, 2
/* 805BAF14  80 63 60 4C */	lwz r3, 0x604c(r3)
/* 805BAF18  28 03 00 00 */	cmplwi r3, 0
/* 805BAF1C  41 82 01 44 */	beq lbl_805BB060
/* 805BAF20  81 83 00 00 */	lwz r12, 0(r3)
/* 805BAF24  28 0C 00 00 */	cmplwi r12, 0
/* 805BAF28  41 82 01 38 */	beq lbl_805BB060
/* 805BAF2C  38 00 00 08 */	li r0, 8
/* 805BAF30  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D08E@ha */
/* 805BAF34  90 01 00 08 */	stw r0, 8(r1)
/* 805BAF38  7F C3 F3 78 */	mr r3, r30
/* 805BAF3C  38 84 D0 8E */	addi r4, r4, 0xD08E /* 0x0000D08E@l */
/* 805BAF40  38 A0 FF FF */	li r5, -1
/* 805BAF44  89 1D 00 08 */	lbz r8, 8(r29)
/* 805BAF48  38 C0 FF FF */	li r6, -1
/* 805BAF4C  89 3D 00 09 */	lbz r9, 9(r29)
/* 805BAF50  38 E0 FF FF */	li r7, -1
/* 805BAF54  7D 08 07 74 */	extsb r8, r8
/* 805BAF58  39 40 00 07 */	li r10, 7
/* 805BAF5C  7D 29 07 74 */	extsb r9, r9
/* 805BAF60  7D 89 03 A6 */	mtctr r12
/* 805BAF64  4E 80 04 21 */	bctrl 
/* 805BAF68  2C 03 00 01 */	cmpwi r3, 1
/* 805BAF6C  40 82 00 F4 */	bne lbl_805BB060
/* 805BAF70  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D08E@ha */
/* 805BAF74  38 7E 1D A8 */	addi r3, r30, 0x1da8
/* 805BAF78  38 84 D0 8E */	addi r4, r4, 0xD08E /* 0x0000D08E@l */
/* 805BAF7C  38 A0 00 04 */	li r5, 4
/* 805BAF80  4B DB AD C1 */	bl Actor_info_fgName_search
/* 805BAF84  7C 7F 1B 79 */	or. r31, r3, r3
/* 805BAF88  41 82 00 D8 */	beq lbl_805BB060
/* 805BAF8C  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 805BAF90  3C 60 80 65 */	lis r3, lit_698@ha /* 0x8064AB24@ha */
/* 805BAF94  38 83 AB 24 */	addi r4, r3, lit_698@l /* 0x8064AB24@l */
/* 805BAF98  81 9D 00 28 */	lwz r12, 0x28(r29)
/* 805BAF9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BAFA0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BAFA4  83 9D 00 2C */	lwz r28, 0x2c(r29)
/* 805BAFA8  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 805BAFAC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 805BAFB0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805BAFB4  C0 04 00 00 */	lfs f0, 0(r4)
/* 805BAFB8  3D 65 00 02 */	addis r11, r5, 2
/* 805BAFBC  93 BF 01 4C */	stw r29, 0x14c(r31)
/* 805BAFC0  38 C0 00 01 */	li r6, 1
/* 805BAFC4  EC 01 00 2A */	fadds f0, f1, f0
/* 805BAFC8  3C A5 00 03 */	addis r5, r5, 3
/* 805BAFCC  80 8B 60 D4 */	lwz r4, 0x60d4(r11)
/* 805BAFD0  38 00 00 00 */	li r0, 0
/* 805BAFD4  7F C7 F3 78 */	mr r7, r30
/* 805BAFD8  91 81 00 1C */	stw r12, 0x1c(r1)
/* 805BAFDC  90 C4 00 08 */	stw r6, 8(r4)
/* 805BAFE0  38 81 00 10 */	addi r4, r1, 0x10
/* 805BAFE4  39 03 FF FF */	addi r8, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805BAFE8  38 60 00 7B */	li r3, 0x7b
/* 805BAFEC  98 05 DB E2 */	stb r0, -0x241e(r5)
/* 805BAFF0  38 A0 00 02 */	li r5, 2
/* 805BAFF4  38 C0 00 00 */	li r6, 0
/* 805BAFF8  39 20 00 01 */	li r9, 1
/* 805BAFFC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805BB000  39 40 00 00 */	li r10, 0
/* 805BB004  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 805BB008  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BB00C  91 81 00 10 */	stw r12, 0x10(r1)
/* 805BB010  93 81 00 14 */	stw r28, 0x14(r1)
/* 805BB014  90 01 00 18 */	stw r0, 0x18(r1)
/* 805BB018  81 8B 00 00 */	lwz r12, 0(r11)
/* 805BB01C  93 81 00 20 */	stw r28, 0x20(r1)
/* 805BB020  7D 89 03 A6 */	mtctr r12
/* 805BB024  4E 80 04 21 */	bctrl 
/* 805BB028  38 60 00 1D */	li r3, 0x1d
/* 805BB02C  4B E3 14 45 */	bl mSC_trophy_set
/* 805BB030  4B DE 64 2D */	bl mFAs_ClearGoodField
/* 805BB034  7F A3 EB 78 */	mr r3, r29
/* 805BB038  7F C4 F3 78 */	mr r4, r30
/* 805BB03C  38 A0 00 04 */	li r5, 4
/* 805BB040  48 00 00 91 */	bl aSHR_setup_action
/* 805BB044  7F C3 F3 78 */	mr r3, r30
/* 805BB048  7F A4 EB 78 */	mr r4, r29
/* 805BB04C  4B E1 EF 0D */	bl mPlib_Check_able_force_speak_label
/* 805BB050  2C 03 00 00 */	cmpwi r3, 0
/* 805BB054  41 82 00 0C */	beq lbl_805BB060
/* 805BB058  7F E3 FB 78 */	mr r3, r31
/* 805BB05C  4B E1 EF 69 */	bl mPlib_Set_able_force_speak_label
lbl_805BB060:
/* 805BB060  39 61 00 40 */	addi r11, r1, 0x40
/* 805BB064  4B AD FE B9 */	bl func_8009AF1C
/* 805BB068  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805BB06C  7C 08 03 A6 */	mtlr r0
/* 805BB070  38 21 00 40 */	addi r1, r1, 0x40
/* 805BB074  4E 80 00 20 */	blr 
