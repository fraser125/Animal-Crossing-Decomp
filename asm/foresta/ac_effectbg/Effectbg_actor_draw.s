lbl_80418E00:
/* 80418E00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80418E04  7C 08 02 A6 */	mflr r0
/* 80418E08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80418E0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80418E10  4B C8 20 BD */	bl func_8009AECC
/* 80418E14  7C 9C 23 78 */	mr r28, r4
/* 80418E18  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060020@ha */
/* 80418E1C  83 A4 00 00 */	lwz r29, 0(r4)
/* 80418E20  3C A0 81 1D */	lis r5, efbg_start_p@ha /* 0x811CB828@ha */
/* 80418E24  3C 80 D5 02 */	lis r4, 0xD502 /* 0xD5020001@ha */
/* 80418E28  39 06 00 20 */	addi r8, r6, 0x0020 /* 0xDB060020@l */
/* 80418E2C  81 3D 02 D0 */	lwz r9, 0x2d0(r29)
/* 80418E30  7C 7B 1B 78 */	mr r27, r3
/* 80418E34  38 E6 00 24 */	addi r7, r6, 0x24
/* 80418E38  38 C5 B8 28 */	addi r6, r5, efbg_start_p@l /* 0x811CB828@l */
/* 80418E3C  38 09 00 08 */	addi r0, r9, 8
/* 80418E40  38 A4 00 01 */	addi r5, r4, 0x0001 /* 0xD5020001@l */
/* 80418E44  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 80418E48  38 80 00 00 */	li r4, 0
/* 80418E4C  3B C0 00 00 */	li r30, 0
/* 80418E50  91 09 00 00 */	stw r8, 0(r9)
/* 80418E54  80 03 0C EC */	lwz r0, 0xcec(r3)
/* 80418E58  90 09 00 04 */	stw r0, 4(r9)
/* 80418E5C  80 7D 02 E0 */	lwz r3, 0x2e0(r29)
/* 80418E60  38 03 00 08 */	addi r0, r3, 8
/* 80418E64  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 80418E68  91 03 00 00 */	stw r8, 0(r3)
/* 80418E6C  80 1B 0C EC */	lwz r0, 0xcec(r27)
/* 80418E70  90 03 00 04 */	stw r0, 4(r3)
/* 80418E74  80 7D 02 D0 */	lwz r3, 0x2d0(r29)
/* 80418E78  38 03 00 08 */	addi r0, r3, 8
/* 80418E7C  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 80418E80  90 E3 00 00 */	stw r7, 0(r3)
/* 80418E84  80 1B 0C F0 */	lwz r0, 0xcf0(r27)
/* 80418E88  90 03 00 04 */	stw r0, 4(r3)
/* 80418E8C  80 7D 02 E0 */	lwz r3, 0x2e0(r29)
/* 80418E90  38 03 00 08 */	addi r0, r3, 8
/* 80418E94  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 80418E98  90 E3 00 00 */	stw r7, 0(r3)
/* 80418E9C  80 1B 0C F0 */	lwz r0, 0xcf0(r27)
/* 80418EA0  90 03 00 04 */	stw r0, 4(r3)
/* 80418EA4  80 7D 02 D0 */	lwz r3, 0x2d0(r29)
/* 80418EA8  83 E6 00 00 */	lwz r31, 0(r6)
/* 80418EAC  38 03 00 08 */	addi r0, r3, 8
/* 80418EB0  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 80418EB4  90 A3 00 00 */	stw r5, 0(r3)
/* 80418EB8  90 83 00 04 */	stw r4, 4(r3)
/* 80418EBC  80 7D 02 E0 */	lwz r3, 0x2e0(r29)
/* 80418EC0  38 03 00 08 */	addi r0, r3, 8
/* 80418EC4  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 80418EC8  90 A3 00 00 */	stw r5, 0(r3)
/* 80418ECC  90 83 00 04 */	stw r4, 4(r3)
lbl_80418ED0:
/* 80418ED0  88 7F 03 C4 */	lbz r3, 0x3c4(r31)
/* 80418ED4  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80418ED8  41 82 01 14 */	beq lbl_80418FEC
/* 80418EDC  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80418EE0  41 82 00 40 */	beq lbl_80418F20
/* 80418EE4  80 BD 02 D0 */	lwz r5, 0x2d0(r29)
/* 80418EE8  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060024@ha */
/* 80418EEC  38 83 00 24 */	addi r4, r3, 0x0024 /* 0xDB060024@l */
/* 80418EF0  38 05 00 08 */	addi r0, r5, 8
/* 80418EF4  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 80418EF8  90 85 00 00 */	stw r4, 0(r5)
/* 80418EFC  80 1B 0C F0 */	lwz r0, 0xcf0(r27)
/* 80418F00  90 05 00 04 */	stw r0, 4(r5)
/* 80418F04  80 7D 02 E0 */	lwz r3, 0x2e0(r29)
/* 80418F08  38 03 00 08 */	addi r0, r3, 8
/* 80418F0C  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 80418F10  90 83 00 00 */	stw r4, 0(r3)
/* 80418F14  80 1B 0C F0 */	lwz r0, 0xcf0(r27)
/* 80418F18  90 03 00 04 */	stw r0, 4(r3)
/* 80418F1C  48 00 00 C4 */	b lbl_80418FE0
lbl_80418F20:
/* 80418F20  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80418F24  41 82 00 40 */	beq lbl_80418F64
/* 80418F28  80 BD 02 D0 */	lwz r5, 0x2d0(r29)
/* 80418F2C  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 80418F30  38 83 00 20 */	addi r4, r3, 0x0020 /* 0xDB060020@l */
/* 80418F34  38 05 00 08 */	addi r0, r5, 8
/* 80418F38  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 80418F3C  90 85 00 00 */	stw r4, 0(r5)
/* 80418F40  80 1B 0C F4 */	lwz r0, 0xcf4(r27)
/* 80418F44  90 05 00 04 */	stw r0, 4(r5)
/* 80418F48  80 7D 02 E0 */	lwz r3, 0x2e0(r29)
/* 80418F4C  38 03 00 08 */	addi r0, r3, 8
/* 80418F50  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 80418F54  90 83 00 00 */	stw r4, 0(r3)
/* 80418F58  80 1B 0C F4 */	lwz r0, 0xcf4(r27)
/* 80418F5C  90 03 00 04 */	stw r0, 4(r3)
/* 80418F60  48 00 00 80 */	b lbl_80418FE0
lbl_80418F64:
/* 80418F64  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80418F68  41 82 00 40 */	beq lbl_80418FA8
/* 80418F6C  80 BD 02 D0 */	lwz r5, 0x2d0(r29)
/* 80418F70  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 80418F74  38 83 00 20 */	addi r4, r3, 0x0020 /* 0xDB060020@l */
/* 80418F78  38 05 00 08 */	addi r0, r5, 8
/* 80418F7C  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 80418F80  90 85 00 00 */	stw r4, 0(r5)
/* 80418F84  80 1B 0C F8 */	lwz r0, 0xcf8(r27)
/* 80418F88  90 05 00 04 */	stw r0, 4(r5)
/* 80418F8C  80 7D 02 E0 */	lwz r3, 0x2e0(r29)
/* 80418F90  38 03 00 08 */	addi r0, r3, 8
/* 80418F94  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 80418F98  90 83 00 00 */	stw r4, 0(r3)
/* 80418F9C  80 1B 0C F8 */	lwz r0, 0xcf8(r27)
/* 80418FA0  90 03 00 04 */	stw r0, 4(r3)
/* 80418FA4  48 00 00 3C */	b lbl_80418FE0
lbl_80418FA8:
/* 80418FA8  80 BD 02 D0 */	lwz r5, 0x2d0(r29)
/* 80418FAC  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 80418FB0  38 83 00 20 */	addi r4, r3, 0x0020 /* 0xDB060020@l */
/* 80418FB4  38 05 00 08 */	addi r0, r5, 8
/* 80418FB8  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 80418FBC  90 85 00 00 */	stw r4, 0(r5)
/* 80418FC0  80 1B 0C EC */	lwz r0, 0xcec(r27)
/* 80418FC4  90 05 00 04 */	stw r0, 4(r5)
/* 80418FC8  80 7D 02 E0 */	lwz r3, 0x2e0(r29)
/* 80418FCC  38 03 00 08 */	addi r0, r3, 8
/* 80418FD0  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 80418FD4  90 83 00 00 */	stw r4, 0(r3)
/* 80418FD8  80 1B 0C EC */	lwz r0, 0xcec(r27)
/* 80418FDC  90 03 00 04 */	stw r0, 4(r3)
lbl_80418FE0:
/* 80418FE0  7F E3 FB 78 */	mr r3, r31
/* 80418FE4  7F 84 E3 78 */	mr r4, r28
/* 80418FE8  4B FF FB C9 */	bl EffectBG_object_draw
lbl_80418FEC:
/* 80418FEC  3B DE 00 01 */	addi r30, r30, 1
/* 80418FF0  3B FF 03 D0 */	addi r31, r31, 0x3d0
/* 80418FF4  2C 1E 00 03 */	cmpwi r30, 3
/* 80418FF8  41 80 FE D8 */	blt lbl_80418ED0
/* 80418FFC  80 7D 02 D0 */	lwz r3, 0x2d0(r29)
/* 80419000  3C A0 D5 02 */	lis r5, 0xd502
/* 80419004  38 80 00 00 */	li r4, 0
/* 80419008  38 03 00 08 */	addi r0, r3, 8
/* 8041900C  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 80419010  90 A3 00 00 */	stw r5, 0(r3)
/* 80419014  90 83 00 04 */	stw r4, 4(r3)
/* 80419018  80 7D 02 E0 */	lwz r3, 0x2e0(r29)
/* 8041901C  38 03 00 08 */	addi r0, r3, 8
/* 80419020  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 80419024  90 A3 00 00 */	stw r5, 0(r3)
/* 80419028  90 83 00 04 */	stw r4, 4(r3)
/* 8041902C  39 61 00 20 */	addi r11, r1, 0x20
/* 80419030  4B C8 1E E9 */	bl func_8009AF18
/* 80419034  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80419038  7C 08 03 A6 */	mtlr r0
/* 8041903C  38 21 00 20 */	addi r1, r1, 0x20
/* 80419040  4E 80 00 20 */	blr 