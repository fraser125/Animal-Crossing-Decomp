lbl_805B6C40:
/* 805B6C40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B6C44  7C 08 02 A6 */	mflr r0
/* 805B6C48  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B6C4C  39 61 00 20 */	addi r11, r1, 0x20
/* 805B6C50  4B AE 42 85 */	bl func_8009AED4
/* 805B6C54  7C 7F 1B 78 */	mr r31, r3
/* 805B6C58  83 C3 02 B0 */	lwz r30, 0x2b0(r3)
/* 805B6C5C  7C 9D 23 78 */	mr r29, r4
/* 805B6C60  38 60 00 03 */	li r3, 3
/* 805B6C64  7F E4 FB 78 */	mr r4, r31
/* 805B6C68  4B DE 35 FD */	bl mDemo_Check
/* 805B6C6C  2C 03 00 00 */	cmpwi r3, 0
/* 805B6C70  41 82 00 2C */	beq lbl_805B6C9C
/* 805B6C74  2C 1E 00 04 */	cmpwi r30, 4
/* 805B6C78  40 82 00 14 */	bne lbl_805B6C8C
/* 805B6C7C  3C 80 80 65 */	lis r4, lit_599@ha /* 0x8064A9E0@ha */
/* 805B6C80  7F E3 FB 78 */	mr r3, r31
/* 805B6C84  C0 24 A9 E0 */	lfs f1, lit_599@l(r4)  /* 0x8064A9E0@l */
/* 805B6C88  4B FF FD E1 */	bl aNW_setup_animation
lbl_805B6C8C:
/* 805B6C8C  7F E3 FB 78 */	mr r3, r31
/* 805B6C90  38 80 00 01 */	li r4, 1
/* 805B6C94  48 00 01 D1 */	bl aNW_setup_action
/* 805B6C98  48 00 00 94 */	b lbl_805B6D2C
lbl_805B6C9C:
/* 805B6C9C  7F E4 FB 78 */	mr r4, r31
/* 805B6CA0  38 60 00 08 */	li r3, 8
/* 805B6CA4  4B DE 35 C1 */	bl mDemo_Check
/* 805B6CA8  2C 03 00 00 */	cmpwi r3, 0
/* 805B6CAC  40 82 00 80 */	bne lbl_805B6D2C
/* 805B6CB0  7F E3 FB 78 */	mr r3, r31
/* 805B6CB4  7F A4 EB 78 */	mr r4, r29
/* 805B6CB8  4B FF FC 51 */	bl aNW_check_open
/* 805B6CBC  2C 03 00 02 */	cmpwi r3, 2
/* 805B6CC0  40 82 00 40 */	bne lbl_805B6D00
/* 805B6CC4  4B FF FE ED */	bl aNW_check_opend
/* 805B6CC8  2C 03 00 00 */	cmpwi r3, 0
/* 805B6CCC  41 82 00 1C */	beq lbl_805B6CE8
/* 805B6CD0  3C 60 80 5B */	lis r3, aNW_open_door_demo_ct@ha /* 0x805B6B30@ha */
/* 805B6CD4  7F E4 FB 78 */	mr r4, r31
/* 805B6CD8  38 A3 6B 30 */	addi r5, r3, aNW_open_door_demo_ct@l /* 0x805B6B30@l */
/* 805B6CDC  38 60 00 03 */	li r3, 3
/* 805B6CE0  4B DE 34 7D */	bl mDemo_Request
/* 805B6CE4  48 00 00 48 */	b lbl_805B6D2C
lbl_805B6CE8:
/* 805B6CE8  3C 60 80 5B */	lis r3, aNW_talk_door_demo_ct@ha /* 0x805B6B64@ha */
/* 805B6CEC  7F E4 FB 78 */	mr r4, r31
/* 805B6CF0  38 A3 6B 64 */	addi r5, r3, aNW_talk_door_demo_ct@l /* 0x805B6B64@l */
/* 805B6CF4  38 60 00 08 */	li r3, 8
/* 805B6CF8  4B DE 34 65 */	bl mDemo_Request
/* 805B6CFC  48 00 00 30 */	b lbl_805B6D2C
lbl_805B6D00:
/* 805B6D00  2C 03 00 03 */	cmpwi r3, 3
/* 805B6D04  40 82 00 28 */	bne lbl_805B6D2C
/* 805B6D08  2C 1E 00 04 */	cmpwi r30, 4
/* 805B6D0C  40 82 00 14 */	bne lbl_805B6D20
/* 805B6D10  3C 80 80 65 */	lis r4, lit_599@ha /* 0x8064A9E0@ha */
/* 805B6D14  7F E3 FB 78 */	mr r3, r31
/* 805B6D18  C0 24 A9 E0 */	lfs f1, lit_599@l(r4)  /* 0x8064A9E0@l */
/* 805B6D1C  4B FF FD 4D */	bl aNW_setup_animation
lbl_805B6D20:
/* 805B6D20  7F E3 FB 78 */	mr r3, r31
/* 805B6D24  38 80 00 02 */	li r4, 2
/* 805B6D28  48 00 01 3D */	bl aNW_setup_action
lbl_805B6D2C:
/* 805B6D2C  39 61 00 20 */	addi r11, r1, 0x20
/* 805B6D30  4B AE 41 F1 */	bl func_8009AF20
/* 805B6D34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B6D38  7C 08 03 A6 */	mtlr r0
/* 805B6D3C  38 21 00 20 */	addi r1, r1, 0x20
/* 805B6D40  4E 80 00 20 */	blr 
