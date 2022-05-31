lbl_8041AC00:
/* 8041AC00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8041AC04  7C 08 02 A6 */	mflr r0
/* 8041AC08  90 01 00 34 */	stw r0, 0x34(r1)
/* 8041AC0C  39 61 00 30 */	addi r11, r1, 0x30
/* 8041AC10  4B C8 02 B9 */	bl func_8009AEC8
/* 8041AC14  7C FE 3B 78 */	mr r30, r7
/* 8041AC18  7C 7A 1B 78 */	mr r26, r3
/* 8041AC1C  2C 1E 00 02 */	cmpwi r30, 2
/* 8041AC20  7C 9B 23 78 */	mr r27, r4
/* 8041AC24  7C BC 2B 78 */	mr r28, r5
/* 8041AC28  7C DD 33 78 */	mr r29, r6
/* 8041AC2C  7D 1F 43 78 */	mr r31, r8
/* 8041AC30  41 80 00 20 */	blt lbl_8041AC50
/* 8041AC34  80 7C 00 04 */	lwz r3, 4(r28)
/* 8041AC38  80 9C 00 00 */	lwz r4, 0(r28)
/* 8041AC3C  4B F8 B3 E9 */	bl mFI_CheckBgDma
/* 8041AC40  2C 03 00 00 */	cmpwi r3, 0
/* 8041AC44  41 82 00 0C */	beq lbl_8041AC50
/* 8041AC48  38 60 00 01 */	li r3, 1
/* 8041AC4C  48 00 00 C8 */	b lbl_8041AD14
lbl_8041AC50:
/* 8041AC50  80 9C 00 04 */	lwz r4, 4(r28)
/* 8041AC54  80 1A 02 18 */	lwz r0, 0x218(r26)
/* 8041AC58  7C 04 00 00 */	cmpw r4, r0
/* 8041AC5C  40 82 00 14 */	bne lbl_8041AC70
/* 8041AC60  80 7C 00 00 */	lwz r3, 0(r28)
/* 8041AC64  80 1A 02 14 */	lwz r0, 0x214(r26)
/* 8041AC68  7C 03 00 00 */	cmpw r3, r0
/* 8041AC6C  41 82 00 74 */	beq lbl_8041ACE0
lbl_8041AC70:
/* 8041AC70  80 1A 02 24 */	lwz r0, 0x224(r26)
/* 8041AC74  7C 04 00 00 */	cmpw r4, r0
/* 8041AC78  40 82 00 14 */	bne lbl_8041AC8C
/* 8041AC7C  80 7C 00 00 */	lwz r3, 0(r28)
/* 8041AC80  80 1A 02 20 */	lwz r0, 0x220(r26)
/* 8041AC84  7C 03 00 00 */	cmpw r3, r0
/* 8041AC88  41 82 00 58 */	beq lbl_8041ACE0
lbl_8041AC8C:
/* 8041AC8C  80 1A 02 30 */	lwz r0, 0x230(r26)
/* 8041AC90  7C 04 00 00 */	cmpw r4, r0
/* 8041AC94  40 82 00 14 */	bne lbl_8041ACA8
/* 8041AC98  80 7C 00 00 */	lwz r3, 0(r28)
/* 8041AC9C  80 1A 02 2C */	lwz r0, 0x22c(r26)
/* 8041ACA0  7C 03 00 00 */	cmpw r3, r0
/* 8041ACA4  41 82 00 3C */	beq lbl_8041ACE0
lbl_8041ACA8:
/* 8041ACA8  80 1A 02 3C */	lwz r0, 0x23c(r26)
/* 8041ACAC  7C 04 00 00 */	cmpw r4, r0
/* 8041ACB0  40 82 00 14 */	bne lbl_8041ACC4
/* 8041ACB4  80 7C 00 00 */	lwz r3, 0(r28)
/* 8041ACB8  80 1A 02 38 */	lwz r0, 0x238(r26)
/* 8041ACBC  7C 03 00 00 */	cmpw r3, r0
/* 8041ACC0  41 82 00 20 */	beq lbl_8041ACE0
lbl_8041ACC4:
/* 8041ACC4  80 1A 02 48 */	lwz r0, 0x248(r26)
/* 8041ACC8  7C 04 00 00 */	cmpw r4, r0
/* 8041ACCC  40 82 00 1C */	bne lbl_8041ACE8
/* 8041ACD0  80 7C 00 00 */	lwz r3, 0(r28)
/* 8041ACD4  80 1A 02 44 */	lwz r0, 0x244(r26)
/* 8041ACD8  7C 03 00 00 */	cmpw r3, r0
/* 8041ACDC  40 82 00 0C */	bne lbl_8041ACE8
lbl_8041ACE0:
/* 8041ACE0  38 60 00 01 */	li r3, 1
/* 8041ACE4  48 00 00 30 */	b lbl_8041AD14
lbl_8041ACE8:
/* 8041ACE8  80 BC 00 00 */	lwz r5, 0(r28)
/* 8041ACEC  7F 43 D3 78 */	mr r3, r26
/* 8041ACF0  80 1C 00 04 */	lwz r0, 4(r28)
/* 8041ACF4  7F 64 DB 78 */	mr r4, r27
/* 8041ACF8  90 A1 00 08 */	stw r5, 8(r1)
/* 8041ACFC  7F A6 EB 78 */	mr r6, r29
/* 8041AD00  7F C7 F3 78 */	mr r7, r30
/* 8041AD04  7F E8 FB 78 */	mr r8, r31
/* 8041AD08  90 01 00 0C */	stw r0, 0xc(r1)
/* 8041AD0C  38 A1 00 08 */	addi r5, r1, 8
/* 8041AD10  4B FF FD FD */	bl search_select_unit_cancel_check
lbl_8041AD14:
/* 8041AD14  39 61 00 30 */	addi r11, r1, 0x30
/* 8041AD18  4B C8 01 FD */	bl func_8009AF14
/* 8041AD1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8041AD20  7C 08 03 A6 */	mtlr r0
/* 8041AD24  38 21 00 30 */	addi r1, r1, 0x30
/* 8041AD28  4E 80 00 20 */	blr 
