lbl_803F7A44:
/* 803F7A44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F7A48  7C 08 02 A6 */	mflr r0
/* 803F7A4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F7A50  39 61 00 20 */	addi r11, r1, 0x20
/* 803F7A54  4B CA 34 81 */	bl func_8009AED4
/* 803F7A58  7C 7D 1B 79 */	or. r29, r3, r3
/* 803F7A5C  7C 9F 23 78 */	mr r31, r4
/* 803F7A60  3B C0 00 00 */	li r30, 0
/* 803F7A64  41 82 00 78 */	beq lbl_803F7ADC
/* 803F7A68  7F E5 FB 78 */	mr r5, r31
/* 803F7A6C  38 61 00 08 */	addi r3, r1, 8
/* 803F7A70  38 80 20 00 */	li r4, 0x2000
/* 803F7A74  4B FF FE 2D */	bl mCD_check_card
/* 803F7A78  2C 03 00 01 */	cmpwi r3, 1
/* 803F7A7C  40 82 00 60 */	bne lbl_803F7ADC
/* 803F7A80  7F E3 FB 78 */	mr r3, r31
/* 803F7A84  7F A4 EB 78 */	mr r4, r29
/* 803F7A88  38 A0 00 00 */	li r5, 0
/* 803F7A8C  4B C9 8C 71 */	bl CARDMount
/* 803F7A90  2C 03 00 00 */	cmpwi r3, 0
/* 803F7A94  90 61 00 08 */	stw r3, 8(r1)
/* 803F7A98  41 82 00 0C */	beq lbl_803F7AA4
/* 803F7A9C  2C 03 FF FA */	cmpwi r3, -6
/* 803F7AA0  40 82 00 2C */	bne lbl_803F7ACC
lbl_803F7AA4:
/* 803F7AA4  7F E3 FB 78 */	mr r3, r31
/* 803F7AA8  4B C9 82 D1 */	bl CARDCheck
/* 803F7AAC  90 61 00 08 */	stw r3, 8(r1)
/* 803F7AB0  7F E3 FB 78 */	mr r3, r31
/* 803F7AB4  4B FF FF 25 */	bl mCD_get_file_num_com
/* 803F7AB8  7C 60 1B 78 */	mr r0, r3
/* 803F7ABC  7F E3 FB 78 */	mr r3, r31
/* 803F7AC0  7C 1E 03 78 */	mr r30, r0
/* 803F7AC4  4B C9 8D 1D */	bl CARDUnmount
/* 803F7AC8  48 00 00 14 */	b lbl_803F7ADC
lbl_803F7ACC:
/* 803F7ACC  2C 03 FF F3 */	cmpwi r3, -13
/* 803F7AD0  40 82 00 0C */	bne lbl_803F7ADC
/* 803F7AD4  7F E3 FB 78 */	mr r3, r31
/* 803F7AD8  4B C9 8D 09 */	bl CARDUnmount
lbl_803F7ADC:
/* 803F7ADC  7F C3 F3 78 */	mr r3, r30
/* 803F7AE0  39 61 00 20 */	addi r11, r1, 0x20
/* 803F7AE4  4B CA 34 3D */	bl func_8009AF20
/* 803F7AE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F7AEC  7C 08 03 A6 */	mtlr r0
/* 803F7AF0  38 21 00 20 */	addi r1, r1, 0x20
/* 803F7AF4  4E 80 00 20 */	blr 
