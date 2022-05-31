lbl_8054EF74:
/* 8054EF74  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8054EF78  7C 08 02 A6 */	mflr r0
/* 8054EF7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8054EF80  39 61 00 30 */	addi r11, r1, 0x30
/* 8054EF84  4B B4 BF 3D */	bl func_8009AEC0
/* 8054EF88  7C 7C 1B 78 */	mr r28, r3
/* 8054EF8C  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 8054EF90  80 FC 00 00 */	lwz r7, 0(r28)
/* 8054EF94  38 03 86 9F */	addi r0, r3, 0x869F /* 0x0001869F@l */
/* 8054EF98  7C DD 33 78 */	mr r29, r6
/* 8054EF9C  3B C0 00 01 */	li r30, 1
/* 8054EFA0  7C 07 00 40 */	cmplw r7, r0
/* 8054EFA4  41 80 00 10 */	blt lbl_8054EFB4
/* 8054EFA8  38 07 8A D0 */	addi r0, r7, -30000
/* 8054EFAC  3B C0 00 00 */	li r30, 0
/* 8054EFB0  90 1C 00 00 */	stw r0, 0(r28)
lbl_8054EFB4:
/* 8054EFB4  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 8054EFB8  28 03 20 00 */	cmplwi r3, 0x2000
/* 8054EFBC  41 80 01 40 */	blt lbl_8054F0FC
/* 8054EFC0  28 03 20 FF */	cmplwi r3, 0x20ff
/* 8054EFC4  41 81 01 38 */	bgt lbl_8054F0FC
/* 8054EFC8  38 63 E0 00 */	addi r3, r3, -8192
/* 8054EFCC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054EFD0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8054EFD4  3B 40 00 01 */	li r26, 1
/* 8054EFD8  3F E4 00 02 */	addis r31, r4, 2
/* 8054EFDC  54 60 D0 0A */	slwi r0, r3, 0x1a
/* 8054EFE0  54 63 0F FE */	srwi r3, r3, 0x1f
/* 8054EFE4  83 7F 61 3C */	lwz r27, 0x613c(r31)
/* 8054EFE8  7C 03 00 50 */	subf r0, r3, r0
/* 8054EFEC  54 00 30 3E */	rotlwi r0, r0, 6
/* 8054EFF0  7F 20 1A 14 */	add r25, r0, r3
lbl_8054EFF4:
/* 8054EFF4  38 1A FF FF */	addi r0, r26, -1
/* 8054EFF8  7F 63 DB 78 */	mr r3, r27
/* 8054EFFC  54 00 30 32 */	slwi r0, r0, 6
/* 8054F000  7C 99 02 14 */	add r4, r25, r0
/* 8054F004  38 04 20 00 */	addi r0, r4, 0x2000
/* 8054F008  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8054F00C  4B E9 17 1D */	bl mPr_GetPossessionItemIdx
/* 8054F010  7C 78 1B 78 */	mr r24, r3
/* 8054F014  2C 18 FF FF */	cmpwi r24, -1
/* 8054F018  41 82 00 D4 */	beq lbl_8054F0EC
/* 8054F01C  2C 1A 00 01 */	cmpwi r26, 1
/* 8054F020  40 82 00 28 */	bne lbl_8054F048
/* 8054F024  3C 60 80 6A */	lis r3, aNSC_exchange_itemNo@ha /* 0x806A5C80@ha */
/* 8054F028  57 C0 08 3C */	slwi r0, r30, 1
/* 8054F02C  38 83 5C 80 */	addi r4, r3, aNSC_exchange_itemNo@l /* 0x806A5C80@l */
/* 8054F030  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 8054F034  7C A4 02 2E */	lhzx r5, r4, r0
/* 8054F038  7F 04 C3 78 */	mr r4, r24
/* 8054F03C  38 C0 00 00 */	li r6, 0
/* 8054F040  4B E9 1D E9 */	bl mPr_SetPossessionItem
/* 8054F044  48 00 00 E4 */	b lbl_8054F128
lbl_8054F048:
/* 8054F048  2C 1E 00 00 */	cmpwi r30, 0
/* 8054F04C  40 82 00 78 */	bne lbl_8054F0C4
/* 8054F050  7F 63 DB 78 */	mr r3, r27
/* 8054F054  38 80 00 00 */	li r4, 0
/* 8054F058  4B E9 16 D1 */	bl mPr_GetPossessionItemIdx
/* 8054F05C  7C 7B 1B 78 */	mr r27, r3
/* 8054F060  2C 1B FF FF */	cmpwi r27, -1
/* 8054F064  41 82 00 40 */	beq lbl_8054F0A4
/* 8054F068  38 1A FF FE */	addi r0, r26, -2
/* 8054F06C  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 8054F070  54 00 30 32 */	slwi r0, r0, 6
/* 8054F074  7F 04 C3 78 */	mr r4, r24
/* 8054F078  7C B9 02 14 */	add r5, r25, r0
/* 8054F07C  38 C0 00 00 */	li r6, 0
/* 8054F080  38 05 20 00 */	addi r0, r5, 0x2000
/* 8054F084  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8054F088  4B E9 1D A1 */	bl mPr_SetPossessionItem
/* 8054F08C  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 8054F090  7F 64 DB 78 */	mr r4, r27
/* 8054F094  38 A0 21 02 */	li r5, 0x2102
/* 8054F098  38 C0 00 00 */	li r6, 0
/* 8054F09C  4B E9 1D 8D */	bl mPr_SetPossessionItem
/* 8054F0A0  48 00 00 88 */	b lbl_8054F128
lbl_8054F0A4:
/* 8054F0A4  80 7C 00 00 */	lwz r3, 0(r28)
/* 8054F0A8  3B C0 00 03 */	li r30, 3
/* 8054F0AC  38 03 75 30 */	addi r0, r3, 0x7530
/* 8054F0B0  90 1C 00 00 */	stw r0, 0(r28)
/* 8054F0B4  80 1C 00 00 */	lwz r0, 0(r28)
/* 8054F0B8  7C 1D 00 50 */	subf r0, r29, r0
/* 8054F0BC  90 1C 00 00 */	stw r0, 0(r28)
/* 8054F0C0  48 00 00 68 */	b lbl_8054F128
lbl_8054F0C4:
/* 8054F0C4  38 1A FF FE */	addi r0, r26, -2
/* 8054F0C8  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 8054F0CC  54 00 30 32 */	slwi r0, r0, 6
/* 8054F0D0  7F 04 C3 78 */	mr r4, r24
/* 8054F0D4  7C B9 02 14 */	add r5, r25, r0
/* 8054F0D8  38 C0 00 00 */	li r6, 0
/* 8054F0DC  38 05 20 00 */	addi r0, r5, 0x2000
/* 8054F0E0  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8054F0E4  4B E9 1D 45 */	bl mPr_SetPossessionItem
/* 8054F0E8  48 00 00 40 */	b lbl_8054F128
lbl_8054F0EC:
/* 8054F0EC  3B 5A 00 01 */	addi r26, r26, 1
/* 8054F0F0  2C 1A 00 04 */	cmpwi r26, 4
/* 8054F0F4  40 81 FF 00 */	ble lbl_8054EFF4
/* 8054F0F8  48 00 00 30 */	b lbl_8054F128
lbl_8054F0FC:
/* 8054F0FC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054F100  3C 60 80 6A */	lis r3, aNSC_exchange_itemNo@ha /* 0x806A5C80@ha */
/* 8054F104  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8054F108  57 C0 08 3C */	slwi r0, r30, 1
/* 8054F10C  3D 04 00 02 */	addis r8, r4, 2
/* 8054F110  38 E3 5C 80 */	addi r7, r3, aNSC_exchange_itemNo@l /* 0x806A5C80@l */
/* 8054F114  88 85 00 02 */	lbz r4, 2(r5)
/* 8054F118  38 C0 00 00 */	li r6, 0
/* 8054F11C  80 68 61 3C */	lwz r3, 0x613c(r8)
/* 8054F120  7C A7 02 2E */	lhzx r5, r7, r0
/* 8054F124  4B E9 1D 05 */	bl mPr_SetPossessionItem
lbl_8054F128:
/* 8054F128  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054F12C  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 8054F130  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8054F134  3F E4 00 02 */	addis r31, r4, 2
/* 8054F138  3B A3 86 9F */	addi r29, r3, 0x869F /* 0x0001869F@l */
/* 8054F13C  48 00 00 20 */	b lbl_8054F15C
lbl_8054F140:
/* 8054F140  80 7C 00 00 */	lwz r3, 0(r28)
/* 8054F144  38 80 21 02 */	li r4, 0x2102
/* 8054F148  38 A0 00 00 */	li r5, 0
/* 8054F14C  38 03 8A D0 */	addi r0, r3, -30000
/* 8054F150  90 1C 00 00 */	stw r0, 0(r28)
/* 8054F154  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 8054F158  4B E9 1D B1 */	bl mPr_SetFreePossessionItem
lbl_8054F15C:
/* 8054F15C  80 1C 00 00 */	lwz r0, 0(r28)
/* 8054F160  7C 00 E8 40 */	cmplw r0, r29
/* 8054F164  40 80 FF DC */	bge lbl_8054F140
/* 8054F168  7F C3 F3 78 */	mr r3, r30
/* 8054F16C  39 61 00 30 */	addi r11, r1, 0x30
/* 8054F170  4B B4 BD 9D */	bl func_8009AF0C
/* 8054F174  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8054F178  7C 08 03 A6 */	mtlr r0
/* 8054F17C  38 21 00 30 */	addi r1, r1, 0x30
/* 8054F180  4E 80 00 20 */	blr 
