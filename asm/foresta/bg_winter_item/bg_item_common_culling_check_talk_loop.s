lbl_804C4F20:
/* 804C4F20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C4F24  7C 08 02 A6 */	mflr r0
/* 804C4F28  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C4F2C  39 61 00 30 */	addi r11, r1, 0x30
/* 804C4F30  4B BD 5F 99 */	bl func_8009AEC8
/* 804C4F34  3C C0 80 66 */	lis r6, data_8065F050@ha /* 0x8065F050@ha */
/* 804C4F38  7C 7A 1B 78 */	mr r26, r3
/* 804C4F3C  7C 9B 23 78 */	mr r27, r4
/* 804C4F40  7C BC 2B 78 */	mr r28, r5
/* 804C4F44  3B A6 F0 50 */	addi r29, r6, data_8065F050@l /* 0x8065F050@l */
/* 804C4F48  3B C0 00 00 */	li r30, 0
/* 804C4F4C  3B E0 00 01 */	li r31, 1
/* 804C4F50  48 00 00 48 */	b lbl_804C4F98
lbl_804C4F54:
/* 804C4F54  7F 83 E3 78 */	mr r3, r28
/* 804C4F58  4B F4 73 01 */	bl Matrix_put
/* 804C4F5C  7F A3 EB 78 */	mr r3, r29
/* 804C4F60  38 81 00 08 */	addi r4, r1, 8
/* 804C4F64  4B F4 84 A1 */	bl Matrix_Position
/* 804C4F68  7F 43 D3 78 */	mr r3, r26
/* 804C4F6C  7F 64 DB 78 */	mr r4, r27
/* 804C4F70  38 A1 00 08 */	addi r5, r1, 8
/* 804C4F74  4B FF FE A5 */	bl bg_item_common_culling_check_talk
/* 804C4F78  2C 03 00 01 */	cmpwi r3, 1
/* 804C4F7C  40 82 00 0C */	bne lbl_804C4F88
/* 804C4F80  9B DC 00 46 */	stb r30, 0x46(r28)
/* 804C4F84  48 00 00 08 */	b lbl_804C4F8C
lbl_804C4F88:
/* 804C4F88  9B FC 00 46 */	stb r31, 0x46(r28)
lbl_804C4F8C:
/* 804C4F8C  A8 1C 00 44 */	lha r0, 0x44(r28)
/* 804C4F90  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804C4F94  7F 9C 02 14 */	add r28, r28, r0
lbl_804C4F98:
/* 804C4F98  A8 1C 00 44 */	lha r0, 0x44(r28)
/* 804C4F9C  2C 00 01 00 */	cmpwi r0, 0x100
/* 804C4FA0  40 82 FF B4 */	bne lbl_804C4F54
/* 804C4FA4  39 61 00 30 */	addi r11, r1, 0x30
/* 804C4FA8  4B BD 5F 6D */	bl func_8009AF14
/* 804C4FAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C4FB0  7C 08 03 A6 */	mtlr r0
/* 804C4FB4  38 21 00 30 */	addi r1, r1, 0x30
/* 804C4FB8  4E 80 00 20 */	blr 
