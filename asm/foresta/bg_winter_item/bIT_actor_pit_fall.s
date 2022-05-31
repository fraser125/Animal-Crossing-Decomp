lbl_804C5248:
/* 804C5248  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C524C  7C 08 02 A6 */	mflr r0
/* 804C5250  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C5254  39 61 00 40 */	addi r11, r1, 0x40
/* 804C5258  4B BD 5C 7D */	bl func_8009AED4
/* 804C525C  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 804C5260  7C 7F 1B 78 */	mr r31, r3
/* 804C5264  38 67 85 38 */	addi r3, r7, common_data@l /* 0x81138538@l */
/* 804C5268  7C DD 33 78 */	mr r29, r6
/* 804C526C  3C C3 00 02 */	addis r6, r3, 2
/* 804C5270  38 61 00 20 */	addi r3, r1, 0x20
/* 804C5274  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 804C5278  83 C6 00 00 */	lwz r30, 0(r6)
/* 804C527C  4B EE 02 01 */	bl mFI_UtNum2CenterWpos
/* 804C5280  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 804C5284  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646144@ha */
/* 804C5288  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 804C528C  38 83 61 44 */	addi r4, r3, lit_664@l /* 0x80646144@l */
/* 804C5290  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804C5294  38 61 00 14 */	addi r3, r1, 0x14
/* 804C5298  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804C529C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804C52A0  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804C52A4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C52A8  4B EC A6 F1 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804C52AC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804C52B0  38 1F FF D6 */	addi r0, r31, -42
/* 804C52B4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 804C52B8  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 804C52BC  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 804C52C0  38 1F 00 43 */	addi r0, r31, 0x43
/* 804C52C4  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 804C52C8  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 804C52CC  90 81 00 08 */	stw r4, 8(r1)
/* 804C52D0  38 81 00 08 */	addi r4, r1, 8
/* 804C52D4  38 A0 00 00 */	li r5, 0
/* 804C52D8  90 E1 00 0C */	stw r7, 0xc(r1)
/* 804C52DC  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804C52E0  4B EE 25 51 */	bl mFI_SetFG_common
/* 804C52E4  3C 7E 00 01 */	addis r3, r30, 1
/* 804C52E8  38 1F 00 11 */	addi r0, r31, 0x11
/* 804C52EC  7F A7 EB 78 */	mr r7, r29
/* 804C52F0  38 C1 00 20 */	addi r6, r1, 0x20
/* 804C52F4  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 804C52F8  38 80 00 01 */	li r4, 1
/* 804C52FC  38 63 25 DC */	addi r3, r3, 0x25dc
/* 804C5300  4B FF EA 19 */	bl bIT_actor_pit_entry
/* 804C5304  38 60 00 00 */	li r3, 0
/* 804C5308  39 61 00 40 */	addi r11, r1, 0x40
/* 804C530C  4B BD 5C 15 */	bl func_8009AF20
/* 804C5310  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C5314  7C 08 03 A6 */	mtlr r0
/* 804C5318  38 21 00 40 */	addi r1, r1, 0x40
/* 804C531C  4E 80 00 20 */	blr 
