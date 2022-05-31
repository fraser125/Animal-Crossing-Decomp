lbl_804F9770:
/* 804F9770  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804F9774  7C 08 02 A6 */	mflr r0
/* 804F9778  90 01 00 44 */	stw r0, 0x44(r1)
/* 804F977C  39 61 00 40 */	addi r11, r1, 0x40
/* 804F9780  4B BA 17 51 */	bl func_8009AED0
/* 804F9784  80 C3 0D 60 */	lwz r6, 0xd60(r3)
/* 804F9788  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804F978C  80 03 0D 64 */	lwz r0, 0xd64(r3)
/* 804F9790  7C 9F 23 78 */	mr r31, r4
/* 804F9794  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 804F9798  7C 7E 1B 78 */	mr r30, r3
/* 804F979C  90 C3 0D 18 */	stw r6, 0xd18(r3)
/* 804F97A0  38 A1 00 14 */	addi r5, r1, 0x14
/* 804F97A4  38 C1 00 10 */	addi r6, r1, 0x10
/* 804F97A8  38 80 00 59 */	li r4, 0x59
/* 804F97AC  90 03 0D 1C */	stw r0, 0xd1c(r3)
/* 804F97B0  80 03 0D 68 */	lwz r0, 0xd68(r3)
/* 804F97B4  90 03 0D 20 */	stw r0, 0xd20(r3)
/* 804F97B8  A0 03 0D 6C */	lhz r0, 0xd6c(r3)
/* 804F97BC  B0 03 0D 24 */	sth r0, 0xd24(r3)
/* 804F97C0  80 03 0D 70 */	lwz r0, 0xd70(r3)
/* 804F97C4  90 03 0D 28 */	stw r0, 0xd28(r3)
/* 804F97C8  4B FE 07 99 */	bl Player_actor_SetupItem_Base1
/* 804F97CC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F97D0  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F97D4  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F97D8  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F97DC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F97E0  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F97E4  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804F97E8  7F C3 F3 78 */	mr r3, r30
/* 804F97EC  FC 40 08 90 */	fmr f2, f1
/* 804F97F0  7F E4 FB 78 */	mr r4, r31
/* 804F97F4  38 A0 00 59 */	li r5, 0x59
/* 804F97F8  38 C0 00 59 */	li r6, 0x59
/* 804F97FC  38 E0 00 00 */	li r7, 0
/* 804F9800  39 00 00 00 */	li r8, 0
/* 804F9804  4B FD D0 0D */	bl Player_actor_InitAnimation_Base2
/* 804F9808  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F980C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804F9810  3F A3 00 02 */	addis r29, r3, 2
/* 804F9814  80 1D 60 80 */	lwz r0, 0x6080(r29)
/* 804F9818  28 00 00 00 */	cmplwi r0, 0
/* 804F981C  41 82 00 5C */	beq lbl_804F9878
/* 804F9820  A3 9E 0D 24 */	lhz r28, 0xd24(r30)
/* 804F9824  38 61 00 0C */	addi r3, r1, 0xc
/* 804F9828  80 DE 0D 18 */	lwz r6, 0xd18(r30)
/* 804F982C  38 81 00 08 */	addi r4, r1, 8
/* 804F9830  80 1E 0D 1C */	lwz r0, 0xd1c(r30)
/* 804F9834  38 A1 00 18 */	addi r5, r1, 0x18
/* 804F9838  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804F983C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804F9840  80 1E 0D 20 */	lwz r0, 0xd20(r30)
/* 804F9844  90 01 00 20 */	stw r0, 0x20(r1)
/* 804F9848  4B EA BB 21 */	bl mFI_Wpos2UtNum
/* 804F984C  28 1C 00 00 */	cmplwi r28, 0
/* 804F9850  41 82 00 28 */	beq lbl_804F9878
/* 804F9854  80 DD 60 80 */	lwz r6, 0x6080(r29)
/* 804F9858  7F E3 FB 78 */	mr r3, r31
/* 804F985C  7F 84 E3 78 */	mr r4, r28
/* 804F9860  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 804F9864  81 86 00 3C */	lwz r12, 0x3c(r6)
/* 804F9868  38 E0 00 00 */	li r7, 0
/* 804F986C  80 C1 00 08 */	lwz r6, 8(r1)
/* 804F9870  7D 89 03 A6 */	mtctr r12
/* 804F9874  4E 80 04 21 */	bctrl 
lbl_804F9878:
/* 804F9878  7F C3 F3 78 */	mr r3, r30
/* 804F987C  7F E4 FB 78 */	mr r4, r31
/* 804F9880  4B FD C0 79 */	bl Player_actor_setup_main_Base
/* 804F9884  39 61 00 40 */	addi r11, r1, 0x40
/* 804F9888  4B BA 16 95 */	bl func_8009AF1C
/* 804F988C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804F9890  7C 08 03 A6 */	mtlr r0
/* 804F9894  38 21 00 40 */	addi r1, r1, 0x40
/* 804F9898  4E 80 00 20 */	blr 
