lbl_8061F098:
/* 8061F098  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061F09C  7C 08 02 A6 */	mflr r0
/* 8061F0A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061F0A4  39 61 00 30 */	addi r11, r1, 0x30
/* 8061F0A8  4B A7 BE 1D */	bl func_8009AEC4
/* 8061F0AC  7C 7C 1B 78 */	mr r28, r3
/* 8061F0B0  3C 60 80 6D */	lis r3, data_806D3630@ha /* 0x806D3630@ha */
/* 8061F0B4  A8 1C 00 00 */	lha r0, 0(r28)
/* 8061F0B8  7C 9D 23 78 */	mr r29, r4
/* 8061F0BC  3B C3 36 30 */	addi r30, r3, data_806D3630@l /* 0x806D3630@l */
/* 8061F0C0  20 00 00 1E */	subfic r0, r0, 0x1e
/* 8061F0C4  7C 03 07 34 */	extsh r3, r0
/* 8061F0C8  7C 64 0E 71 */	srawi. r4, r3, 1
/* 8061F0CC  40 80 00 0C */	bge lbl_8061F0D8
/* 8061F0D0  38 00 00 00 */	li r0, 0
/* 8061F0D4  48 00 00 14 */	b lbl_8061F0E8
lbl_8061F0D8:
/* 8061F0D8  2C 04 00 0E */	cmpwi r4, 0xe
/* 8061F0DC  38 00 00 0E */	li r0, 0xe
/* 8061F0E0  41 81 00 08 */	bgt lbl_8061F0E8
/* 8061F0E4  7C 80 23 78 */	mr r0, r4
lbl_8061F0E8:
/* 8061F0E8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8061F0EC  7C 1F 07 34 */	extsh r31, r0
/* 8061F0F0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8061F0F4  3C A0 80 65 */	lis r5, lit_383@ha /* 0x8064CC38@ha */
/* 8061F0F8  3F 64 00 02 */	addis r27, r4, 2
/* 8061F0FC  57 E0 08 3C */	slwi r0, r31, 1
/* 8061F100  80 9B 60 9C */	lwz r4, 0x609c(r27)
/* 8061F104  39 1E 00 10 */	addi r8, r30, 0x10
/* 8061F108  38 C5 CC 38 */	addi r6, r5, lit_383@l /* 0x8064CC38@l */
/* 8061F10C  7F 48 00 AE */	lbzx r26, r8, r0
/* 8061F110  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8061F114  7C E8 02 14 */	add r7, r8, r0
/* 8061F118  38 80 00 00 */	li r4, 0
/* 8061F11C  8B 27 00 01 */	lbz r25, 1(r7)
/* 8061F120  38 A0 00 1E */	li r5, 0x1e
/* 8061F124  C0 26 00 00 */	lfs f1, 0(r6)
/* 8061F128  C0 5C 00 40 */	lfs f2, 0x40(r28)
/* 8061F12C  7D 89 03 A6 */	mtctr r12
/* 8061F130  4E 80 04 21 */	bctrl 
/* 8061F134  D0 3C 00 34 */	stfs f1, 0x34(r28)
/* 8061F138  7F A3 EB 78 */	mr r3, r29
/* 8061F13C  38 9C 00 10 */	addi r4, r28, 0x10
/* 8061F140  38 BC 00 34 */	addi r5, r28, 0x34
/* 8061F144  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 8061F148  D0 1C 00 3C */	stfs f0, 0x3c(r28)
/* 8061F14C  D0 1C 00 38 */	stfs f0, 0x38(r28)
/* 8061F150  80 DB 60 9C */	lwz r6, 0x609c(r27)
/* 8061F154  83 BD 00 00 */	lwz r29, 0(r29)
/* 8061F158  81 86 00 18 */	lwz r12, 0x18(r6)
/* 8061F15C  7D 89 03 A6 */	mtctr r12
/* 8061F160  4E 80 04 21 */	bctrl 
/* 8061F164  81 7D 02 E0 */	lwz r11, 0x2e0(r29)
/* 8061F168  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 8061F16C  3C 60 80 CB */	lis r3, ef_dust01_modelT@ha /* 0x80CB2540@ha */
/* 8061F170  57 40 10 3A */	slwi r0, r26, 2
/* 8061F174  38 CB 00 08 */	addi r6, r11, 8
/* 8061F178  38 A4 00 20 */	addi r5, r4, 0x0020 /* 0xDB060020@l */
/* 8061F17C  90 DD 02 E0 */	stw r6, 0x2e0(r29)
/* 8061F180  39 5E 00 00 */	addi r10, r30, 0
/* 8061F184  39 04 00 24 */	addi r8, r4, 0x24
/* 8061F188  57 27 10 3A */	slwi r7, r25, 2
/* 8061F18C  90 AB 00 00 */	stw r5, 0(r11)
/* 8061F190  38 DE 00 30 */	addi r6, r30, 0x30
/* 8061F194  38 A0 FF FF */	li r5, -1
/* 8061F198  3C 80 DE 00 */	lis r4, 0xde00
/* 8061F19C  7D 2A 00 2E */	lwzx r9, r10, r0
/* 8061F1A0  38 03 25 40 */	addi r0, r3, ef_dust01_modelT@l /* 0x80CB2540@l */
/* 8061F1A4  91 2B 00 04 */	stw r9, 4(r11)
/* 8061F1A8  81 3D 02 E0 */	lwz r9, 0x2e0(r29)
/* 8061F1AC  38 69 00 08 */	addi r3, r9, 8
/* 8061F1B0  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 8061F1B4  91 09 00 00 */	stw r8, 0(r9)
/* 8061F1B8  7C 6A 38 2E */	lwzx r3, r10, r7
/* 8061F1BC  90 69 00 04 */	stw r3, 4(r9)
/* 8061F1C0  80 FD 02 E0 */	lwz r7, 0x2e0(r29)
/* 8061F1C4  38 67 00 08 */	addi r3, r7, 8
/* 8061F1C8  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 8061F1CC  7C 66 F8 AE */	lbzx r3, r6, r31
/* 8061F1D0  64 63 FA 00 */	oris r3, r3, 0xfa00
/* 8061F1D4  90 67 00 00 */	stw r3, 0(r7)
/* 8061F1D8  90 A7 00 04 */	stw r5, 4(r7)
/* 8061F1DC  80 BD 02 E0 */	lwz r5, 0x2e0(r29)
/* 8061F1E0  38 65 00 08 */	addi r3, r5, 8
/* 8061F1E4  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 8061F1E8  90 85 00 00 */	stw r4, 0(r5)
/* 8061F1EC  90 05 00 04 */	stw r0, 4(r5)
/* 8061F1F0  39 61 00 30 */	addi r11, r1, 0x30
/* 8061F1F4  4B A7 BD 1D */	bl func_8009AF10
/* 8061F1F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061F1FC  7C 08 03 A6 */	mtlr r0
/* 8061F200  38 21 00 30 */	addi r1, r1, 0x30
/* 8061F204  4E 80 00 20 */	blr 
