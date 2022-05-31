lbl_804969D0:
/* 804969D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804969D4  7C 08 02 A6 */	mflr r0
/* 804969D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804969DC  39 61 00 30 */	addi r11, r1, 0x30
/* 804969E0  4B C0 44 F5 */	bl func_8009AED4
/* 804969E4  7C 7D 1B 78 */	mr r29, r3
/* 804969E8  7C 9E 23 78 */	mr r30, r4
/* 804969EC  3B E0 00 00 */	li r31, 0
/* 804969F0  7C A3 2B 78 */	mr r3, r5
/* 804969F4  4B F4 2C 4D */	bl get_player_actor_withoutCheck
/* 804969F8  28 03 00 00 */	cmplwi r3, 0
/* 804969FC  41 82 00 30 */	beq lbl_80496A2C
/* 80496A00  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 80496A04  7F C4 F3 78 */	mr r4, r30
/* 80496A08  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80496A0C  38 A1 00 08 */	addi r5, r1, 8
/* 80496A10  90 C1 00 08 */	stw r6, 8(r1)
/* 80496A14  90 01 00 0C */	stw r0, 0xc(r1)
/* 80496A18  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80496A1C  7F A3 EB 78 */	mr r3, r29
/* 80496A20  90 01 00 10 */	stw r0, 0x10(r1)
/* 80496A24  4B F0 ED 3D */	bl mFI_Wpos2BlockNum
/* 80496A28  7C 7F 1B 78 */	mr r31, r3
lbl_80496A2C:
/* 80496A2C  7F E3 FB 78 */	mr r3, r31
/* 80496A30  39 61 00 30 */	addi r11, r1, 0x30
/* 80496A34  4B C0 44 ED */	bl func_8009AF20
/* 80496A38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80496A3C  7C 08 03 A6 */	mtlr r0
/* 80496A40  38 21 00 30 */	addi r1, r1, 0x30
/* 80496A44  4E 80 00 20 */	blr 
