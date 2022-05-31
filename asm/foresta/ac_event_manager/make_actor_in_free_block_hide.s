lbl_8041C2C0:
/* 8041C2C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8041C2C4  7C 08 02 A6 */	mflr r0
/* 8041C2C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8041C2CC  39 61 00 40 */	addi r11, r1, 0x40
/* 8041C2D0  4B C7 EB F9 */	bl func_8009AEC8
/* 8041C2D4  7C 7A 1B 78 */	mr r26, r3
/* 8041C2D8  7C 9B 23 78 */	mr r27, r4
/* 8041C2DC  7C BC 2B 78 */	mr r28, r5
/* 8041C2E0  7C DD 33 78 */	mr r29, r6
/* 8041C2E4  4B F8 89 E9 */	bl mFI_GetFieldId
/* 8041C2E8  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8041C2EC  41 82 00 0C */	beq lbl_8041C2F8
/* 8041C2F0  38 60 00 00 */	li r3, 0
/* 8041C2F4  48 00 00 E0 */	b lbl_8041C3D4
lbl_8041C2F8:
/* 8041C2F8  57 BE 06 3E */	clrlwi r30, r29, 0x18
/* 8041C2FC  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041C300  7F C4 F3 78 */	mr r4, r30
/* 8041C304  4B F8 1F A9 */	bl mEv_get_common_place
/* 8041C308  7C 7F 1B 79 */	or. r31, r3, r3
/* 8041C30C  40 82 00 C4 */	bne lbl_8041C3D0
/* 8041C310  38 00 00 01 */	li r0, 1
/* 8041C314  3B E1 00 10 */	addi r31, r1, 0x10
/* 8041C318  B0 01 00 1A */	sth r0, 0x1a(r1)
/* 8041C31C  7F C4 F3 78 */	mr r4, r30
/* 8041C320  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 8041C324  7F 43 D3 78 */	mr r3, r26
/* 8041C328  7C E0 22 14 */	add r7, r0, r4
/* 8041C32C  B3 81 00 18 */	sth r28, 0x18(r1)
/* 8041C330  7F 64 DB 78 */	mr r4, r27
/* 8041C334  7F E6 FB 78 */	mr r6, r31
/* 8041C338  80 1B 00 00 */	lwz r0, 0(r27)
/* 8041C33C  38 A1 00 08 */	addi r5, r1, 8
/* 8041C340  7C E0 3A 14 */	add r7, r0, r7
/* 8041C344  4B FF F3 29 */	bl search_empty_hide_unit
/* 8041C348  2C 03 00 00 */	cmpwi r3, 0
/* 8041C34C  40 82 00 50 */	bne lbl_8041C39C
/* 8041C350  7F 43 D3 78 */	mr r3, r26
/* 8041C354  7F 64 DB 78 */	mr r4, r27
/* 8041C358  7F E6 FB 78 */	mr r6, r31
/* 8041C35C  38 A1 00 08 */	addi r5, r1, 8
/* 8041C360  4B FF F6 F5 */	bl search_empty_hide_unit_player
/* 8041C364  2C 03 00 00 */	cmpwi r3, 0
/* 8041C368  40 82 00 34 */	bne lbl_8041C39C
/* 8041C36C  7F 43 D3 78 */	mr r3, r26
/* 8041C370  7F 64 DB 78 */	mr r4, r27
/* 8041C374  7F E6 FB 78 */	mr r6, r31
/* 8041C378  38 A1 00 08 */	addi r5, r1, 8
/* 8041C37C  4B FF F7 01 */	bl search_empty_hide_unit_toudai
/* 8041C380  2C 03 00 00 */	cmpwi r3, 0
/* 8041C384  40 82 00 18 */	bne lbl_8041C39C
/* 8041C388  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041C38C  38 80 00 20 */	li r4, 0x20
/* 8041C390  4B F8 16 41 */	bl mEv_set_status
/* 8041C394  38 60 00 00 */	li r3, 0
/* 8041C398  48 00 00 3C */	b lbl_8041C3D4
lbl_8041C39C:
/* 8041C39C  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041C3A0  7F C4 F3 78 */	mr r4, r30
/* 8041C3A4  4B F8 1E 21 */	bl mEv_reserve_common_place
/* 8041C3A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8041C3AC  40 82 00 18 */	bne lbl_8041C3C4
/* 8041C3B0  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041C3B4  38 80 00 20 */	li r4, 0x20
/* 8041C3B8  4B F8 16 19 */	bl mEv_set_status
/* 8041C3BC  38 60 00 00 */	li r3, 0
/* 8041C3C0  48 00 00 14 */	b lbl_8041C3D4
lbl_8041C3C4:
/* 8041C3C4  38 81 00 08 */	addi r4, r1, 8
/* 8041C3C8  38 A0 00 14 */	li r5, 0x14
/* 8041C3CC  4B BE 70 C5 */	bl memcpy
lbl_8041C3D0:
/* 8041C3D0  7F E3 FB 78 */	mr r3, r31
lbl_8041C3D4:
/* 8041C3D4  39 61 00 40 */	addi r11, r1, 0x40
/* 8041C3D8  4B C7 EB 3D */	bl func_8009AF14
/* 8041C3DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8041C3E0  7C 08 03 A6 */	mtlr r0
/* 8041C3E4  38 21 00 40 */	addi r1, r1, 0x40
/* 8041C3E8  4E 80 00 20 */	blr 
