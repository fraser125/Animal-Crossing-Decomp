lbl_804205B4:
/* 804205B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804205B8  7C 08 02 A6 */	mflr r0
/* 804205BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804205C0  39 61 00 20 */	addi r11, r1, 0x20
/* 804205C4  4B C7 A9 11 */	bl func_8009AED4
/* 804205C8  7C 9E 23 78 */	mr r30, r4
/* 804205CC  7C 7D 1B 78 */	mr r29, r3
/* 804205D0  80 64 00 00 */	lwz r3, 0(r4)
/* 804205D4  3B E0 00 02 */	li r31, 2
/* 804205D8  4B F7 D6 15 */	bl mEv_check_keep
/* 804205DC  2C 03 00 00 */	cmpwi r3, 0
/* 804205E0  41 82 00 34 */	beq lbl_80420614
/* 804205E4  80 9E 00 00 */	lwz r4, 0(r30)
/* 804205E8  7F A3 EB 78 */	mr r3, r29
/* 804205EC  38 A0 00 09 */	li r5, 9
/* 804205F0  38 C0 00 00 */	li r6, 0
/* 804205F4  4B FF D4 89 */	bl title_fade
/* 804205F8  2C 03 00 00 */	cmpwi r3, 0
/* 804205FC  41 82 00 14 */	beq lbl_80420610
/* 80420600  80 7E 00 00 */	lwz r3, 0(r30)
/* 80420604  4B F7 D5 B5 */	bl mEv_clear_keep
/* 80420608  3B E0 00 01 */	li r31, 1
/* 8042060C  48 00 00 08 */	b lbl_80420614
lbl_80420610:
/* 80420610  3B E0 00 00 */	li r31, 0
lbl_80420614:
/* 80420614  2C 1F 00 00 */	cmpwi r31, 0
/* 80420618  41 82 00 0C */	beq lbl_80420624
/* 8042061C  38 60 00 73 */	li r3, 0x73
/* 80420620  4B FF CD 4D */	bl delete_effect
lbl_80420624:
/* 80420624  7F E3 FB 78 */	mr r3, r31
/* 80420628  39 61 00 20 */	addi r11, r1, 0x20
/* 8042062C  4B C7 A8 F5 */	bl func_8009AF20
/* 80420630  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80420634  7C 08 03 A6 */	mtlr r0
/* 80420638  38 21 00 20 */	addi r1, r1, 0x20
/* 8042063C  4E 80 00 20 */	blr 
