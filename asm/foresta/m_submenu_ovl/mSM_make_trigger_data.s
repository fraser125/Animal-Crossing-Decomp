lbl_805EEEBC:
/* 805EEEBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EEEC0  7C 08 02 A6 */	mflr r0
/* 805EEEC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EEEC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EEECC  93 C1 00 08 */	stw r30, 8(r1)
/* 805EEED0  7C 7E 1B 78 */	mr r30, r3
/* 805EEED4  4B DA 70 9D */	bl getTrigger
/* 805EEED8  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 805EEEDC  4B DA 6F F5 */	bl getButton
/* 805EEEE0  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805EEEE4  3C 80 80 65 */	lis r4, lit_965@ha /* 0x8064B804@ha */
/* 805EEEE8  80 C5 52 F0 */	lwz r6, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 805EEEEC  54 60 07 3E */	clrlwi r0, r3, 0x1c
/* 805EEEF0  C0 04 B8 04 */	lfs f0, lit_965@l(r4)  /* 0x8064B804@l */
/* 805EEEF4  7C 07 FB 78 */	or r7, r0, r31
/* 805EEEF8  C0 26 00 B0 */	lfs f1, 0xb0(r6)
/* 805EEEFC  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805EEF00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EEF04  40 81 00 20 */	ble lbl_805EEF24
/* 805EEF08  A8 86 00 B4 */	lha r4, 0xb4(r6)
/* 805EEF0C  3C 60 80 6D */	lis r3, add_trigger@ha /* 0x806CF7F4@ha */
/* 805EEF10  38 63 F7 F4 */	addi r3, r3, add_trigger@l /* 0x806CF7F4@l */
/* 805EEF14  38 04 20 00 */	addi r0, r4, 0x2000
/* 805EEF18  54 00 A7 3A */	rlwinm r0, r0, 0x14, 0x1c, 0x1d
/* 805EEF1C  7C 03 00 2E */	lwzx r0, r3, r0
/* 805EEF20  7C E7 03 78 */	or r7, r7, r0
lbl_805EEF24:
/* 805EEF24  80 05 09 2C */	lwz r0, 0x92c(r5)
/* 805EEF28  7C 07 00 40 */	cmplw r7, r0
/* 805EEF2C  40 82 00 2C */	bne lbl_805EEF58
/* 805EEF30  A8 65 09 30 */	lha r3, 0x930(r5)
/* 805EEF34  2C 03 00 00 */	cmpwi r3, 0
/* 805EEF38  40 81 00 14 */	ble lbl_805EEF4C
/* 805EEF3C  38 03 FF FF */	addi r0, r3, -1
/* 805EEF40  38 E0 00 00 */	li r7, 0
/* 805EEF44  B0 05 09 30 */	sth r0, 0x930(r5)
/* 805EEF48  48 00 00 1C */	b lbl_805EEF64
lbl_805EEF4C:
/* 805EEF4C  38 00 00 03 */	li r0, 3
/* 805EEF50  B0 05 09 30 */	sth r0, 0x930(r5)
/* 805EEF54  48 00 00 10 */	b lbl_805EEF64
lbl_805EEF58:
/* 805EEF58  90 E5 09 2C */	stw r7, 0x92c(r5)
/* 805EEF5C  38 00 00 19 */	li r0, 0x19
/* 805EEF60  B0 05 09 30 */	sth r0, 0x930(r5)
lbl_805EEF64:
/* 805EEF64  90 E5 09 28 */	stw r7, 0x928(r5)
/* 805EEF68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EEF6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EEF70  83 C1 00 08 */	lwz r30, 8(r1)
/* 805EEF74  7C 08 03 A6 */	mtlr r0
/* 805EEF78  38 21 00 10 */	addi r1, r1, 0x10
/* 805EEF7C  4E 80 00 20 */	blr 
