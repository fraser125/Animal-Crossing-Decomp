lbl_805CBBC0:
/* 805CBBC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805CBBC4  7C 08 02 A6 */	mflr r0
/* 805CBBC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805CBBCC  39 61 00 30 */	addi r11, r1, 0x30
/* 805CBBD0  4B AC F2 F5 */	bl func_8009AEC4
/* 805CBBD4  7C 79 1B 78 */	mr r25, r3
/* 805CBBD8  7C BB 2B 78 */	mr r27, r5
/* 805CBBDC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805CBBE0  7C 9A 23 78 */	mr r26, r4
/* 805CBBE4  83 A5 00 00 */	lwz r29, 0(r5)
/* 805CBBE8  3B 80 00 08 */	li r28, 8
/* 805CBBEC  83 E3 09 CC */	lwz r31, 0x9cc(r3)
/* 805CBBF0  3F DF 00 01 */	addis r30, r31, 1
/* 805CBBF4  3B DE D9 FC */	addi r30, r30, -9732
lbl_805CBBF8:
/* 805CBBF8  2C 1C 00 00 */	cmpwi r28, 0
/* 805CBBFC  41 82 00 34 */	beq lbl_805CBC30
/* 805CBC00  88 1E 00 00 */	lbz r0, 0(r30)
/* 805CBC04  88 7F 00 01 */	lbz r3, 1(r31)
/* 805CBC08  7C 00 18 40 */	cmplw r0, r3
/* 805CBC0C  41 82 00 24 */	beq lbl_805CBC30
/* 805CBC10  A8 1F 00 02 */	lha r0, 2(r31)
/* 805CBC14  2C 00 00 00 */	cmpwi r0, 0
/* 805CBC18  41 82 00 20 */	beq lbl_805CBC38
/* 805CBC1C  2C 1C 00 01 */	cmpwi r28, 1
/* 805CBC20  40 82 00 18 */	bne lbl_805CBC38
/* 805CBC24  88 1E FF FF */	lbz r0, -1(r30)
/* 805CBC28  7C 00 18 40 */	cmplw r0, r3
/* 805CBC2C  40 82 00 0C */	bne lbl_805CBC38
lbl_805CBC30:
/* 805CBC30  39 00 00 01 */	li r8, 1
/* 805CBC34  48 00 00 08 */	b lbl_805CBC3C
lbl_805CBC38:
/* 805CBC38  39 00 00 00 */	li r8, 0
lbl_805CBC3C:
/* 805CBC3C  88 FE 00 00 */	lbz r7, 0(r30)
/* 805CBC40  7F 23 CB 78 */	mr r3, r25
/* 805CBC44  7F 44 D3 78 */	mr r4, r26
/* 805CBC48  7F 65 DB 78 */	mr r5, r27
/* 805CBC4C  7F A6 EB 78 */	mr r6, r29
/* 805CBC50  4B FF F4 E1 */	bl mCL_set_page_dl
/* 805CBC54  37 9C FF FF */	addic. r28, r28, -1
/* 805CBC58  3B DE FF FF */	addi r30, r30, -1
/* 805CBC5C  40 80 FF 9C */	bge lbl_805CBBF8
/* 805CBC60  7F 23 CB 78 */	mr r3, r25
/* 805CBC64  7F 44 D3 78 */	mr r4, r26
/* 805CBC68  7F A5 EB 78 */	mr r5, r29
/* 805CBC6C  4B FF FC C1 */	bl mCL_set_wchange_dl
/* 805CBC70  80 D9 00 2C */	lwz r6, 0x2c(r25)
/* 805CBC74  7F 23 CB 78 */	mr r3, r25
/* 805CBC78  7F 64 DB 78 */	mr r4, r27
/* 805CBC7C  38 A0 00 14 */	li r5, 0x14
/* 805CBC80  81 86 09 20 */	lwz r12, 0x920(r6)
/* 805CBC84  7D 89 03 A6 */	mtctr r12
/* 805CBC88  4E 80 04 21 */	bctrl 
/* 805CBC8C  39 61 00 30 */	addi r11, r1, 0x30
/* 805CBC90  4B AC F2 81 */	bl func_8009AF10
/* 805CBC94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805CBC98  7C 08 03 A6 */	mtlr r0
/* 805CBC9C  38 21 00 30 */	addi r1, r1, 0x30
/* 805CBCA0  4E 80 00 20 */	blr 
