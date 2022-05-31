lbl_805ECE88:
/* 805ECE88  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805ECE8C  81 03 00 2C */	lwz r8, 0x2c(r3)
/* 805ECE90  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805ECE94  38 E0 00 00 */	li r7, 0
/* 805ECE98  3C 63 00 02 */	addis r3, r3, 2
/* 805ECE9C  80 88 09 AC */	lwz r4, 0x9ac(r8)
/* 805ECEA0  80 A3 61 3C */	lwz r5, 0x613c(r3)
/* 805ECEA4  38 C0 00 01 */	li r6, 1
/* 805ECEA8  38 00 00 05 */	li r0, 5
/* 805ECEAC  39 40 00 00 */	li r10, 0
/* 805ECEB0  90 E8 09 3C */	stw r7, 0x93c(r8)
/* 805ECEB4  39 25 00 68 */	addi r9, r5, 0x68
/* 805ECEB8  38 A0 00 00 */	li r5, 0
/* 805ECEBC  90 E8 02 50 */	stw r7, 0x250(r8)
/* 805ECEC0  90 C8 02 7C */	stw r6, 0x27c(r8)
/* 805ECEC4  B0 08 02 80 */	sth r0, 0x280(r8)
/* 805ECEC8  80 C3 61 3C */	lwz r6, 0x613c(r3)
/* 805ECECC  80 06 00 8C */	lwz r0, 0x8c(r6)
/* 805ECED0  90 04 00 00 */	stw r0, 0(r4)
lbl_805ECED4:
/* 805ECED4  80 C3 61 3C */	lwz r6, 0x613c(r3)
/* 805ECED8  80 06 00 88 */	lwz r0, 0x88(r6)
/* 805ECEDC  7C 00 2C 30 */	srw r0, r0, r5
/* 805ECEE0  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 805ECEE4  40 82 00 58 */	bne lbl_805ECF3C
/* 805ECEE8  3C C0 80 6D */	lis r6, data_806CE3E0@ha /* 0x806CE3E0@ha */
/* 805ECEEC  38 00 00 04 */	li r0, 4
/* 805ECEF0  38 E6 E3 E0 */	addi r7, r6, data_806CE3E0@l /* 0x806CE3E0@l */
/* 805ECEF4  39 60 00 00 */	li r11, 0
/* 805ECEF8  38 C0 00 00 */	li r6, 0
/* 805ECEFC  7C 09 03 A6 */	mtctr r0
lbl_805ECF00:
/* 805ECF00  A1 09 00 00 */	lhz r8, 0(r9)
/* 805ECF04  7C 07 32 2E */	lhzx r0, r7, r6
/* 805ECF08  7C 08 00 40 */	cmplw r8, r0
/* 805ECF0C  40 82 00 24 */	bne lbl_805ECF30
/* 805ECF10  3C C0 80 6D */	lis r6, mRP_money_amount@ha /* 0x806CE3E8@ha */
/* 805ECF14  55 60 10 3A */	slwi r0, r11, 2
/* 805ECF18  38 C6 E3 E8 */	addi r6, r6, mRP_money_amount@l /* 0x806CE3E8@l */
/* 805ECF1C  80 E4 00 00 */	lwz r7, 0(r4)
/* 805ECF20  7C 06 00 2E */	lwzx r0, r6, r0
/* 805ECF24  7C 07 02 14 */	add r0, r7, r0
/* 805ECF28  90 04 00 00 */	stw r0, 0(r4)
/* 805ECF2C  48 00 00 10 */	b lbl_805ECF3C
lbl_805ECF30:
/* 805ECF30  39 6B 00 01 */	addi r11, r11, 1
/* 805ECF34  38 C6 00 02 */	addi r6, r6, 2
/* 805ECF38  42 00 FF C8 */	bdnz lbl_805ECF00
lbl_805ECF3C:
/* 805ECF3C  39 4A 00 01 */	addi r10, r10, 1
/* 805ECF40  39 29 00 02 */	addi r9, r9, 2
/* 805ECF44  2C 0A 00 0F */	cmpwi r10, 0xf
/* 805ECF48  38 A5 00 02 */	addi r5, r5, 2
/* 805ECF4C  41 80 FF 88 */	blt lbl_805ECED4
/* 805ECF50  80 A4 00 00 */	lwz r5, 0(r4)
/* 805ECF54  38 00 00 00 */	li r0, 0
/* 805ECF58  90 A4 00 0C */	stw r5, 0xc(r4)
/* 805ECF5C  80 A3 61 3C */	lwz r5, 0x613c(r3)
/* 805ECF60  80 A5 00 90 */	lwz r5, 0x90(r5)
/* 805ECF64  90 A4 00 04 */	stw r5, 4(r4)
/* 805ECF68  90 04 00 08 */	stw r0, 8(r4)
/* 805ECF6C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805ECF70  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 805ECF74  80 03 00 90 */	lwz r0, 0x90(r3)
/* 805ECF78  7C 05 00 40 */	cmplw r5, r0
/* 805ECF7C  40 81 00 08 */	ble lbl_805ECF84
/* 805ECF80  7C 05 03 78 */	mr r5, r0
lbl_805ECF84:
/* 805ECF84  90 A4 00 10 */	stw r5, 0x10(r4)
/* 805ECF88  38 00 00 00 */	li r0, 0
/* 805ECF8C  90 04 00 14 */	stw r0, 0x14(r4)
/* 805ECF90  4E 80 00 20 */	blr 
