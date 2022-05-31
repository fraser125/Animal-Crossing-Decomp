lbl_804C88F4:
/* 804C88F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C88F8  7C 08 02 A6 */	mflr r0
/* 804C88FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C8900  39 61 00 30 */	addi r11, r1, 0x30
/* 804C8904  4B BD 25 CD */	bl func_8009AED0
/* 804C8908  7C 9D 23 78 */	mr r29, r4
/* 804C890C  7C 7C 1B 78 */	mr r28, r3
/* 804C8910  80 E4 00 00 */	lwz r7, 0(r4)
/* 804C8914  7C BE 2B 78 */	mr r30, r5
/* 804C8918  80 04 00 04 */	lwz r0, 4(r4)
/* 804C891C  7C DF 33 78 */	mr r31, r6
/* 804C8920  38 61 00 0C */	addi r3, r1, 0xc
/* 804C8924  38 81 00 08 */	addi r4, r1, 8
/* 804C8928  90 E1 00 10 */	stw r7, 0x10(r1)
/* 804C892C  38 A1 00 10 */	addi r5, r1, 0x10
/* 804C8930  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C8934  80 1D 00 08 */	lwz r0, 8(r29)
/* 804C8938  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C893C  4B ED CA 2D */	bl mFI_Wpos2UtNum
/* 804C8940  2C 03 00 00 */	cmpwi r3, 0
/* 804C8944  41 82 00 28 */	beq lbl_804C896C
/* 804C8948  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C894C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804C8950  80 A1 00 08 */	lwz r5, 8(r1)
/* 804C8954  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C8958  38 C0 00 00 */	li r6, 0
/* 804C895C  4B ED EC F1 */	bl mFI_UtNumtoFGSet_common
/* 804C8960  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804C8964  80 81 00 08 */	lwz r4, 8(r1)
/* 804C8968  4B EE 06 29 */	bl mFI_UtNum2DepositOFF
lbl_804C896C:
/* 804C896C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C8970  7F 84 E3 78 */	mr r4, r28
/* 804C8974  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C8978  7F A5 EB 78 */	mr r5, r29
/* 804C897C  3C 63 00 02 */	addis r3, r3, 2
/* 804C8980  7F C6 F3 78 */	mr r6, r30
/* 804C8984  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804C8988  7F E7 FB 78 */	mr r7, r31
/* 804C898C  39 00 00 01 */	li r8, 1
/* 804C8990  39 20 00 00 */	li r9, 0
/* 804C8994  80 63 00 00 */	lwz r3, 0(r3)
/* 804C8998  3C 63 00 01 */	addis r3, r3, 1
/* 804C899C  38 63 37 B0 */	addi r3, r3, 0x37b0
/* 804C89A0  48 00 00 71 */	bl bIT_actor_hole_effect_entry
/* 804C89A4  39 61 00 30 */	addi r11, r1, 0x30
/* 804C89A8  4B BD 25 75 */	bl func_8009AF1C
/* 804C89AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C89B0  7C 08 03 A6 */	mtlr r0
/* 804C89B4  38 21 00 30 */	addi r1, r1, 0x30
/* 804C89B8  4E 80 00 20 */	blr 
