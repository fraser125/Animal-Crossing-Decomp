lbl_805B19EC:
/* 805B19EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B19F0  7C 08 02 A6 */	mflr r0
/* 805B19F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B19F8  39 61 00 40 */	addi r11, r1, 0x40
/* 805B19FC  4B AE 94 D9 */	bl func_8009AED4
/* 805B1A00  7C 9F 23 78 */	mr r31, r4
/* 805B1A04  7C 7E 1B 78 */	mr r30, r3
/* 805B1A08  7F E3 FB 78 */	mr r3, r31
/* 805B1A0C  4B E2 7C 35 */	bl get_player_actor_withoutCheck
/* 805B1A10  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 805B1A14  7C 7D 1B 78 */	mr r29, r3
/* 805B1A18  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805B1A1C  38 61 00 14 */	addi r3, r1, 0x14
/* 805B1A20  38 81 00 10 */	addi r4, r1, 0x10
/* 805B1A24  90 A1 00 24 */	stw r5, 0x24(r1)
/* 805B1A28  38 A1 00 24 */	addi r5, r1, 0x24
/* 805B1A2C  90 01 00 28 */	stw r0, 0x28(r1)
/* 805B1A30  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805B1A34  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805B1A38  4B DF 3D 29 */	bl mFI_Wpos2BlockNum
/* 805B1A3C  80 DD 00 28 */	lwz r6, 0x28(r29)
/* 805B1A40  38 61 00 0C */	addi r3, r1, 0xc
/* 805B1A44  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 805B1A48  38 81 00 08 */	addi r4, r1, 8
/* 805B1A4C  38 A1 00 18 */	addi r5, r1, 0x18
/* 805B1A50  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805B1A54  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805B1A58  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 805B1A5C  90 01 00 20 */	stw r0, 0x20(r1)
/* 805B1A60  4B DF 3D 01 */	bl mFI_Wpos2BlockNum
/* 805B1A64  7F A4 EB 78 */	mr r4, r29
/* 805B1A68  38 60 00 01 */	li r3, 1
/* 805B1A6C  4B DE 87 F9 */	bl mDemo_Check
/* 805B1A70  2C 03 00 00 */	cmpwi r3, 0
/* 805B1A74  40 82 00 58 */	bne lbl_805B1ACC
/* 805B1A78  7F A4 EB 78 */	mr r4, r29
/* 805B1A7C  38 60 00 05 */	li r3, 5
/* 805B1A80  4B DE 87 E5 */	bl mDemo_Check
/* 805B1A84  2C 03 00 00 */	cmpwi r3, 0
/* 805B1A88  40 82 00 44 */	bne lbl_805B1ACC
/* 805B1A8C  7F A4 EB 78 */	mr r4, r29
/* 805B1A90  38 60 00 10 */	li r3, 0x10
/* 805B1A94  4B DE 87 D1 */	bl mDemo_Check
/* 805B1A98  2C 03 00 00 */	cmpwi r3, 0
/* 805B1A9C  40 82 00 30 */	bne lbl_805B1ACC
/* 805B1AA0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805B1AA4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805B1AA8  7C 03 00 00 */	cmpw r3, r0
/* 805B1AAC  40 82 00 14 */	bne lbl_805B1AC0
/* 805B1AB0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805B1AB4  80 01 00 08 */	lwz r0, 8(r1)
/* 805B1AB8  7C 03 00 00 */	cmpw r3, r0
/* 805B1ABC  41 82 00 10 */	beq lbl_805B1ACC
lbl_805B1AC0:
/* 805B1AC0  7F C3 F3 78 */	mr r3, r30
/* 805B1AC4  4B DC 29 7D */	bl Actor_delete
/* 805B1AC8  48 00 00 18 */	b lbl_805B1AE0
lbl_805B1ACC:
/* 805B1ACC  81 9E 02 A0 */	lwz r12, 0x2a0(r30)
/* 805B1AD0  7F C3 F3 78 */	mr r3, r30
/* 805B1AD4  7F E4 FB 78 */	mr r4, r31
/* 805B1AD8  7D 89 03 A6 */	mtctr r12
/* 805B1ADC  4E 80 04 21 */	bctrl 
lbl_805B1AE0:
/* 805B1AE0  39 61 00 40 */	addi r11, r1, 0x40
/* 805B1AE4  4B AE 94 3D */	bl func_8009AF20
/* 805B1AE8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B1AEC  7C 08 03 A6 */	mtlr r0
/* 805B1AF0  38 21 00 40 */	addi r1, r1, 0x40
/* 805B1AF4  4E 80 00 20 */	blr 
