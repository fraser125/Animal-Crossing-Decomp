lbl_8046EE40:
/* 8046EE40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046EE44  7C 08 02 A6 */	mflr r0
/* 8046EE48  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046EE4C  39 61 00 30 */	addi r11, r1, 0x30
/* 8046EE50  4B C2 C0 75 */	bl func_8009AEC4
/* 8046EE54  7C A0 07 34 */	extsh r0, r5
/* 8046EE58  7C 7F 1B 78 */	mr r31, r3
/* 8046EE5C  2C 00 00 02 */	cmpwi r0, 2
/* 8046EE60  7C 99 23 78 */	mr r25, r4
/* 8046EE64  40 82 00 70 */	bne lbl_8046EED4
/* 8046EE68  3C 80 80 47 */	lis r4, aMI_DrawMyFloor@ha /* 0x8046F5F8@ha */
/* 8046EE6C  3C 60 80 47 */	lis r3, aMI_DrawMyOriginalFloor@ha /* 0x8046F764@ha */
/* 8046EE70  7F 3B 07 34 */	extsh r27, r25
/* 8046EE74  3B 20 00 00 */	li r25, 0
/* 8046EE78  3B 84 F5 F8 */	addi r28, r4, aMI_DrawMyFloor@l /* 0x8046F5F8@l */
/* 8046EE7C  3B A3 F7 64 */	addi r29, r3, aMI_DrawMyOriginalFloor@l /* 0x8046F764@l */
/* 8046EE80  3B C0 00 00 */	li r30, 0
lbl_8046EE84:
/* 8046EE84  7F 5F F2 14 */	add r26, r31, r30
/* 8046EE88  7F 64 DB 78 */	mr r4, r27
/* 8046EE8C  80 7A 01 90 */	lwz r3, 0x190(r26)
/* 8046EE90  4B F7 7D C9 */	bl mRmTp_CopyFloorData
/* 8046EE94  2C 1B 00 57 */	cmpwi r27, 0x57
/* 8046EE98  38 00 00 00 */	li r0, 0
/* 8046EE9C  41 80 00 10 */	blt lbl_8046EEAC
/* 8046EEA0  2C 1B 00 5E */	cmpwi r27, 0x5e
/* 8046EEA4  41 81 00 08 */	bgt lbl_8046EEAC
/* 8046EEA8  38 00 00 01 */	li r0, 1
lbl_8046EEAC:
/* 8046EEAC  2C 00 00 00 */	cmpwi r0, 0
/* 8046EEB0  7F 80 E3 78 */	mr r0, r28
/* 8046EEB4  41 82 00 08 */	beq lbl_8046EEBC
/* 8046EEB8  7F A0 EB 78 */	mr r0, r29
lbl_8046EEBC:
/* 8046EEBC  3B 39 00 01 */	addi r25, r25, 1
/* 8046EEC0  90 1A 01 88 */	stw r0, 0x188(r26)
/* 8046EEC4  2C 19 00 02 */	cmpwi r25, 2
/* 8046EEC8  3B DE 00 18 */	addi r30, r30, 0x18
/* 8046EECC  41 80 FF B8 */	blt lbl_8046EE84
/* 8046EED0  48 00 00 5C */	b lbl_8046EF2C
lbl_8046EED4:
/* 8046EED4  54 1A 07 FE */	clrlwi r26, r0, 0x1f
/* 8046EED8  7F 24 07 34 */	extsh r4, r25
/* 8046EEDC  1C 1A 00 18 */	mulli r0, r26, 0x18
/* 8046EEE0  7C 7F 02 14 */	add r3, r31, r0
/* 8046EEE4  80 63 01 90 */	lwz r3, 0x190(r3)
/* 8046EEE8  4B F7 7D 71 */	bl mRmTp_CopyFloorData
/* 8046EEEC  7F 20 07 34 */	extsh r0, r25
/* 8046EEF0  38 80 00 00 */	li r4, 0
/* 8046EEF4  2C 00 00 57 */	cmpwi r0, 0x57
/* 8046EEF8  41 80 00 10 */	blt lbl_8046EF08
/* 8046EEFC  2C 00 00 5E */	cmpwi r0, 0x5e
/* 8046EF00  41 81 00 08 */	bgt lbl_8046EF08
/* 8046EF04  38 80 00 01 */	li r4, 1
lbl_8046EF08:
/* 8046EF08  2C 04 00 00 */	cmpwi r4, 0
/* 8046EF0C  3C 60 80 47 */	lis r3, aMI_DrawMyFloor@ha /* 0x8046F5F8@ha */
/* 8046EF10  38 83 F5 F8 */	addi r4, r3, aMI_DrawMyFloor@l /* 0x8046F5F8@l */
/* 8046EF14  41 82 00 0C */	beq lbl_8046EF20
/* 8046EF18  3C 60 80 47 */	lis r3, aMI_DrawMyOriginalFloor@ha /* 0x8046F764@ha */
/* 8046EF1C  38 83 F7 64 */	addi r4, r3, aMI_DrawMyOriginalFloor@l /* 0x8046F764@l */
lbl_8046EF20:
/* 8046EF20  1C 1A 00 18 */	mulli r0, r26, 0x18
/* 8046EF24  7C 7F 02 14 */	add r3, r31, r0
/* 8046EF28  90 83 01 88 */	stw r4, 0x188(r3)
lbl_8046EF2C:
/* 8046EF2C  39 61 00 30 */	addi r11, r1, 0x30
/* 8046EF30  4B C2 BF E1 */	bl func_8009AF10
/* 8046EF34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046EF38  7C 08 03 A6 */	mtlr r0
/* 8046EF3C  38 21 00 30 */	addi r1, r1, 0x30
/* 8046EF40  4E 80 00 20 */	blr 
