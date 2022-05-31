lbl_804C7938:
/* 804C7938  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804C793C  7C 08 02 A6 */	mflr r0
/* 804C7940  90 01 00 74 */	stw r0, 0x74(r1)
/* 804C7944  39 61 00 70 */	addi r11, r1, 0x70
/* 804C7948  4B BD 35 8D */	bl func_8009AED4
/* 804C794C  7C DE 33 78 */	mr r30, r6
/* 804C7950  7C 7D 1B 78 */	mr r29, r3
/* 804C7954  7C BF 2B 78 */	mr r31, r5
/* 804C7958  38 C1 00 08 */	addi r6, r1, 8
/* 804C795C  4B FF FD ED */	bl bIT_common_bury_after
/* 804C7960  2C 1E 00 01 */	cmpwi r30, 1
/* 804C7964  41 82 00 D8 */	beq lbl_804C7A3C
/* 804C7968  2C 03 00 01 */	cmpwi r3, 1
/* 804C796C  41 82 00 6C */	beq lbl_804C79D8
/* 804C7970  40 80 00 08 */	bge lbl_804C7978
/* 804C7974  48 00 00 10 */	b lbl_804C7984
lbl_804C7978:
/* 804C7978  2C 03 00 03 */	cmpwi r3, 3
/* 804C797C  40 80 00 08 */	bge lbl_804C7984
/* 804C7980  48 00 00 90 */	b lbl_804C7A10
lbl_804C7984:
/* 804C7984  80 DF 00 00 */	lwz r6, 0(r31)
/* 804C7988  38 81 00 48 */	addi r4, r1, 0x48
/* 804C798C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C7990  38 A0 00 01 */	li r5, 1
/* 804C7994  A0 61 00 08 */	lhz r3, 8(r1)
/* 804C7998  90 C1 00 48 */	stw r6, 0x48(r1)
/* 804C799C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804C79A0  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C79A4  90 01 00 50 */	stw r0, 0x50(r1)
/* 804C79A8  4B ED FE 89 */	bl mFI_SetFG_common
/* 804C79AC  57 A0 04 3F */	clrlwi. r0, r29, 0x10
/* 804C79B0  41 82 01 20 */	beq lbl_804C7AD0
/* 804C79B4  80 9F 00 00 */	lwz r4, 0(r31)
/* 804C79B8  38 61 00 3C */	addi r3, r1, 0x3c
/* 804C79BC  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C79C0  90 81 00 3C */	stw r4, 0x3c(r1)
/* 804C79C4  90 01 00 40 */	stw r0, 0x40(r1)
/* 804C79C8  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C79CC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C79D0  4B EE 16 09 */	bl mFI_Wpos2DepositON
/* 804C79D4  48 00 00 FC */	b lbl_804C7AD0
lbl_804C79D8:
/* 804C79D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C79DC  A0 81 00 08 */	lhz r4, 8(r1)
/* 804C79E0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C79E4  7F E5 FB 78 */	mr r5, r31
/* 804C79E8  3C 63 00 02 */	addis r3, r3, 2
/* 804C79EC  7F E6 FB 78 */	mr r6, r31
/* 804C79F0  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804C79F4  38 E0 00 83 */	li r7, 0x83
/* 804C79F8  39 00 00 00 */	li r8, 0
/* 804C79FC  80 63 00 00 */	lwz r3, 0(r3)
/* 804C7A00  3C 63 00 01 */	addis r3, r3, 1
/* 804C7A04  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804C7A08  48 00 1A C9 */	bl bIT_actor_drop_entry
/* 804C7A0C  48 00 00 C4 */	b lbl_804C7AD0
lbl_804C7A10:
/* 804C7A10  80 DF 00 00 */	lwz r6, 0(r31)
/* 804C7A14  38 81 00 30 */	addi r4, r1, 0x30
/* 804C7A18  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C7A1C  38 A0 00 01 */	li r5, 1
/* 804C7A20  A0 61 00 08 */	lhz r3, 8(r1)
/* 804C7A24  90 C1 00 30 */	stw r6, 0x30(r1)
/* 804C7A28  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C7A2C  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C7A30  90 01 00 38 */	stw r0, 0x38(r1)
/* 804C7A34  4B ED FD FD */	bl mFI_SetFG_common
/* 804C7A38  48 00 00 98 */	b lbl_804C7AD0
lbl_804C7A3C:
/* 804C7A3C  2C 03 00 00 */	cmpwi r3, 0
/* 804C7A40  41 82 00 14 */	beq lbl_804C7A54
/* 804C7A44  41 80 00 10 */	blt lbl_804C7A54
/* 804C7A48  2C 03 00 03 */	cmpwi r3, 3
/* 804C7A4C  40 80 00 08 */	bge lbl_804C7A54
/* 804C7A50  48 00 00 58 */	b lbl_804C7AA8
lbl_804C7A54:
/* 804C7A54  80 DF 00 00 */	lwz r6, 0(r31)
/* 804C7A58  7F A3 EB 78 */	mr r3, r29
/* 804C7A5C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C7A60  38 81 00 24 */	addi r4, r1, 0x24
/* 804C7A64  38 A0 00 01 */	li r5, 1
/* 804C7A68  90 C1 00 24 */	stw r6, 0x24(r1)
/* 804C7A6C  90 01 00 28 */	stw r0, 0x28(r1)
/* 804C7A70  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C7A74  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804C7A78  4B ED FD B9 */	bl mFI_SetFG_common
/* 804C7A7C  57 A0 04 3F */	clrlwi. r0, r29, 0x10
/* 804C7A80  41 82 00 50 */	beq lbl_804C7AD0
/* 804C7A84  80 9F 00 00 */	lwz r4, 0(r31)
/* 804C7A88  38 61 00 18 */	addi r3, r1, 0x18
/* 804C7A8C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C7A90  90 81 00 18 */	stw r4, 0x18(r1)
/* 804C7A94  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C7A98  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C7A9C  90 01 00 20 */	stw r0, 0x20(r1)
/* 804C7AA0  4B EE 15 39 */	bl mFI_Wpos2DepositON
/* 804C7AA4  48 00 00 2C */	b lbl_804C7AD0
lbl_804C7AA8:
/* 804C7AA8  80 DF 00 00 */	lwz r6, 0(r31)
/* 804C7AAC  38 81 00 0C */	addi r4, r1, 0xc
/* 804C7AB0  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C7AB4  38 A0 00 01 */	li r5, 1
/* 804C7AB8  A0 61 00 08 */	lhz r3, 8(r1)
/* 804C7ABC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804C7AC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C7AC4  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C7AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C7ACC  4B ED FD 65 */	bl mFI_SetFG_common
lbl_804C7AD0:
/* 804C7AD0  39 61 00 70 */	addi r11, r1, 0x70
/* 804C7AD4  4B BD 34 4D */	bl func_8009AF20
/* 804C7AD8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804C7ADC  7C 08 03 A6 */	mtlr r0
/* 804C7AE0  38 21 00 70 */	addi r1, r1, 0x70
/* 804C7AE4  4E 80 00 20 */	blr 
