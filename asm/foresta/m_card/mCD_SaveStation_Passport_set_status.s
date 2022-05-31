lbl_80402E30:
/* 80402E30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80402E34  7C 08 02 A6 */	mflr r0
/* 80402E38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80402E3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80402E40  4B C9 80 95 */	bl func_8009AED4
/* 80402E44  7C 7D 1B 78 */	mr r29, r3
/* 80402E48  7C 9E 23 78 */	mr r30, r4
/* 80402E4C  80 A3 00 00 */	lwz r5, 0(r3)
/* 80402E50  2C 05 FF FF */	cmpwi r5, -1
/* 80402E54  41 82 00 A0 */	beq lbl_80402EF4
/* 80402E58  1C 65 00 94 */	mulli r3, r5, 0x94
/* 80402E5C  38 9D 11 BC */	addi r4, r29, 0x11bc
/* 80402E60  38 63 00 54 */	addi r3, r3, 0x54
/* 80402E64  7C 7D 1A 14 */	add r3, r29, r3
/* 80402E68  38 C3 00 74 */	addi r6, r3, 0x74
/* 80402E6C  4B FF 63 91 */	bl mCD_set_file_status_bg
/* 80402E70  7C 7F 1B 78 */	mr r31, r3
/* 80402E74  2C 1F 00 01 */	cmpwi r31, 1
/* 80402E78  40 82 00 60 */	bne lbl_80402ED8
/* 80402E7C  38 60 00 0C */	li r3, 0xc
/* 80402E80  38 00 00 02 */	li r0, 2
/* 80402E84  90 7E 00 00 */	stw r3, 0(r30)
/* 80402E88  90 1D 00 04 */	stw r0, 4(r29)
/* 80402E8C  80 7D 00 04 */	lwz r3, 4(r29)
/* 80402E90  4B FF 75 C9 */	bl mCD_get_size
/* 80402E94  90 7D 00 08 */	stw r3, 8(r29)
/* 80402E98  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80402E9C  80 9D 00 08 */	lwz r4, 8(r29)
/* 80402EA0  4B C5 A1 C9 */	bl bzero
/* 80402EA4  3C 60 81 17 */	lis r3, l_keepSave@ha /* 0x81171638@ha */
/* 80402EA8  3C A0 00 02 */	lis r5, 0x0002 /* 0x00026000@ha */
/* 80402EAC  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 80402EB0  38 63 16 38 */	addi r3, r3, l_keepSave@l /* 0x81171638@l */
/* 80402EB4  38 A5 60 00 */	addi r5, r5, 0x6000 /* 0x00026000@l */
/* 80402EB8  4B C5 A1 65 */	bl func_8005D01C
/* 80402EBC  80 7D 00 00 */	lwz r3, 0(r29)
/* 80402EC0  38 00 00 01 */	li r0, 1
/* 80402EC4  7C 63 18 F8 */	nor r3, r3, r3
/* 80402EC8  54 63 07 FE */	clrlwi r3, r3, 0x1f
/* 80402ECC  90 7D 00 00 */	stw r3, 0(r29)
/* 80402ED0  90 1D 01 A0 */	stw r0, 0x1a0(r29)
/* 80402ED4  48 00 00 2C */	b lbl_80402F00
lbl_80402ED8:
/* 80402ED8  2C 1F 00 00 */	cmpwi r31, 0
/* 80402EDC  41 82 00 24 */	beq lbl_80402F00
/* 80402EE0  7F A3 EB 78 */	mr r3, r29
/* 80402EE4  7F C4 F3 78 */	mr r4, r30
/* 80402EE8  4B FF F7 D1 */	bl mCD_SaveStation_Passport_rewrite_main
/* 80402EEC  7C 7F 1B 78 */	mr r31, r3
/* 80402EF0  48 00 00 10 */	b lbl_80402F00
lbl_80402EF4:
/* 80402EF4  38 00 00 17 */	li r0, 0x17
/* 80402EF8  3B E0 FF FF */	li r31, -1
/* 80402EFC  90 1E 00 04 */	stw r0, 4(r30)
lbl_80402F00:
/* 80402F00  7F E3 FB 78 */	mr r3, r31
/* 80402F04  39 61 00 20 */	addi r11, r1, 0x20
/* 80402F08  4B C9 80 19 */	bl func_8009AF20
/* 80402F0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80402F10  7C 08 03 A6 */	mtlr r0
/* 80402F14  38 21 00 20 */	addi r1, r1, 0x20
/* 80402F18  4E 80 00 20 */	blr 
