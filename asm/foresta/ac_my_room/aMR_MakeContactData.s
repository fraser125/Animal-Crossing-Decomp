lbl_80478BE8:
/* 80478BE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80478BEC  7C 08 02 A6 */	mflr r0
/* 80478BF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80478BF4  39 61 00 30 */	addi r11, r1, 0x30
/* 80478BF8  4B C2 22 C1 */	bl func_8009AEB8
/* 80478BFC  3D 00 81 1D */	lis r8, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80478C00  7C B8 2B 78 */	mr r24, r5
/* 80478C04  3B E8 DF E8 */	addi r31, r8, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80478C08  7C 76 1B 78 */	mr r22, r3
/* 80478C0C  83 BF 00 00 */	lwz r29, 0(r31)
/* 80478C10  7C 97 23 78 */	mr r23, r4
/* 80478C14  83 9F 00 04 */	lwz r28, 4(r31)
/* 80478C18  7C D9 33 78 */	mr r25, r6
/* 80478C1C  7C FA 3B 78 */	mr r26, r7
/* 80478C20  54 BE 06 3E */	clrlwi r30, r5, 0x18
/* 80478C24  3B 60 00 00 */	li r27, 0
/* 80478C28  48 00 00 90 */	b lbl_80478CB8
lbl_80478C2C:
/* 80478C2C  88 1C 00 00 */	lbz r0, 0(r28)
/* 80478C30  28 00 00 00 */	cmplwi r0, 0
/* 80478C34  41 82 00 78 */	beq lbl_80478CAC
/* 80478C38  A0 7D 00 00 */	lhz r3, 0(r29)
/* 80478C3C  4B FF 75 65 */	bl func_804701A0
/* 80478C40  28 03 00 00 */	cmplwi r3, 0
/* 80478C44  41 82 00 68 */	beq lbl_80478CAC
/* 80478C48  A8 9D 08 3C */	lha r4, 0x83c(r29)
/* 80478C4C  7E E0 07 34 */	extsh r0, r23
/* 80478C50  7C 04 00 00 */	cmpw r4, r0
/* 80478C54  40 82 00 58 */	bne lbl_80478CAC
/* 80478C58  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80478C5C  40 82 00 2C */	bne lbl_80478C88
/* 80478C60  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 80478C64  28 00 00 00 */	cmplwi r0, 0
/* 80478C68  40 82 00 44 */	bne lbl_80478CAC
/* 80478C6C  7F 63 DB 78 */	mr r3, r27
/* 80478C70  7F A4 EB 78 */	mr r4, r29
/* 80478C74  7E C5 B3 78 */	mr r5, r22
/* 80478C78  7F 46 D3 78 */	mr r6, r26
/* 80478C7C  7F 27 CB 78 */	mr r7, r25
/* 80478C80  4B FF FD 59 */	bl aMR_ContactCheck
/* 80478C84  48 00 00 28 */	b lbl_80478CAC
lbl_80478C88:
/* 80478C88  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 80478C8C  7C 00 F0 39 */	and. r0, r0, r30
/* 80478C90  41 82 00 1C */	beq lbl_80478CAC
/* 80478C94  7F 63 DB 78 */	mr r3, r27
/* 80478C98  7F A4 EB 78 */	mr r4, r29
/* 80478C9C  7E C5 B3 78 */	mr r5, r22
/* 80478CA0  7F 46 D3 78 */	mr r6, r26
/* 80478CA4  7F 27 CB 78 */	mr r7, r25
/* 80478CA8  4B FF FD 31 */	bl aMR_ContactCheck
lbl_80478CAC:
/* 80478CAC  3B BD 08 58 */	addi r29, r29, 0x858
/* 80478CB0  3B 9C 00 01 */	addi r28, r28, 1
/* 80478CB4  3B 7B 00 01 */	addi r27, r27, 1
lbl_80478CB8:
/* 80478CB8  80 1F 00 08 */	lwz r0, 8(r31)
/* 80478CBC  7C 1B 00 00 */	cmpw r27, r0
/* 80478CC0  41 80 FF 6C */	blt lbl_80478C2C
/* 80478CC4  39 61 00 30 */	addi r11, r1, 0x30
/* 80478CC8  4B C2 22 3D */	bl func_8009AF04
/* 80478CCC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80478CD0  7C 08 03 A6 */	mtlr r0
/* 80478CD4  38 21 00 30 */	addi r1, r1, 0x30
/* 80478CD8  4E 80 00 20 */	blr 
