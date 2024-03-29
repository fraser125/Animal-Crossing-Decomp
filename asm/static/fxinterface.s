.include "macros.inc"

.section .text

.org 0x800304A0

.global DFX_SetFxLine__FUcPsP13FxlineConfig_
DFX_SetFxLine__FUcPsP13FxlineConfig_:
/* 800304A0 0002D400  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800304A4 0002D404  7C 08 02 A6 */	mflr r0
/* 800304A8 0002D408  90 01 00 24 */	stw r0, 0x24(r1)
/* 800304AC 0002D40C  39 61 00 20 */	addi r11, r1, 0x20
/* 800304B0 0002D410  48 06 AA 1D */	bl func_8009AECC
/* 800304B4 0002D414  7C 7B 1B 78 */	mr r27, r3
/* 800304B8 0002D418  7C 9C 23 78 */	mr r28, r4
/* 800304BC 0002D41C  7C BD 2B 78 */	mr r29, r5
/* 800304C0 0002D420  48 04 A7 65 */	bl OSDisableInterrupts
/* 800304C4 0002D424  7C 60 1B 78 */	mr r0, r3
/* 800304C8 0002D428  7F 63 DB 78 */	mr r3, r27
/* 800304CC 0002D42C  7C 1E 03 78 */	mr r30, r0
/* 800304D0 0002D430  4B FF F9 11 */	bl GetFxHandle__FUc
/* 800304D4 0002D434  38 00 00 00 */	li r0, 0
/* 800304D8 0002D438  28 1D 00 00 */	cmplwi r29, 0
/* 800304DC 0002D43C  B0 03 00 00 */	sth r0, 0(r3)
/* 800304E0 0002D440  7C 7F 1B 78 */	mr r31, r3
/* 800304E4 0002D444  41 82 00 54 */	beq lbl_80030538
/* 800304E8 0002D448  A8 1D 00 04 */	lha r0, 4(r29)
/* 800304EC 0002D44C  3C 60 80 0D */	lis r3, SEND_TABLE@ha
/* 800304F0 0002D450  38 C3 5A 20 */	addi r6, r3, SEND_TABLE@l
/* 800304F4 0002D454  38 9D 00 10 */	addi r4, r29, 0x10
/* 800304F8 0002D458  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 800304FC 0002D45C  38 7F 00 10 */	addi r3, r31, 0x10
/* 80030500 0002D460  38 A0 00 08 */	li r5, 8
/* 80030504 0002D464  A0 1D 00 02 */	lhz r0, 2(r29)
/* 80030508 0002D468  54 00 08 3C */	slwi r0, r0, 1
/* 8003050C 0002D46C  7C 06 02 2E */	lhzx r0, r6, r0
/* 80030510 0002D470  B0 1F 00 08 */	sth r0, 8(r31)
/* 80030514 0002D474  A8 1D 00 08 */	lha r0, 8(r29)
/* 80030518 0002D478  B0 1F 00 0E */	sth r0, 0xe(r31)
/* 8003051C 0002D47C  A0 1D 00 06 */	lhz r0, 6(r29)
/* 80030520 0002D480  54 00 08 3C */	slwi r0, r0, 1
/* 80030524 0002D484  7C 06 02 2E */	lhzx r0, r6, r0
/* 80030528 0002D488  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 8003052C 0002D48C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80030530 0002D490  B0 1F 00 02 */	sth r0, 2(r31)
/* 80030534 0002D494  4B FF FC 6D */	bl DSP_SetFilterTable__FPsPsUl
lbl_80030538:
/* 80030538 0002D498  28 1C 00 00 */	cmplwi r28, 0
/* 8003053C 0002D49C  41 82 00 34 */	beq lbl_80030570
/* 80030540 0002D4A0  28 1D 00 00 */	cmplwi r29, 0
/* 80030544 0002D4A4  41 82 00 2C */	beq lbl_80030570
/* 80030548 0002D4A8  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8003054C 0002D4AC  7F 83 E3 78 */	mr r3, r28
/* 80030550 0002D4B0  1F 60 00 A0 */	mulli r27, r0, 0xa0
/* 80030554 0002D4B4  93 9F 00 04 */	stw r28, 4(r31)
/* 80030558 0002D4B8  7F 64 DB 78 */	mr r4, r27
/* 8003055C 0002D4BC  4B FE 82 C5 */	bl Jac_bzero__FPvl
/* 80030560 0002D4C0  7F 83 E3 78 */	mr r3, r28
/* 80030564 0002D4C4  7F 64 DB 78 */	mr r4, r27
/* 80030568 0002D4C8  48 04 96 1D */	bl DCFlushRange
/* 8003056C 0002D4CC  48 00 00 18 */	b lbl_80030584
lbl_80030570:
/* 80030570 0002D4D0  28 1D 00 00 */	cmplwi r29, 0
/* 80030574 0002D4D4  41 82 00 0C */	beq lbl_80030580
/* 80030578 0002D4D8  28 1C 00 00 */	cmplwi r28, 0
/* 8003057C 0002D4DC  41 82 00 08 */	beq lbl_80030584
lbl_80030580:
/* 80030580 0002D4E0  93 9F 00 04 */	stw r28, 4(r31)
lbl_80030584:
/* 80030584 0002D4E4  80 1F 00 04 */	lwz r0, 4(r31)
/* 80030588 0002D4E8  28 00 00 00 */	cmplwi r0, 0
/* 8003058C 0002D4EC  41 82 00 10 */	beq lbl_8003059C
/* 80030590 0002D4F0  88 1D 00 00 */	lbz r0, 0(r29)
/* 80030594 0002D4F4  B0 1F 00 00 */	sth r0, 0(r31)
/* 80030598 0002D4F8  48 00 00 0C */	b lbl_800305A4
lbl_8003059C:
/* 8003059C 0002D4FC  38 00 00 00 */	li r0, 0
/* 800305A0 0002D500  B0 1F 00 00 */	sth r0, 0(r31)
lbl_800305A4:
/* 800305A4 0002D504  7F E3 FB 78 */	mr r3, r31
/* 800305A8 0002D508  38 80 00 20 */	li r4, 0x20
/* 800305AC 0002D50C  48 04 95 D9 */	bl DCFlushRange
/* 800305B0 0002D510  7F C3 F3 78 */	mr r3, r30
/* 800305B4 0002D514  48 04 A6 99 */	bl OSRestoreInterrupts
/* 800305B8 0002D518  38 60 00 01 */	li r3, 1
/* 800305BC 0002D51C  39 61 00 20 */	addi r11, r1, 0x20
/* 800305C0 0002D520  48 06 A9 59 */	bl func_8009AF18
/* 800305C4 0002D524  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800305C8 0002D528  7C 08 03 A6 */	mtlr r0
/* 800305CC 0002D52C  38 21 00 20 */	addi r1, r1, 0x20
/* 800305D0 0002D530  4E 80 00 20 */	blr 
/* 800305D4 0002D534  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800305D8 0002D538  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800305DC 0002D53C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
