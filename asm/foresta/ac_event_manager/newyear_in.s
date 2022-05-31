lbl_804209A4:
/* 804209A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804209A8  7C 08 02 A6 */	mflr r0
/* 804209AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804209B0  39 61 00 20 */	addi r11, r1, 0x20
/* 804209B4  4B C7 A5 21 */	bl func_8009AED4
/* 804209B8  7C 7D 1B 78 */	mr r29, r3
/* 804209BC  7C 9E 23 78 */	mr r30, r4
/* 804209C0  38 A0 00 05 */	li r5, 5
/* 804209C4  4B FF C1 ED */	bl show_actor_at_wade_checkless
/* 804209C8  7C 7F 1B 78 */	mr r31, r3
/* 804209CC  7F A3 EB 78 */	mr r3, r29
/* 804209D0  7F C4 F3 78 */	mr r4, r30
/* 804209D4  38 A0 00 07 */	li r5, 7
/* 804209D8  4B FF C1 D9 */	bl show_actor_at_wade_checkless
/* 804209DC  3C 1F 00 01 */	addis r0, r31, 1
/* 804209E0  28 00 FF FF */	cmplwi r0, 0xffff
/* 804209E4  41 82 00 10 */	beq lbl_804209F4
/* 804209E8  3C 03 00 01 */	addis r0, r3, 1
/* 804209EC  28 00 FF FF */	cmplwi r0, 0xffff
/* 804209F0  40 82 00 0C */	bne lbl_804209FC
lbl_804209F4:
/* 804209F4  38 60 00 02 */	li r3, 2
/* 804209F8  48 00 00 20 */	b lbl_80420A18
lbl_804209FC:
/* 804209FC  28 1F 00 00 */	cmplwi r31, 0
/* 80420A00  41 82 00 14 */	beq lbl_80420A14
/* 80420A04  28 03 00 00 */	cmplwi r3, 0
/* 80420A08  41 82 00 0C */	beq lbl_80420A14
/* 80420A0C  38 60 00 01 */	li r3, 1
/* 80420A10  48 00 00 08 */	b lbl_80420A18
lbl_80420A14:
/* 80420A14  38 60 00 00 */	li r3, 0
lbl_80420A18:
/* 80420A18  39 61 00 20 */	addi r11, r1, 0x20
/* 80420A1C  4B C7 A5 05 */	bl func_8009AF20
/* 80420A20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80420A24  7C 08 03 A6 */	mtlr r0
/* 80420A28  38 21 00 20 */	addi r1, r1, 0x20
/* 80420A2C  4E 80 00 20 */	blr 
