lbl_805F2F58:
/* 805F2F58  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805F2F5C  7C 08 02 A6 */	mflr r0
/* 805F2F60  90 01 00 44 */	stw r0, 0x44(r1)
/* 805F2F64  39 61 00 40 */	addi r11, r1, 0x40
/* 805F2F68  4B AA 7F 65 */	bl func_8009AECC
/* 805F2F6C  81 05 00 00 */	lwz r8, 0(r5)
/* 805F2F70  7C 7B 1B 78 */	mr r27, r3
/* 805F2F74  80 05 00 04 */	lwz r0, 4(r5)
/* 805F2F78  7C 9C 23 78 */	mr r28, r4
/* 805F2F7C  7C DD 33 78 */	mr r29, r6
/* 805F2F80  7C FE 3B 78 */	mr r30, r7
/* 805F2F84  91 01 00 10 */	stw r8, 0x10(r1)
/* 805F2F88  38 61 00 0C */	addi r3, r1, 0xc
/* 805F2F8C  38 81 00 08 */	addi r4, r1, 8
/* 805F2F90  3B E0 00 00 */	li r31, 0
/* 805F2F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F2F98  80 05 00 08 */	lwz r0, 8(r5)
/* 805F2F9C  38 A1 00 10 */	addi r5, r1, 0x10
/* 805F2FA0  90 01 00 18 */	stw r0, 0x18(r1)
/* 805F2FA4  4B DB 23 C5 */	bl mFI_Wpos2UtNum
/* 805F2FA8  2C 03 00 00 */	cmpwi r3, 0
/* 805F2FAC  41 82 00 4C */	beq lbl_805F2FF8
/* 805F2FB0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F2FB4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F2FB8  3C 63 00 02 */	addis r3, r3, 2
/* 805F2FBC  80 63 60 BC */	lwz r3, 0x60bc(r3)
/* 805F2FC0  28 03 00 00 */	cmplwi r3, 0
/* 805F2FC4  41 82 00 34 */	beq lbl_805F2FF8
/* 805F2FC8  81 83 00 04 */	lwz r12, 4(r3)
/* 805F2FCC  28 0C 00 00 */	cmplwi r12, 0
/* 805F2FD0  41 82 00 28 */	beq lbl_805F2FF8
/* 805F2FD4  7F 63 DB 78 */	mr r3, r27
/* 805F2FD8  7F 84 E3 78 */	mr r4, r28
/* 805F2FDC  7F A7 EB 78 */	mr r7, r29
/* 805F2FE0  7F C8 F3 78 */	mr r8, r30
/* 805F2FE4  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 805F2FE8  80 C1 00 08 */	lwz r6, 8(r1)
/* 805F2FEC  7D 89 03 A6 */	mtctr r12
/* 805F2FF0  4E 80 04 21 */	bctrl 
/* 805F2FF4  7C 7F 1B 78 */	mr r31, r3
lbl_805F2FF8:
/* 805F2FF8  7F E3 FB 78 */	mr r3, r31
/* 805F2FFC  39 61 00 40 */	addi r11, r1, 0x40
/* 805F3000  4B AA 7F 19 */	bl func_8009AF18
/* 805F3004  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805F3008  7C 08 03 A6 */	mtlr r0
/* 805F300C  38 21 00 40 */	addi r1, r1, 0x40
/* 805F3010  4E 80 00 20 */	blr 
