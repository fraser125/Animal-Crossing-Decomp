lbl_8060B520:
/* 8060B520  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8060B524  7C 08 02 A6 */	mflr r0
/* 8060B528  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060B52C  39 61 00 20 */	addi r11, r1, 0x20
/* 8060B530  4B A8 F9 99 */	bl func_8009AEC8
/* 8060B534  7C 7C 1B 78 */	mr r28, r3
/* 8060B538  3C A0 80 6D */	lis r5, data_806D21B0@ha /* 0x806D21B0@ha */
/* 8060B53C  A8 03 00 00 */	lha r0, 0(r3)
/* 8060B540  7C 83 23 78 */	mr r3, r4
/* 8060B544  3B C5 21 B0 */	addi r30, r5, data_806D21B0@l /* 0x806D21B0@l */
/* 8060B548  20 00 00 12 */	subfic r0, r0, 0x12
/* 8060B54C  7C 00 0E 70 */	srawi r0, r0, 1
/* 8060B550  7C 04 07 35 */	extsh. r4, r0
/* 8060B554  40 80 00 0C */	bge lbl_8060B560
/* 8060B558  38 00 00 00 */	li r0, 0
/* 8060B55C  48 00 00 14 */	b lbl_8060B570
lbl_8060B560:
/* 8060B560  2C 04 00 09 */	cmpwi r4, 9
/* 8060B564  38 00 00 09 */	li r0, 9
/* 8060B568  41 81 00 08 */	bgt lbl_8060B570
/* 8060B56C  7C 80 23 78 */	mr r0, r4
lbl_8060B570:
/* 8060B570  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8060B574  7C 1F 07 34 */	extsh r31, r0
/* 8060B578  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8060B57C  38 FE 00 50 */	addi r7, r30, 0x50
/* 8060B580  3C 84 00 02 */	addis r4, r4, 2
/* 8060B584  57 E0 08 3C */	slwi r0, r31, 1
/* 8060B588  80 A4 60 9C */	lwz r5, 0x609c(r4)
/* 8060B58C  7C C7 02 14 */	add r6, r7, r0
/* 8060B590  38 9C 00 10 */	addi r4, r28, 0x10
/* 8060B594  7F 67 00 AE */	lbzx r27, r7, r0
/* 8060B598  81 85 00 18 */	lwz r12, 0x18(r5)
/* 8060B59C  38 BC 00 34 */	addi r5, r28, 0x34
/* 8060B5A0  8B 46 00 01 */	lbz r26, 1(r6)
/* 8060B5A4  83 A3 00 00 */	lwz r29, 0(r3)
/* 8060B5A8  7D 89 03 A6 */	mtctr r12
/* 8060B5AC  4E 80 04 21 */	bctrl 
/* 8060B5B0  80 FD 02 E0 */	lwz r7, 0x2e0(r29)
/* 8060B5B4  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 8060B5B8  38 A3 00 20 */	addi r5, r3, 0x0020 /* 0xDB060020@l */
/* 8060B5BC  57 64 10 3A */	slwi r4, r27, 2
/* 8060B5C0  38 07 00 08 */	addi r0, r7, 8
/* 8060B5C4  38 DE 00 00 */	addi r6, r30, 0
/* 8060B5C8  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 8060B5CC  38 63 00 24 */	addi r3, r3, 0x24
/* 8060B5D0  57 40 10 3A */	slwi r0, r26, 2
/* 8060B5D4  90 A7 00 00 */	stw r5, 0(r7)
/* 8060B5D8  7C 86 20 2E */	lwzx r4, r6, r4
/* 8060B5DC  90 87 00 04 */	stw r4, 4(r7)
/* 8060B5E0  80 BD 02 E0 */	lwz r5, 0x2e0(r29)
/* 8060B5E4  38 85 00 08 */	addi r4, r5, 8
/* 8060B5E8  90 9D 02 E0 */	stw r4, 0x2e0(r29)
/* 8060B5EC  90 65 00 00 */	stw r3, 0(r5)
/* 8060B5F0  7C 06 00 2E */	lwzx r0, r6, r0
/* 8060B5F4  90 05 00 04 */	stw r0, 4(r5)
/* 8060B5F8  A8 7C 00 08 */	lha r3, 8(r28)
/* 8060B5FC  7C 60 07 35 */	extsh. r0, r3
/* 8060B600  41 80 00 64 */	blt lbl_8060B664
/* 8060B604  2C 03 00 0A */	cmpwi r3, 0xa
/* 8060B608  40 80 00 5C */	bge lbl_8060B664
/* 8060B60C  80 DD 02 E0 */	lwz r6, 0x2e0(r29)
/* 8060B610  38 BE 00 88 */	addi r5, r30, 0x88
/* 8060B614  38 7E 00 28 */	addi r3, r30, 0x28
/* 8060B618  38 9E 00 74 */	addi r4, r30, 0x74
/* 8060B61C  38 06 00 08 */	addi r0, r6, 8
/* 8060B620  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 8060B624  7C 05 F8 AE */	lbzx r0, r5, r31
/* 8060B628  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 8060B62C  90 06 00 00 */	stw r0, 0(r6)
/* 8060B630  A8 1C 00 08 */	lha r0, 8(r28)
/* 8060B634  7C A4 F8 AE */	lbzx r5, r4, r31
/* 8060B638  54 00 10 3A */	slwi r0, r0, 2
/* 8060B63C  7C 83 02 14 */	add r4, r3, r0
/* 8060B640  7C 63 00 AE */	lbzx r3, r3, r0
/* 8060B644  88 04 00 01 */	lbz r0, 1(r4)
/* 8060B648  88 84 00 02 */	lbz r4, 2(r4)
/* 8060B64C  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 8060B650  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 8060B654  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 8060B658  50 A0 06 3E */	rlwimi r0, r5, 0, 0x18, 0x1f
/* 8060B65C  90 06 00 04 */	stw r0, 4(r6)
/* 8060B660  48 00 00 34 */	b lbl_8060B694
lbl_8060B664:
/* 8060B664  80 BD 02 E0 */	lwz r5, 0x2e0(r29)
/* 8060B668  38 9E 00 88 */	addi r4, r30, 0x88
/* 8060B66C  38 7E 00 74 */	addi r3, r30, 0x74
/* 8060B670  38 05 00 08 */	addi r0, r5, 8
/* 8060B674  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 8060B678  7C 04 F8 AE */	lbzx r0, r4, r31
/* 8060B67C  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 8060B680  90 05 00 00 */	stw r0, 0(r5)
/* 8060B684  7C 03 F8 AE */	lbzx r0, r3, r31
/* 8060B688  64 00 FF FF */	oris r0, r0, 0xffff
/* 8060B68C  60 00 FF 00 */	ori r0, r0, 0xff00
/* 8060B690  90 05 00 04 */	stw r0, 4(r5)
lbl_8060B694:
/* 8060B694  80 DD 02 E0 */	lwz r6, 0x2e0(r29)
/* 8060B698  3C 60 80 CB */	lis r3, ef_dust01_modelT@ha /* 0x80CB2540@ha */
/* 8060B69C  3C 80 DE 00 */	lis r4, 0xde00
/* 8060B6A0  38 A6 00 08 */	addi r5, r6, 8
/* 8060B6A4  38 03 25 40 */	addi r0, r3, ef_dust01_modelT@l /* 0x80CB2540@l */
/* 8060B6A8  90 BD 02 E0 */	stw r5, 0x2e0(r29)
/* 8060B6AC  90 86 00 00 */	stw r4, 0(r6)
/* 8060B6B0  90 06 00 04 */	stw r0, 4(r6)
/* 8060B6B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8060B6B8  4B A8 F8 5D */	bl func_8009AF14
/* 8060B6BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8060B6C0  7C 08 03 A6 */	mtlr r0
/* 8060B6C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8060B6C8  4E 80 00 20 */	blr 