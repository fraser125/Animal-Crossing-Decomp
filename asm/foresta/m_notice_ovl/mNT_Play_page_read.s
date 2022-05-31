lbl_805EAD70:
/* 805EAD70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EAD74  7C 08 02 A6 */	mflr r0
/* 805EAD78  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EAD7C  39 61 00 20 */	addi r11, r1, 0x20
/* 805EAD80  4B AB 01 4D */	bl func_8009AECC
/* 805EAD84  7C BE 2B 78 */	mr r30, r5
/* 805EAD88  7C 7C 1B 78 */	mr r28, r3
/* 805EAD8C  88 05 00 04 */	lbz r0, 4(r5)
/* 805EAD90  7C 9D 23 78 */	mr r29, r4
/* 805EAD94  8B 65 00 01 */	lbz r27, 1(r5)
/* 805EAD98  3B E0 00 00 */	li r31, 0
/* 805EAD9C  28 00 00 00 */	cmplwi r0, 0
/* 805EADA0  41 82 00 24 */	beq lbl_805EADC4
/* 805EADA4  2C 1B 00 00 */	cmpwi r27, 0
/* 805EADA8  41 82 00 14 */	beq lbl_805EADBC
/* 805EADAC  38 60 00 02 */	li r3, 2
/* 805EADB0  4B DA B1 61 */	bl chkTrigger
/* 805EADB4  2C 03 00 00 */	cmpwi r3, 0
/* 805EADB8  41 82 00 0C */	beq lbl_805EADC4
lbl_805EADBC:
/* 805EADBC  3B E0 FF FF */	li r31, -1
/* 805EADC0  48 00 01 6C */	b lbl_805EAF2C
lbl_805EADC4:
/* 805EADC4  88 7E 00 03 */	lbz r3, 3(r30)
/* 805EADC8  88 9E 00 04 */	lbz r4, 4(r30)
/* 805EADCC  38 03 FF FF */	addi r0, r3, -1
/* 805EADD0  7C 04 00 00 */	cmpw r4, r0
/* 805EADD4  40 80 00 24 */	bge lbl_805EADF8
/* 805EADD8  2C 1B 00 04 */	cmpwi r27, 4
/* 805EADDC  41 82 00 14 */	beq lbl_805EADF0
/* 805EADE0  38 60 00 01 */	li r3, 1
/* 805EADE4  4B DA B1 2D */	bl chkTrigger
/* 805EADE8  2C 03 00 00 */	cmpwi r3, 0
/* 805EADEC  41 82 00 0C */	beq lbl_805EADF8
lbl_805EADF0:
/* 805EADF0  3B E0 00 01 */	li r31, 1
/* 805EADF4  48 00 01 38 */	b lbl_805EAF2C
lbl_805EADF8:
/* 805EADF8  88 1E 00 04 */	lbz r0, 4(r30)
/* 805EADFC  28 00 00 00 */	cmplwi r0, 0
/* 805EAE00  41 82 00 28 */	beq lbl_805EAE28
/* 805EAE04  2C 1B 00 06 */	cmpwi r27, 6
/* 805EAE08  41 82 00 14 */	beq lbl_805EAE1C
/* 805EAE0C  38 60 00 04 */	li r3, 4
/* 805EAE10  4B DA B1 01 */	bl chkTrigger
/* 805EAE14  2C 03 00 00 */	cmpwi r3, 0
/* 805EAE18  41 82 00 10 */	beq lbl_805EAE28
lbl_805EAE1C:
/* 805EAE1C  88 1E 00 04 */	lbz r0, 4(r30)
/* 805EAE20  7F E0 00 D0 */	neg r31, r0
/* 805EAE24  48 00 01 08 */	b lbl_805EAF2C
lbl_805EAE28:
/* 805EAE28  88 7E 00 03 */	lbz r3, 3(r30)
/* 805EAE2C  88 9E 00 04 */	lbz r4, 4(r30)
/* 805EAE30  38 03 FF FF */	addi r0, r3, -1
/* 805EAE34  7C 04 00 00 */	cmpw r4, r0
/* 805EAE38  40 80 00 30 */	bge lbl_805EAE68
/* 805EAE3C  2C 1B 00 02 */	cmpwi r27, 2
/* 805EAE40  41 82 00 14 */	beq lbl_805EAE54
/* 805EAE44  38 60 00 08 */	li r3, 8
/* 805EAE48  4B DA B0 C9 */	bl chkTrigger
/* 805EAE4C  2C 03 00 00 */	cmpwi r3, 0
/* 805EAE50  41 82 00 18 */	beq lbl_805EAE68
lbl_805EAE54:
/* 805EAE54  88 7E 00 04 */	lbz r3, 4(r30)
/* 805EAE58  88 1E 00 03 */	lbz r0, 3(r30)
/* 805EAE5C  7C 63 00 50 */	subf r3, r3, r0
/* 805EAE60  3B E3 FF FF */	addi r31, r3, -1
/* 805EAE64  48 00 00 C8 */	b lbl_805EAF2C
lbl_805EAE68:
/* 805EAE68  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805EAE6C  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 805EAE70  4B DA B0 A1 */	bl chkTrigger
/* 805EAE74  2C 03 00 00 */	cmpwi r3, 0
/* 805EAE78  41 82 00 78 */	beq lbl_805EAEF0
/* 805EAE7C  38 00 00 02 */	li r0, 2
/* 805EAE80  3C 60 80 65 */	lis r3, lit_533@ha /* 0x8064B6F4@ha */
/* 805EAE84  98 1E 00 00 */	stb r0, 0(r30)
/* 805EAE88  38 83 B6 F4 */	addi r4, r3, lit_533@l /* 0x8064B6F4@l */
/* 805EAE8C  38 00 00 0F */	li r0, 0xf
/* 805EAE90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805EAE94  98 1E 00 04 */	stb r0, 4(r30)
/* 805EAE98  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805EAE9C  C0 04 00 00 */	lfs f0, 0(r4)
/* 805EAEA0  3C 83 00 02 */	addis r4, r3, 2
/* 805EAEA4  38 7E 00 C8 */	addi r3, r30, 0xc8
/* 805EAEA8  38 A0 00 08 */	li r5, 8
/* 805EAEAC  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 805EAEB0  38 84 61 20 */	addi r4, r4, 0x6120
/* 805EAEB4  4B DC FB 71 */	bl func_803BAA24
/* 805EAEB8  38 7E 00 08 */	addi r3, r30, 8
/* 805EAEBC  38 80 00 C0 */	li r4, 0xc0
/* 805EAEC0  38 A0 00 20 */	li r5, 0x20
/* 805EAEC4  4B DC FB 85 */	bl mem_clear
/* 805EAEC8  38 60 00 5F */	li r3, 0x5f
/* 805EAECC  48 04 2E 39 */	bl sAdo_SysTrgStart
/* 805EAED0  7F 83 E3 78 */	mr r3, r28
/* 805EAED4  38 FE 00 08 */	addi r7, r30, 8
/* 805EAED8  38 80 00 0A */	li r4, 0xa
/* 805EAEDC  38 A0 00 02 */	li r5, 2
/* 805EAEE0  38 C0 00 20 */	li r6, 0x20
/* 805EAEE4  39 00 00 C0 */	li r8, 0xc0
/* 805EAEE8  4B E0 48 41 */	bl mSM_open_submenu_new2
/* 805EAEEC  48 00 00 40 */	b lbl_805EAF2C
lbl_805EAEF0:
/* 805EAEF0  38 60 10 00 */	li r3, 0x1000
/* 805EAEF4  4B DA B0 1D */	bl chkTrigger
/* 805EAEF8  7C 7B 1B 78 */	mr r27, r3
/* 805EAEFC  38 60 40 00 */	li r3, 0x4000
/* 805EAF00  4B DA B0 11 */	bl chkTrigger
/* 805EAF04  7C 60 DB 79 */	or. r0, r3, r27
/* 805EAF08  41 82 00 24 */	beq lbl_805EAF2C
/* 805EAF0C  80 BC 00 2C */	lwz r5, 0x2c(r28)
/* 805EAF10  7F A3 EB 78 */	mr r3, r29
/* 805EAF14  38 80 00 04 */	li r4, 4
/* 805EAF18  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805EAF1C  7D 89 03 A6 */	mtctr r12
/* 805EAF20  4E 80 04 21 */	bctrl 
/* 805EAF24  38 60 01 7D */	li r3, 0x17d
/* 805EAF28  48 04 2D DD */	bl sAdo_SysTrgStart
lbl_805EAF2C:
/* 805EAF2C  2C 1F 00 00 */	cmpwi r31, 0
/* 805EAF30  41 82 00 70 */	beq lbl_805EAFA0
/* 805EAF34  7F E4 FE 70 */	srawi r4, r31, 0x1f
/* 805EAF38  38 00 00 01 */	li r0, 1
/* 805EAF3C  7C 83 FA 78 */	xor r3, r4, r31
/* 805EAF40  98 1E 00 00 */	stb r0, 0(r30)
/* 805EAF44  7C 04 18 50 */	subf r0, r4, r3
/* 805EAF48  2C 00 00 03 */	cmpwi r0, 3
/* 805EAF4C  40 81 00 10 */	ble lbl_805EAF5C
/* 805EAF50  38 00 00 03 */	li r0, 3
/* 805EAF54  98 1E 00 06 */	stb r0, 6(r30)
/* 805EAF58  48 00 00 08 */	b lbl_805EAF60
lbl_805EAF5C:
/* 805EAF5C  98 1E 00 06 */	stb r0, 6(r30)
lbl_805EAF60:
/* 805EAF60  88 1E 00 06 */	lbz r0, 6(r30)
/* 805EAF64  2C 1F 00 00 */	cmpwi r31, 0
/* 805EAF68  88 7E 00 04 */	lbz r3, 4(r30)
/* 805EAF6C  7C 1F 03 D6 */	divw r0, r31, r0
/* 805EAF70  7C 03 02 14 */	add r0, r3, r0
/* 805EAF74  98 1E 00 04 */	stb r0, 4(r30)
/* 805EAF78  40 81 00 14 */	ble lbl_805EAF8C
/* 805EAF7C  3C 60 80 65 */	lis r3, lit_533@ha /* 0x8064B6F4@ha */
/* 805EAF80  C0 03 B6 F4 */	lfs f0, lit_533@l(r3)  /* 0x8064B6F4@l */
/* 805EAF84  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 805EAF88  48 00 00 10 */	b lbl_805EAF98
lbl_805EAF8C:
/* 805EAF8C  3C 60 80 65 */	lis r3, lit_534@ha /* 0x8064B6F8@ha */
/* 805EAF90  C0 03 B6 F8 */	lfs f0, lit_534@l(r3)  /* 0x8064B6F8@l */
/* 805EAF94  D0 1D 00 18 */	stfs f0, 0x18(r29)
lbl_805EAF98:
/* 805EAF98  38 60 00 5F */	li r3, 0x5f
/* 805EAF9C  48 04 2D 69 */	bl sAdo_SysTrgStart
lbl_805EAFA0:
/* 805EAFA0  39 61 00 20 */	addi r11, r1, 0x20
/* 805EAFA4  4B AA FF 75 */	bl func_8009AF18
/* 805EAFA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EAFAC  7C 08 03 A6 */	mtlr r0
/* 805EAFB0  38 21 00 20 */	addi r1, r1, 0x20
/* 805EAFB4  4E 80 00 20 */	blr 
