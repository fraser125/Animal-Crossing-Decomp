lbl_80402A00:
/* 80402A00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80402A04  7C 08 02 A6 */	mflr r0
/* 80402A08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80402A0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80402A10  4B C9 84 C1 */	bl func_8009AED0
/* 80402A14  7C 7C 1B 78 */	mr r28, r3
/* 80402A18  3C 60 80 66 */	lis r3, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 80402A1C  80 DC 00 00 */	lwz r6, 0(r28)
/* 80402A20  7C 9D 23 78 */	mr r29, r4
/* 80402A24  38 63 E7 08 */	addi r3, r3, l_mcd_file_table@l /* 0x8065E708@l */
/* 80402A28  2C 06 FF FF */	cmpwi r6, -1
/* 80402A2C  41 82 00 70 */	beq lbl_80402A9C
/* 80402A30  1C 86 00 94 */	mulli r4, r6, 0x94
/* 80402A34  80 A3 00 58 */	lwz r5, 0x58(r3)
/* 80402A38  38 7C 11 BC */	addi r3, r28, 0x11bc
/* 80402A3C  3B E4 00 54 */	addi r31, r4, 0x54
/* 80402A40  7F FC FA 14 */	add r31, r28, r31
/* 80402A44  38 80 00 18 */	li r4, 0x18
/* 80402A48  38 FF 00 74 */	addi r7, r31, 0x74
/* 80402A4C  39 1F 00 6C */	addi r8, r31, 0x6c
/* 80402A50  4B FF 6C A9 */	bl mCD_create_file_bg
/* 80402A54  7C 60 1B 78 */	mr r0, r3
/* 80402A58  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80402A5C  7C 1E 03 78 */	mr r30, r0
/* 80402A60  4B FF 78 55 */	bl mCD_TransErrorCode
/* 80402A64  2C 1E 00 01 */	cmpwi r30, 1
/* 80402A68  90 7F 00 78 */	stw r3, 0x78(r31)
/* 80402A6C  40 82 00 14 */	bne lbl_80402A80
/* 80402A70  80 7D 00 00 */	lwz r3, 0(r29)
/* 80402A74  38 03 00 01 */	addi r0, r3, 1
/* 80402A78  90 1D 00 00 */	stw r0, 0(r29)
/* 80402A7C  48 00 00 2C */	b lbl_80402AA8
lbl_80402A80:
/* 80402A80  2C 1E 00 00 */	cmpwi r30, 0
/* 80402A84  41 82 00 24 */	beq lbl_80402AA8
/* 80402A88  7F 83 E3 78 */	mr r3, r28
/* 80402A8C  7F A4 EB 78 */	mr r4, r29
/* 80402A90  4B FF FC 29 */	bl mCD_SaveStation_Passport_rewrite_main
/* 80402A94  7C 7E 1B 78 */	mr r30, r3
/* 80402A98  48 00 00 10 */	b lbl_80402AA8
lbl_80402A9C:
/* 80402A9C  38 00 00 17 */	li r0, 0x17
/* 80402AA0  3B C0 FF FF */	li r30, -1
/* 80402AA4  90 1D 00 04 */	stw r0, 4(r29)
lbl_80402AA8:
/* 80402AA8  7F C3 F3 78 */	mr r3, r30
/* 80402AAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80402AB0  4B C9 84 6D */	bl func_8009AF1C
/* 80402AB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80402AB8  7C 08 03 A6 */	mtlr r0
/* 80402ABC  38 21 00 20 */	addi r1, r1, 0x20
/* 80402AC0  4E 80 00 20 */	blr 
