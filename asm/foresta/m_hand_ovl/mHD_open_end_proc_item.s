lbl_805DE7F8:
/* 805DE7F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DE7FC  7C 08 02 A6 */	mflr r0
/* 805DE800  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DE804  39 61 00 20 */	addi r11, r1, 0x20
/* 805DE808  4B AB C6 C9 */	bl func_8009AED0
/* 805DE80C  7C 7C 1B 78 */	mr r28, r3
/* 805DE810  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DE814  83 E3 09 80 */	lwz r31, 0x980(r3)
/* 805DE818  80 83 09 7C */	lwz r4, 0x97c(r3)
/* 805DE81C  88 1F 03 66 */	lbz r0, 0x366(r31)
/* 805DE820  38 64 00 08 */	addi r3, r4, 8
/* 805DE824  28 00 00 00 */	cmplwi r0, 0
/* 805DE828  41 82 00 10 */	beq lbl_805DE838
/* 805DE82C  8B BF 03 64 */	lbz r29, 0x364(r31)
/* 805DE830  8B DF 03 65 */	lbz r30, 0x365(r31)
/* 805DE834  48 00 00 18 */	b lbl_805DE84C
lbl_805DE838:
/* 805DE838  81 84 02 EC */	lwz r12, 0x2ec(r4)
/* 805DE83C  83 A3 00 38 */	lwz r29, 0x38(r3)
/* 805DE840  7D 89 03 A6 */	mtctr r12
/* 805DE844  4E 80 04 21 */	bctrl 
/* 805DE848  7C 7E 1B 78 */	mr r30, r3
lbl_805DE84C:
/* 805DE84C  80 1F 03 60 */	lwz r0, 0x360(r31)
/* 805DE850  28 00 00 00 */	cmplwi r0, 0
/* 805DE854  40 82 00 0C */	bne lbl_805DE860
/* 805DE858  A0 7F 02 34 */	lhz r3, 0x234(r31)
/* 805DE85C  4B E0 23 71 */	bl mPr_SetItemCollectBit
lbl_805DE860:
/* 805DE860  3C 60 80 6D */	lis r3, proc_table@ha /* 0x806CD0D4@ha */
/* 805DE864  57 A0 10 3A */	slwi r0, r29, 2
/* 805DE868  38 83 D0 D4 */	addi r4, r3, proc_table@l /* 0x806CD0D4@l */
/* 805DE86C  7F 83 E3 78 */	mr r3, r28
/* 805DE870  7D 84 00 2E */	lwzx r12, r4, r0
/* 805DE874  7F C4 F3 78 */	mr r4, r30
/* 805DE878  7F A5 EB 78 */	mr r5, r29
/* 805DE87C  7D 89 03 A6 */	mtctr r12
/* 805DE880  4E 80 04 21 */	bctrl 
/* 805DE884  2C 1D 00 06 */	cmpwi r29, 6
/* 805DE888  40 82 00 88 */	bne lbl_805DE910
/* 805DE88C  80 1C 00 04 */	lwz r0, 4(r28)
/* 805DE890  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805DE894  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805DE898  80 BC 00 2C */	lwz r5, 0x2c(r28)
/* 805DE89C  1C 80 00 48 */	mulli r4, r0, 0x48
/* 805DE8A0  57 C6 18 38 */	slwi r6, r30, 3
/* 805DE8A4  3C E3 00 01 */	addis r7, r3, 1
/* 805DE8A8  A9 1F 03 68 */	lha r8, 0x368(r31)
/* 805DE8AC  3C 63 00 01 */	addis r3, r3, 1
/* 805DE8B0  81 3F 03 6C */	lwz r9, 0x36c(r31)
/* 805DE8B4  38 84 00 54 */	addi r4, r4, 0x54
/* 805DE8B8  38 E7 C2 BE */	addi r7, r7, -15682
/* 805DE8BC  7C 85 22 14 */	add r4, r5, r4
/* 805DE8C0  38 63 C2 C0 */	addi r3, r3, -15680
/* 805DE8C4  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 805DE8C8  1C 00 26 B0 */	mulli r0, r0, 0x26b0
/* 805DE8CC  7C 00 32 14 */	add r0, r0, r6
/* 805DE8D0  7C 07 02 AE */	lhax r0, r7, r0
/* 805DE8D4  B0 1F 03 68 */	sth r0, 0x368(r31)
/* 805DE8D8  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 805DE8DC  1C 00 26 B0 */	mulli r0, r0, 0x26b0
/* 805DE8E0  7C 00 32 14 */	add r0, r0, r6
/* 805DE8E4  7C 03 00 2E */	lwzx r0, r3, r0
/* 805DE8E8  90 1F 03 6C */	stw r0, 0x36c(r31)
/* 805DE8EC  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 805DE8F0  1C 00 26 B0 */	mulli r0, r0, 0x26b0
/* 805DE8F4  7C 00 32 14 */	add r0, r0, r6
/* 805DE8F8  7D 07 03 2E */	sthx r8, r7, r0
/* 805DE8FC  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 805DE900  1C 00 26 B0 */	mulli r0, r0, 0x26b0
/* 805DE904  7C 00 32 14 */	add r0, r0, r6
/* 805DE908  7D 23 01 2E */	stwx r9, r3, r0
/* 805DE90C  48 00 00 14 */	b lbl_805DE920
lbl_805DE910:
/* 805DE910  38 60 00 01 */	li r3, 1
/* 805DE914  38 00 00 00 */	li r0, 0
/* 805DE918  B0 7F 03 68 */	sth r3, 0x368(r31)
/* 805DE91C  90 1F 03 6C */	stw r0, 0x36c(r31)
lbl_805DE920:
/* 805DE920  39 61 00 20 */	addi r11, r1, 0x20
/* 805DE924  4B AB C5 F9 */	bl func_8009AF1C
/* 805DE928  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DE92C  7C 08 03 A6 */	mtlr r0
/* 805DE930  38 21 00 20 */	addi r1, r1, 0x20
/* 805DE934  4E 80 00 20 */	blr 
