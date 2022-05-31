lbl_803FBA28:
/* 803FBA28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FBA2C  7C 08 02 A6 */	mflr r0
/* 803FBA30  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FBA34  39 61 00 30 */	addi r11, r1, 0x30
/* 803FBA38  4B C9 F4 89 */	bl func_8009AEC0
/* 803FBA3C  7C 78 1B 78 */	mr r24, r3
/* 803FBA40  7C 99 23 78 */	mr r25, r4
/* 803FBA44  80 03 01 7C */	lwz r0, 0x17c(r3)
/* 803FBA48  7C BA 2B 78 */	mr r26, r5
/* 803FBA4C  3B D8 00 54 */	addi r30, r24, 0x54
/* 803FBA50  3B A0 00 00 */	li r29, 0
/* 803FBA54  28 00 00 00 */	cmplwi r0, 0
/* 803FBA58  3B 80 00 00 */	li r28, 0
/* 803FBA5C  40 82 00 24 */	bne lbl_803FBA80
/* 803FBA60  2C 06 00 00 */	cmpwi r6, 0
/* 803FBA64  41 80 00 1C */	blt lbl_803FBA80
/* 803FBA68  2C 06 00 02 */	cmpwi r6, 2
/* 803FBA6C  40 80 00 14 */	bge lbl_803FBA80
/* 803FBA70  3C 60 80 66 */	lis r3, sound_table@ha /* 0x8065E78C@ha */
/* 803FBA74  38 63 E7 8C */	addi r3, r3, sound_table@l /* 0x8065E78C@l */
/* 803FBA78  7C 63 30 AE */	lbzx r3, r3, r6
/* 803FBA7C  48 23 24 89 */	bl sAdo_SysLevStart
lbl_803FBA80:
/* 803FBA80  80 18 01 7C */	lwz r0, 0x17c(r24)
/* 803FBA84  28 00 00 64 */	cmplwi r0, 0x64
/* 803FBA88  40 80 00 A4 */	bge lbl_803FBB2C
/* 803FBA8C  3B 60 00 00 */	li r27, 0
/* 803FBA90  3F E0 00 01 */	lis r31, 1
lbl_803FBA94:
/* 803FBA94  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 803FBA98  28 00 00 00 */	cmplwi r0, 0
/* 803FBA9C  40 82 00 10 */	bne lbl_803FBAAC
/* 803FBAA0  38 7F A0 00 */	addi r3, r31, -24576
/* 803FBAA4  4B FF BD 51 */	bl mCD_malloc_32
/* 803FBAA8  90 7E 00 7C */	stw r3, 0x7c(r30)
lbl_803FBAAC:
/* 803FBAAC  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 803FBAB0  28 00 00 00 */	cmplwi r0, 0
/* 803FBAB4  41 82 00 08 */	beq lbl_803FBABC
/* 803FBAB8  3B BD 00 01 */	addi r29, r29, 1
lbl_803FBABC:
/* 803FBABC  3B 7B 00 01 */	addi r27, r27, 1
/* 803FBAC0  3B DE 00 94 */	addi r30, r30, 0x94
/* 803FBAC4  2C 1B 00 02 */	cmpwi r27, 2
/* 803FBAC8  41 80 FF CC */	blt lbl_803FBA94
/* 803FBACC  80 18 00 0C */	lwz r0, 0xc(r24)
/* 803FBAD0  28 00 00 00 */	cmplwi r0, 0
/* 803FBAD4  40 82 00 1C */	bne lbl_803FBAF0
/* 803FBAD8  7F 43 D3 78 */	mr r3, r26
/* 803FBADC  4B FF E9 7D */	bl mCD_get_size
/* 803FBAE0  90 78 00 08 */	stw r3, 8(r24)
/* 803FBAE4  80 78 00 08 */	lwz r3, 8(r24)
/* 803FBAE8  4B FF BD 0D */	bl mCD_malloc_32
/* 803FBAEC  90 78 00 0C */	stw r3, 0xc(r24)
lbl_803FBAF0:
/* 803FBAF0  80 18 00 0C */	lwz r0, 0xc(r24)
/* 803FBAF4  28 00 00 00 */	cmplwi r0, 0
/* 803FBAF8  41 82 00 08 */	beq lbl_803FBB00
/* 803FBAFC  3B BD 00 01 */	addi r29, r29, 1
lbl_803FBB00:
/* 803FBB00  2C 1D 00 03 */	cmpwi r29, 3
/* 803FBB04  40 82 00 18 */	bne lbl_803FBB1C
/* 803FBB08  80 79 00 00 */	lwz r3, 0(r25)
/* 803FBB0C  3B 80 00 01 */	li r28, 1
/* 803FBB10  38 03 00 01 */	addi r0, r3, 1
/* 803FBB14  90 19 00 00 */	stw r0, 0(r25)
/* 803FBB18  48 00 00 20 */	b lbl_803FBB38
lbl_803FBB1C:
/* 803FBB1C  80 78 01 7C */	lwz r3, 0x17c(r24)
/* 803FBB20  38 03 00 01 */	addi r0, r3, 1
/* 803FBB24  90 18 01 7C */	stw r0, 0x17c(r24)
/* 803FBB28  48 00 00 10 */	b lbl_803FBB38
lbl_803FBB2C:
/* 803FBB2C  38 60 00 01 */	li r3, 1
/* 803FBB30  4B FF BB 11 */	bl mCD_OnErrInfo
/* 803FBB34  3B 80 FF FF */	li r28, -1
lbl_803FBB38:
/* 803FBB38  7F 83 E3 78 */	mr r3, r28
/* 803FBB3C  39 61 00 30 */	addi r11, r1, 0x30
/* 803FBB40  4B C9 F3 CD */	bl func_8009AF0C
/* 803FBB44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FBB48  7C 08 03 A6 */	mtlr r0
/* 803FBB4C  38 21 00 30 */	addi r1, r1, 0x30
/* 803FBB50  4E 80 00 20 */	blr 
