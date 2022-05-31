lbl_804ACE98:
/* 804ACE98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804ACE9C  38 00 00 03 */	li r0, 3
/* 804ACEA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804ACEA4  39 41 00 08 */	addi r10, r1, 8
/* 804ACEA8  3B E0 00 00 */	li r31, 0
/* 804ACEAC  7C 09 03 A6 */	mtctr r0
lbl_804ACEB0:
/* 804ACEB0  7D 83 FA 14 */	add r12, r3, r31
/* 804ACEB4  2C 1F 00 01 */	cmpwi r31, 1
/* 804ACEB8  89 6C 1D 94 */	lbz r11, 0x1d94(r12)
/* 804ACEBC  88 0C 1D 5A */	lbz r0, 0x1d5a(r12)
/* 804ACEC0  7C 0B 02 14 */	add r0, r11, r0
/* 804ACEC4  41 82 00 28 */	beq lbl_804ACEEC
/* 804ACEC8  40 80 00 10 */	bge lbl_804ACED8
/* 804ACECC  2C 1F 00 00 */	cmpwi r31, 0
/* 804ACED0  40 80 00 14 */	bge lbl_804ACEE4
/* 804ACED4  48 00 00 24 */	b lbl_804ACEF8
lbl_804ACED8:
/* 804ACED8  2C 1F 00 03 */	cmpwi r31, 3
/* 804ACEDC  40 80 00 1C */	bge lbl_804ACEF8
/* 804ACEE0  48 00 00 14 */	b lbl_804ACEF4
lbl_804ACEE4:
/* 804ACEE4  7C 00 22 14 */	add r0, r0, r4
/* 804ACEE8  48 00 00 10 */	b lbl_804ACEF8
lbl_804ACEEC:
/* 804ACEEC  7C 00 2A 14 */	add r0, r0, r5
/* 804ACEF0  48 00 00 08 */	b lbl_804ACEF8
lbl_804ACEF4:
/* 804ACEF4  7C 00 32 14 */	add r0, r0, r6
lbl_804ACEF8:
/* 804ACEF8  2C 00 00 00 */	cmpwi r0, 0
/* 804ACEFC  40 80 00 0C */	bge lbl_804ACF08
/* 804ACF00  38 00 00 00 */	li r0, 0
/* 804ACF04  48 00 00 10 */	b lbl_804ACF14
lbl_804ACF08:
/* 804ACF08  2C 00 01 00 */	cmpwi r0, 0x100
/* 804ACF0C  41 80 00 08 */	blt lbl_804ACF14
/* 804ACF10  38 00 00 FF */	li r0, 0xff
lbl_804ACF14:
/* 804ACF14  98 0A 00 00 */	stb r0, 0(r10)
/* 804ACF18  3B FF 00 01 */	addi r31, r31, 1
/* 804ACF1C  39 4A 00 01 */	addi r10, r10, 1
/* 804ACF20  42 00 FF 90 */	bdnz lbl_804ACEB0
/* 804ACF24  2C 07 00 00 */	cmpwi r7, 0
/* 804ACF28  40 80 00 0C */	bge lbl_804ACF34
/* 804ACF2C  38 E0 00 00 */	li r7, 0
/* 804ACF30  48 00 00 10 */	b lbl_804ACF40
lbl_804ACF34:
/* 804ACF34  2C 07 00 FF */	cmpwi r7, 0xff
/* 804ACF38  40 81 00 08 */	ble lbl_804ACF40
/* 804ACF3C  38 E0 00 FF */	li r7, 0xff
lbl_804ACF40:
/* 804ACF40  2C 08 00 00 */	cmpwi r8, 0
/* 804ACF44  40 80 00 0C */	bge lbl_804ACF50
/* 804ACF48  39 00 00 00 */	li r8, 0
/* 804ACF4C  48 00 00 10 */	b lbl_804ACF5C
lbl_804ACF50:
/* 804ACF50  2C 08 00 FF */	cmpwi r8, 0xff
/* 804ACF54  40 81 00 08 */	ble lbl_804ACF5C
/* 804ACF58  39 00 00 FF */	li r8, 0xff
lbl_804ACF5C:
/* 804ACF5C  2C 09 00 00 */	cmpwi r9, 0
/* 804ACF60  40 80 00 0C */	bge lbl_804ACF6C
/* 804ACF64  39 20 00 00 */	li r9, 0
/* 804ACF68  48 00 00 10 */	b lbl_804ACF78
lbl_804ACF6C:
/* 804ACF6C  2C 09 00 FF */	cmpwi r9, 0xff
/* 804ACF70  40 81 00 08 */	ble lbl_804ACF78
/* 804ACF74  39 20 00 FF */	li r9, 0xff
lbl_804ACF78:
/* 804ACF78  81 43 00 00 */	lwz r10, 0(r3)
/* 804ACF7C  54 E3 06 3E */	clrlwi r3, r7, 0x18
/* 804ACF80  88 01 00 09 */	lbz r0, 9(r1)
/* 804ACF84  64 66 FA 00 */	oris r6, r3, 0xfa00
/* 804ACF88  80 AA 02 D0 */	lwz r5, 0x2d0(r10)
/* 804ACF8C  54 07 82 1E */	rlwinm r7, r0, 0x10, 8, 0xf
/* 804ACF90  88 61 00 08 */	lbz r3, 8(r1)
/* 804ACF94  38 85 00 08 */	addi r4, r5, 8
/* 804ACF98  88 01 00 0A */	lbz r0, 0xa(r1)
/* 804ACF9C  90 8A 02 D0 */	stw r4, 0x2d0(r10)
/* 804ACFA0  50 67 C0 0E */	rlwimi r7, r3, 0x18, 0, 7
/* 804ACFA4  50 07 44 2E */	rlwimi r7, r0, 8, 0x10, 0x17
/* 804ACFA8  90 C5 00 00 */	stw r6, 0(r5)
/* 804ACFAC  7C E0 3B 78 */	mr r0, r7
/* 804ACFB0  51 00 06 3E */	rlwimi r0, r8, 0, 0x18, 0x1f
/* 804ACFB4  51 27 06 3E */	rlwimi r7, r9, 0, 0x18, 0x1f
/* 804ACFB8  90 05 00 04 */	stw r0, 4(r5)
/* 804ACFBC  80 6A 02 E0 */	lwz r3, 0x2e0(r10)
/* 804ACFC0  38 03 00 08 */	addi r0, r3, 8
/* 804ACFC4  90 0A 02 E0 */	stw r0, 0x2e0(r10)
/* 804ACFC8  90 C3 00 00 */	stw r6, 0(r3)
/* 804ACFCC  90 E3 00 04 */	stw r7, 4(r3)
/* 804ACFD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804ACFD4  38 21 00 20 */	addi r1, r1, 0x20
/* 804ACFD8  4E 80 00 20 */	blr 
