lbl_80622CF4:
/* 80622CF4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80622CF8  7C 08 02 A6 */	mflr r0
/* 80622CFC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80622D00  39 61 00 50 */	addi r11, r1, 0x50
/* 80622D04  4B A7 81 C1 */	bl func_8009AEC4
/* 80622D08  3D 40 81 14 */	lis r10, common_data@ha /* 0x81138538@ha */
/* 80622D0C  7C 79 1B 78 */	mr r25, r3
/* 80622D10  38 6A 85 38 */	addi r3, r10, common_data@l /* 0x81138538@l */
/* 80622D14  7C 9A 23 78 */	mr r26, r4
/* 80622D18  3F E3 00 02 */	addis r31, r3, 2
/* 80622D1C  7C DB 33 78 */	mr r27, r6
/* 80622D20  80 1F 60 9C */	lwz r0, 0x609c(r31)
/* 80622D24  7C FC 3B 78 */	mr r28, r7
/* 80622D28  7D 1D 43 78 */	mr r29, r8
/* 80622D2C  7D 3E 4B 78 */	mr r30, r9
/* 80622D30  28 00 00 00 */	cmplwi r0, 0
/* 80622D34  41 82 00 24 */	beq lbl_80622D58
/* 80622D38  81 79 00 00 */	lwz r11, 0(r25)
/* 80622D3C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80622D40  81 59 00 04 */	lwz r10, 4(r25)
/* 80622D44  80 19 00 08 */	lwz r0, 8(r25)
/* 80622D48  91 61 00 1C */	stw r11, 0x1c(r1)
/* 80622D4C  91 41 00 20 */	stw r10, 0x20(r1)
/* 80622D50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80622D54  4B FF F8 AD */	bl eTumble_CallEffect
lbl_80622D58:
/* 80622D58  80 79 00 00 */	lwz r3, 0(r25)
/* 80622D5C  7F 66 DB 78 */	mr r6, r27
/* 80622D60  80 B9 00 04 */	lwz r5, 4(r25)
/* 80622D64  7F 88 E3 78 */	mr r8, r28
/* 80622D68  80 19 00 08 */	lwz r0, 8(r25)
/* 80622D6C  7F 49 D3 78 */	mr r9, r26
/* 80622D70  90 61 00 10 */	stw r3, 0x10(r1)
/* 80622D74  7F AA EB 78 */	mr r10, r29
/* 80622D78  38 81 00 10 */	addi r4, r1, 0x10
/* 80622D7C  38 60 00 35 */	li r3, 0x35
/* 80622D80  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80622D84  38 A0 00 00 */	li r5, 0
/* 80622D88  38 E0 00 00 */	li r7, 0
/* 80622D8C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80622D90  93 C1 00 08 */	stw r30, 8(r1)
/* 80622D94  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 80622D98  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 80622D9C  7D 89 03 A6 */	mtctr r12
/* 80622DA0  4E 80 04 21 */	bctrl 
/* 80622DA4  39 61 00 50 */	addi r11, r1, 0x50
/* 80622DA8  4B A7 81 69 */	bl func_8009AF10
/* 80622DAC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80622DB0  7C 08 03 A6 */	mtlr r0
/* 80622DB4  38 21 00 50 */	addi r1, r1, 0x50
/* 80622DB8  4E 80 00 20 */	blr 
