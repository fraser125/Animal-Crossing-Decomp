lbl_805B892C:
/* 805B892C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B8930  7C 08 02 A6 */	mflr r0
/* 805B8934  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B8938  39 61 00 40 */	addi r11, r1, 0x40
/* 805B893C  4B AE 25 99 */	bl func_8009AED4
/* 805B8940  7C 9F 23 78 */	mr r31, r4
/* 805B8944  7C 7E 1B 78 */	mr r30, r3
/* 805B8948  7F E3 FB 78 */	mr r3, r31
/* 805B894C  4B E2 0C F5 */	bl get_player_actor_withoutCheck
/* 805B8950  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 805B8954  7C 7D 1B 78 */	mr r29, r3
/* 805B8958  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805B895C  38 61 00 14 */	addi r3, r1, 0x14
/* 805B8960  38 81 00 10 */	addi r4, r1, 0x10
/* 805B8964  90 A1 00 24 */	stw r5, 0x24(r1)
/* 805B8968  38 A1 00 24 */	addi r5, r1, 0x24
/* 805B896C  90 01 00 28 */	stw r0, 0x28(r1)
/* 805B8970  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805B8974  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805B8978  4B DE CD E9 */	bl mFI_Wpos2BlockNum
/* 805B897C  80 DD 00 28 */	lwz r6, 0x28(r29)
/* 805B8980  38 61 00 0C */	addi r3, r1, 0xc
/* 805B8984  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 805B8988  38 81 00 08 */	addi r4, r1, 8
/* 805B898C  38 A1 00 18 */	addi r5, r1, 0x18
/* 805B8990  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805B8994  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805B8998  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 805B899C  90 01 00 20 */	stw r0, 0x20(r1)
/* 805B89A0  4B DE CD C1 */	bl mFI_Wpos2BlockNum
/* 805B89A4  7F A4 EB 78 */	mr r4, r29
/* 805B89A8  38 60 00 01 */	li r3, 1
/* 805B89AC  4B DE 18 B9 */	bl mDemo_Check
/* 805B89B0  2C 03 00 00 */	cmpwi r3, 0
/* 805B89B4  40 82 00 58 */	bne lbl_805B8A0C
/* 805B89B8  7F A4 EB 78 */	mr r4, r29
/* 805B89BC  38 60 00 05 */	li r3, 5
/* 805B89C0  4B DE 18 A5 */	bl mDemo_Check
/* 805B89C4  2C 03 00 00 */	cmpwi r3, 0
/* 805B89C8  40 82 00 44 */	bne lbl_805B8A0C
/* 805B89CC  7F A4 EB 78 */	mr r4, r29
/* 805B89D0  38 60 00 10 */	li r3, 0x10
/* 805B89D4  4B DE 18 91 */	bl mDemo_Check
/* 805B89D8  2C 03 00 00 */	cmpwi r3, 0
/* 805B89DC  40 82 00 30 */	bne lbl_805B8A0C
/* 805B89E0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805B89E4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805B89E8  7C 03 00 00 */	cmpw r3, r0
/* 805B89EC  40 82 00 14 */	bne lbl_805B8A00
/* 805B89F0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805B89F4  80 01 00 08 */	lwz r0, 8(r1)
/* 805B89F8  7C 03 00 00 */	cmpw r3, r0
/* 805B89FC  41 82 00 10 */	beq lbl_805B8A0C
lbl_805B8A00:
/* 805B8A00  7F C3 F3 78 */	mr r3, r30
/* 805B8A04  4B DB BA 3D */	bl Actor_delete
/* 805B8A08  48 00 00 18 */	b lbl_805B8A20
lbl_805B8A0C:
/* 805B8A0C  81 9E 02 A0 */	lwz r12, 0x2a0(r30)
/* 805B8A10  7F C3 F3 78 */	mr r3, r30
/* 805B8A14  7F E4 FB 78 */	mr r4, r31
/* 805B8A18  7D 89 03 A6 */	mtctr r12
/* 805B8A1C  4E 80 04 21 */	bctrl 
lbl_805B8A20:
/* 805B8A20  39 61 00 40 */	addi r11, r1, 0x40
/* 805B8A24  4B AE 24 FD */	bl func_8009AF20
/* 805B8A28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B8A2C  7C 08 03 A6 */	mtlr r0
/* 805B8A30  38 21 00 40 */	addi r1, r1, 0x40
/* 805B8A34  4E 80 00 20 */	blr 
