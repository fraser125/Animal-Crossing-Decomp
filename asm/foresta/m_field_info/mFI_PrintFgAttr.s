lbl_803AAEC8:
/* 803AAEC8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803AAECC  7C 08 02 A6 */	mflr r0
/* 803AAED0  90 01 00 64 */	stw r0, 0x64(r1)
/* 803AAED4  39 61 00 60 */	addi r11, r1, 0x60
/* 803AAED8  4B CE FF F5 */	bl func_8009AECC
/* 803AAEDC  7C 7E 1B 78 */	mr r30, r3
/* 803AAEE0  4B FF 9D B1 */	bl mFI_CheckFieldData
/* 803AAEE4  2C 03 00 00 */	cmpwi r3, 0
/* 803AAEE8  41 82 01 18 */	beq lbl_803AB000
/* 803AAEEC  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803AAEF0  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803AAEF4  80 63 00 00 */	lwz r3, 0(r3)
/* 803AAEF8  28 03 00 00 */	cmplwi r3, 0
/* 803AAEFC  41 82 01 04 */	beq lbl_803AB000
/* 803AAF00  48 02 E7 41 */	bl get_player_actor_withoutCheck
/* 803AAF04  7C 7C 1B 78 */	mr r28, r3
/* 803AAF08  38 61 00 34 */	addi r3, r1, 0x34
/* 803AAF0C  80 9C 00 28 */	lwz r4, 0x28(r28)
/* 803AAF10  3B E0 00 00 */	li r31, 0
/* 803AAF14  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 803AAF18  90 81 00 34 */	stw r4, 0x34(r1)
/* 803AAF1C  90 01 00 38 */	stw r0, 0x38(r1)
/* 803AAF20  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 803AAF24  90 01 00 3C */	stw r0, 0x3c(r1)
/* 803AAF28  4B FF C5 09 */	bl mFI_GetUnitFG
/* 803AAF2C  80 9C 00 28 */	lwz r4, 0x28(r28)
/* 803AAF30  7C 7D 1B 78 */	mr r29, r3
/* 803AAF34  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 803AAF38  38 61 00 28 */	addi r3, r1, 0x28
/* 803AAF3C  90 81 00 28 */	stw r4, 0x28(r1)
/* 803AAF40  90 01 00 2C */	stw r0, 0x2c(r1)
/* 803AAF44  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 803AAF48  90 01 00 30 */	stw r0, 0x30(r1)
/* 803AAF4C  4B FE 50 A1 */	bl mCoBG_CheckPlant
/* 803AAF50  28 1D 00 00 */	cmplwi r29, 0
/* 803AAF54  7C 7B 1B 78 */	mr r27, r3
/* 803AAF58  41 82 00 08 */	beq lbl_803AAF60
/* 803AAF5C  A3 FD 00 00 */	lhz r31, 0(r29)
lbl_803AAF60:
/* 803AAF60  80 DC 00 28 */	lwz r6, 0x28(r28)
/* 803AAF64  38 61 00 0C */	addi r3, r1, 0xc
/* 803AAF68  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 803AAF6C  38 81 00 08 */	addi r4, r1, 8
/* 803AAF70  38 A1 00 1C */	addi r5, r1, 0x1c
/* 803AAF74  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 803AAF78  90 01 00 20 */	stw r0, 0x20(r1)
/* 803AAF7C  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 803AAF80  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AAF84  4B FF A6 89 */	bl mFI_Wpos2UtNum_inBlock
/* 803AAF88  80 9C 00 28 */	lwz r4, 0x28(r28)
/* 803AAF8C  38 61 00 10 */	addi r3, r1, 0x10
/* 803AAF90  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 803AAF94  90 81 00 10 */	stw r4, 0x10(r1)
/* 803AAF98  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AAF9C  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 803AAFA0  90 01 00 18 */	stw r0, 0x18(r1)
/* 803AAFA4  4B FE 52 A1 */	bl mCoBG_Wpos2BgAttribute_Original
/* 803AAFA8  7C 60 1B 78 */	mr r0, r3
/* 803AAFAC  7F C3 F3 78 */	mr r3, r30
/* 803AAFB0  7C 1C 03 78 */	mr r28, r0
/* 803AAFB4  38 80 00 C8 */	li r4, 0xc8
/* 803AAFB8  38 A0 00 C8 */	li r5, 0xc8
/* 803AAFBC  38 C0 00 FA */	li r6, 0xfa
/* 803AAFC0  38 E0 00 FF */	li r7, 0xff
/* 803AAFC4  4B CB 01 DD */	bl gfxprint_color
/* 803AAFC8  7F C3 F3 78 */	mr r3, r30
/* 803AAFCC  38 80 00 03 */	li r4, 3
/* 803AAFD0  38 A0 00 08 */	li r5, 8
/* 803AAFD4  4B CB 02 3D */	bl gfxprint_locate8x8
/* 803AAFD8  3C 60 80 65 */	lis r3, lit_2919@ha /* 0x8065403C@ha */
/* 803AAFDC  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803AAFE0  38 83 40 3C */	addi r4, r3, lit_2919@l /* 0x8065403C@l */
/* 803AAFE4  80 C1 00 08 */	lwz r6, 8(r1)
/* 803AAFE8  7F C3 F3 78 */	mr r3, r30
/* 803AAFEC  7F 88 E3 78 */	mr r8, r28
/* 803AAFF0  7F 69 DB 78 */	mr r9, r27
/* 803AAFF4  57 E7 04 3E */	clrlwi r7, r31, 0x10
/* 803AAFF8  4C C6 31 82 */	crclr 6
/* 803AAFFC  4B CB 09 21 */	bl gfxprint_printf
lbl_803AB000:
/* 803AB000  39 61 00 60 */	addi r11, r1, 0x60
/* 803AB004  4B CE FF 15 */	bl func_8009AF18
/* 803AB008  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803AB00C  7C 08 03 A6 */	mtlr r0
/* 803AB010  38 21 00 60 */	addi r1, r1, 0x60
/* 803AB014  4E 80 00 20 */	blr 
